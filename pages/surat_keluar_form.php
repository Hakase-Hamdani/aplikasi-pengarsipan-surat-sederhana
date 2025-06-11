<?php
require_once '../includes/header.php';
requireLevel(1);

$user_id = $_SESSION['user_id'];
$user_level = $_SESSION['admin'];
$letter = [];
$errors = [];
$is_edit = isset($_GET['id_surat']) && is_numeric($_GET['id_surat']);
$upload_dir = '../Uploads/';

if ($is_edit) {
    // Fetch letter for editing
    $id_surat = $_GET['id_surat'];
    try {
        $query = "SELECT id_surat, no_agenda, kode, divisi, no_surat, keterangan, tujuan, tgl_surat, isi, file, id_user
                  FROM tbl_surat_keluar WHERE id_surat = ?";
        if ($user_level < 3) {
            $query .= " AND id_user = ?";
        }
        $stmt = $pdo->prepare($query);
        if ($user_level < 3) {
            $stmt->execute([$id_surat, $user_id]);
        } else {
            $stmt->execute([$id_surat]);
        }
        $letter = $stmt->fetch(PDO::FETCH_ASSOC);
        if (!$letter) {
            header('Location: surat_keluar.php');
            exit();
        }
    } catch (PDOException $e) {
        $errors[] = "Error fetching letter: " . $e->getMessage();
    }
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Validate inputs
    $no_agenda = trim($_POST['no_agenda'] ?? '');
    $divisi = trim($_POST['divisi'] ?? '');
    $no_surat = trim($_POST['no_surat'] ?? '');
    $keterangan = trim($_POST['keterangan'] ?? '');
    $kode = trim($_POST['kode'] ?? '');
    $tujuan = trim($_POST['tujuan'] ?? '');
    $tgl_surat = trim($_POST['tgl_surat'] ?? '');
    $isi = trim($_POST['isi'] ?? '');
    $file = $_FILES['file'] ?? null;
    $file_name = $is_edit ? $letter['file'] : '';

    // Validation
    if (empty($no_agenda) || !is_numeric($no_agenda)) {
        $errors[] = "No. Agenda is required and must be a number.";
    }
    if (empty($divisi)) {
        $errors[] = "Divisi is required.";
    } else {
        // Validate divisi exists
        $stmt = $pdo->prepare("SELECT kode FROM tbl_divisi WHERE kode = ?");
        $stmt->execute([$divisi]);
        if (!$stmt->fetch()) {
            $errors[] = "Invalid Divisi selected.";
        }
    }
    if (empty($no_surat)) {
        $errors[] = "No. Surat is required.";
    }
    if (empty($kode)) {
        $errors[] = "Kode Klasifikasi is required.";
    } else {
        // Validate kode exists
        $stmt = $pdo->prepare("SELECT kode FROM tbl_klasifikasi WHERE kode = ?");
        $stmt->execute([$kode]);
        if (!$stmt->fetch()) {
            $errors[] = "Invalid Kode Klasifikasi selected.";
        }
    }
    if (empty($tujuan)) {
        $errors[] = "Tujuan is required.";
    }
    if (empty($tgl_surat) || !preg_match('/^\d{4}-\d{2}-\d{2}$/', $tgl_surat)) {
        $errors[] = "Tanggal Surat is required and must be a valid date.";
    }
    if (empty($isi)) {
        $errors[] = "Isi Ringkas is required.";
    }
    if ($file && $file['size'] > 0) {
        // Validate file
        $allowed_types = ['application/pdf'];
        $max_size = 5 * 1024 * 1024; // 5MB
        if (!in_array($file['type'], $allowed_types)) {
            $errors[] = "File must be a PDF.";
        }
        if ($file['size'] > $max_size) {
            $errors[] = "File size must not exceed 5MB.";
        }
        if ($file['error'] !== UPLOAD_ERR_OK) {
            $errors[] = "File upload error.";
        }
    }

    if (empty($errors)) {
        // Handle file upload
        if ($file && $file['size'] > 0) {
            $file_name = uniqid() . '_' . basename($file['name']);
            $file_path = $upload_dir . $file_name;
            if (!move_uploaded_file($file['tmp_name'], $file_path)) {
                $errors[] = "Failed to upload file.";
            }
        }

        if (empty($errors)) {
            try {
                if ($is_edit) {
                    // Update letter
                    $query = "UPDATE tbl_surat_keluar SET no_agenda = ?, divisi = ?, no_surat = ?, keterangan = ?, 
                              kode = ?, tujuan = ?, tgl_surat = ?, isi = ?, file = ?
                              WHERE id_surat = ? AND id_user = ?";
                    if ($user_level == 3) {
                        $query = str_replace("AND id_user = ?", "", $query); // Super Admin can edit any
                    }
                    $stmt = $pdo->prepare($query);
                    $params = [$no_agenda, $divisi, $no_surat, $keterangan, $kode, $tujuan, $tgl_surat, $isi, $file_name, $id_surat];
                    if ($user_level < 3) {
                        $params[] = $user_id;
                    }
                    $stmt->execute($params);
                } else {
                    // Add letter
                    $query = "INSERT INTO tbl_surat_keluar (no_agenda, divisi, no_surat, keterangan, kode, tujuan, 
                              tgl_surat, isi, file, id_user, tgl_catat) 
                              VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, CURDATE())";
                    $stmt = $pdo->prepare($query);
                    $stmt->execute([$no_agenda, $divisi, $no_surat, $keterangan, $kode, $tujuan, $tgl_surat, $isi, $file_name, $user_id]);
                }
                header('Location: surat_keluar.php');
                exit();
            } catch (PDOException $e) {
                $errors[] = "Error saving letter: " . $e->getMessage();
            }
        }
    }
}
?>

        <h2><?php echo $is_edit ? 'Edit Surat Keluar' : 'Tambah Surat Keluar'; ?></h2>
        <?php if (!empty($errors)): ?>
            <div class="alert alert-danger">
                <ul>
                    <?php foreach ($errors as $error): ?>
                        <li><?php echo htmlspecialchars($error); ?></li>
                    <?php endforeach; ?>
                </ul>
            </div>
        <?php endif; ?>
        
        <form method="POST" enctype="multipart/form-data" id="letterForm">
            <div class="mb-3">
                <label for="no_agenda" class="form-label">No. Agenda</label>
                <input type="number" class="form-control" id="no_agenda" name="no_agenda" 
                       value="<?php echo htmlspecialchars($letter['no_agenda'] ?? ''); ?>" required>
            </div>
            <div class="mb-3">
                <label for="divisi" class="form-label">Divisi</label>
                <input type="text" class="form-control" id="divisi" name="divisi" 
                       value="<?php echo htmlspecialchars($letter['divisi'] ?? ''); ?>" required>
            </div>
            <div class="mb-3">
                <label for="no_surat" class="form-label">No. Surat</label>
                <input type="text" class="form-control" id="no_surat" name="no_surat" 
                       value="<?php echo htmlspecialchars($letter['no_surat'] ?? ''); ?>" required>
            </div>
            <div class="mb-3">
                <label for="keterangan" class="form-label">Keterangan</label>
                <input type="text" class="form-control" id="keterangan" name="keterangan" 
                       value="<?php echo htmlspecialchars($letter['keterangan'] ?? ''); ?>">
            </div>
            <div class="mb-3">
                <label for="kode" class="form-label">Kode Klasifikasi</label>
                <input type="text" class="form-control" id="kode" name="kode" 
                       value="<?php echo htmlspecialchars($letter['kode'] ?? ''); ?>" required>
            </div>
            <div class="mb-3">
                <label for="tujuan" class="form-label">Tujuan Surat</label>
                <input type="text" class="form-control" id="tujuan" name="tujuan" 
                       value="<?php echo htmlspecialchars($letter['tujuan'] ?? ''); ?>" required>
            </div>
            <div class="mb-3">
                <label for="tgl_surat" class="form-label">Tanggal Surat</label>
                <input type="text" class="form-control" id="tgl_surat" name="tgl_surat" 
                       value="<?php echo htmlspecialchars($letter['tgl_surat'] ?? ''); ?>" required readonly>
            </div>
            <div class="mb-3">
                <label for="isi" class="form-label">Isi Ringkas</label>
                <textarea class="form-control" id="isi" name="isi" rows="5" required><?php echo htmlspecialchars($letter['isi'] ?? ''); ?></textarea>
            </div>
            <div class="mb-3">
                <label for="file" class="form-label">File Upload (PDF, max 5MB)</label>
                <input type="file" class="form-control" id="file" name="file" accept=".pdf">
                <?php if ($is_edit && $letter['file']): ?>
                    <p>Current: <a href="../Uploads/<?php echo htmlspecialchars($letter['file']); ?>" target="_blank">View File</a></p>
                <?php endif; ?>
            </div>
            <div class="mb-3">
                <button type="submit" class="btn btn-primary">Save</button>
                <a href="surat_keluar.php" class="btn btn-secondary">Cancel</a>
            </div>
        </form>
    </div>

    <!-- jQuery and jQuery UI -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <style>
        /* Fix autocomplete styling */
        .ui-autocomplete {
            z-index: 2000 !important; /* Above sidebar (1000) and form */
            background-color: #ffffff !important; /* Solid white background */
            border: 1px solid #ccc !important;
            border-radius: 4px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.2);
            max-height: 200px;
            overflow-y: auto;
            font-size: 14px;
        }
        .ui-autocomplete .ui-menu-item {
            padding: 8px 12px;
            cursor: pointer;
        }
        .ui-autocomplete .ui-menu-item:hover,
        .ui-autocomplete .ui-state-active {
            background-color: #007bff !important;
            color: #ffffff !important;
        }
        /* Ensure input fields don't interfere */
        .form-control.autocomplete {
            position: relative;
            z-index: 1000;
        }
    </style>
    <script>
        $(document).ready(function() {
            // Divisi autocomplete
            $("#divisi").addClass('autocomplete').autocomplete({
                source: function(request, response) {
                    $.ajax({
                        url: "fetch_divisi.php",
                        dataType: "json",
                        data: { term: request.term },
                        success: function(data) {
                            response(data.map(item => ({
                                label: item.kode + " - " + item.nama,
                                value: item.kode
                            })));
                        }
                    });
                },
                minLength: 1,
                select: function(event, ui) {
                    event.preventDefault();
                    $(this).val(ui.item.value);
                },
                focus: function(event, ui) {
                    event.preventDefault();
                    $(this).val(ui.item.value);
                }
            });

            // Kode autocomplete
            $("#kode").addClass('autocomplete').autocomplete({
                source: function(request, response) {
                    $.ajax({
                        url: "fetch_klasifikasi.php",
                        dataType: "json",
                        data: { term: request.term },
                        success: function(data) {
                            response(data.map(item => ({
                                label: item.kode + " - " + item.nama,
                                value: item.kode
                            })));
                        }
                    });
                },
                minLength: 1,
                select: function(event, ui) {
                    event.preventDefault();
                    $(this).val(ui.item.value);
                },
                focus: function(event, ui) {
                    event.preventDefault();
                    $(this).val(ui.item.value);
                }
            });

            // Datepicker
            $("#tgl_surat").datepicker({
                dateFormat: 'yy-mm-dd',
                changeMonth: true,
                changeYear: true
            });

            // Client-side validation
            $("#letterForm").submit(function(e) {
                let errors = [];
                if (!$("#no_agenda").val() || isNaN(parseInt($("#no_agenda").val()))) {
                    errors.push("No. Agenda must be a number.");
                }
                if (!$("#divisi").val()) {
                    errors.push("Divisi is required.");
                }
                if (!$("#no_surat").val()) {
                    errors.push("No. Surat is required.");
                }
                if (!$("#kode").val()) {
                    errors.push("Kode Klasifikasi is required.");
                }
                if (!$("#tujuan").val()) {
                    errors.push("Tujuan is required.");
                }
                if (!$("#tgl_surat").val()) {
                    errors.push("Tanggal Surat is required.");
                }
                if (!$("#isi").val()) {
                    errors.push("Isi Ringkas is required.");
                }
                if (errors.length > 0) {
                    e.preventDefault();
                    alert("Please fix the following errors:\n" + errors.join("\n"));
                }
            });
        });
    </script>
</body>
</html>