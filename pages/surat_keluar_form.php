<?php
require_once '../includes/header.php';
requireLevel(1);

$user_id = $_SESSION['user_id'];
$user_level = $_SESSION['admin'];
$letter = [];
$errors = [];
$success = false;
$is_edit = isset($_GET['id_surat']) && is_numeric($_GET['id_surat']);
$upload_dir = '../Uploads/';

if (!is_dir($upload_dir)) {
    mkdir($upload_dir, 0775, true);
}

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
    $pdf_file = $_FILES['pdf_file'] ?? null;
    $image_file = $_FILES['image_file'] ?? null;
    $file_name = $is_edit ? $letter['file'] : '';

    // Validation
    if (empty($no_agenda) || !is_numeric($no_agenda)) {
        $errors[] = "No. Agenda is required and must be a number.";
    }
    if (empty($divisi)) {
        $errors[] = "Divisi is required.";
    } else {
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

    // Handle file upload
    $file = $pdf_file['size'] > 0 ? $pdf_file : ($image_file['size'] > 0 ? $image_file : null);
    if ($file && $file['size'] > 0) {
        $allowed_types = [
            'pdf_file' => ['application/pdf'],
            'image_file' => ['image/jpeg', 'image/png']
        ];
        $max_size = 5 * 1024 * 1024; // 5MB
        $file_type = $file['type'];
        $file_key = $pdf_file['size'] > 0 ? 'pdf_file' : 'image_file';

        if (!in_array($file_type, $allowed_types[$file_key])) {
            $errors[] = $file_key === 'pdf_file' ? "PDF file must be a PDF." : "Image file must be JPG or PNG.";
        }
        if ($file['size'] > $max_size) {
            $errors[] = "File size must not exceed 5MB.";
        }
        if ($file['error'] !== UPLOAD_ERR_OK) {
            $errors[] = "File upload error.";
        }
        if (empty($errors)) {
            $file_name = uniqid() . '_' . basename($file['name']);
            $file_path = $upload_dir . $file_name;
            if (!move_uploaded_file($file['tmp_name'], $file_path)) {
                $errors[] = "Failed to upload file.";
            }
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
                    $query = str_replace("AND id_user = ?", "", $query);
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
            $success = true; // Flag for success
        } catch (PDOException $e) {
            $errors[] = "Error saving letter: " . $e->getMessage();
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
        
        <!-- Success Alert -->
        <div id="success-alert" class="alert alert-success d-none" role="alert">
            Data has been saved successfully! Redirecting...
        </div>
        
        <!-- Loading Overlay -->
        <div id="loading-overlay" class="d-none position-fixed top-0 start-0 w-100 h-100 bg-dark bg-opacity-50 d-flex justify-content-center align-items-center" style="z-index: 3000;">
            <div class="spinner-border text-light" role="status">
                <span class="visually-hidden">Loading...</span>
            </div>
            <span class="text-light ms-3">Processing...</span>
        </div>
        
        <form method="POST" enctype="multipart/form-data" id="letterForm">
            <div class="mb-3">
                <label for="no_agenda" class="form-label">No. Agenda</label>
                <input type="number" class="form-control" id="no_agenda" name="no_agenda" 
                       value="<?php echo htmlspecialchars($letter['no_agenda'] ?? ''); ?>" required>
            </div>
            <div class="mb-3">
                <label for="divisi" class="form-label">Divisi</label>
                <input type="text" class="form-control autocomplete" id="divisi" name="divisi" 
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
                <input type="text" class="form-control autocomplete" id="kode" name="kode" 
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
                <div id="ocr-status" class="mt-2 text-muted"></div>
            </div>
            <div class="mb-3">
                <label for="pdf_file" class="form-label">PDF Upload (max 5MB)</label>
                <input type="file" class="form-control" id="pdf_file" name="pdf_file" accept=".pdf">
            </div>
            <div class="mb-3">
                <label for="image_file" class="form-label">Image Upload (JPG/PNG, max 5MB)</label>
                <input type="file" class="form-control" id="image_file" name="image_file" accept=".jpg,.png">
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

    <!-- jQuery, jQuery UI, Tesseract.js, pdf.js -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <script src="https://unpkg.com/tesseract.js@v5.1.1/dist/tesseract.min.js"></script>
    <script src="https://unpkg.com/pdfjs-dist@3.11.174/build/pdf.min.js"></script>
    <style>
        .ui-autocomplete {
            z-index: 2000 !important;
            background-color: #ffffff !important;
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
        .form-control.autocomplete {
            position: relative;
            z-index: 1000;
        }
    </style>
    <script>
        $(document).ready(function() {
            // Log script loading
            console.log('jQuery loaded:', typeof jQuery !== 'undefined');
            console.log('Tesseract loaded:', typeof Tesseract !== 'undefined');
            console.log('pdf.js loaded:', typeof pdfjsLib !== 'undefined');

            // Show success alert and redirect
            <?php if ($success): ?>
                $("#success-alert").removeClass('d-none');
                setTimeout(function() {
                    window.location.href = 'surat_keluar.php';
                }, 2000); // Redirect after 2 seconds
            <?php endif; ?>

            // Divisi autocomplete
            $("#divisi").autocomplete({
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
                        },
                        error: function(xhr, status, error) {
                            console.error('Divisi autocomplete failed:', status, error);
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
            $("#kode").autocomplete({
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
                        },
                        error: function(xhr, status, error) {
                            console.error('Kode autocomplete failed:', status, error);
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

            // OCR status and loading overlay
            const ocrStatus = $("#ocr-status");
            const isiField = $("#isi");
            const loadingOverlay = $("#loading-overlay");

            // Show loading overlay
            function showLoading() {
                loadingOverlay.removeClass('d-none');
            }

            // Hide loading overlay
            function hideLoading() {
                loadingOverlay.addClass('d-none');
            }

            // Initialize pdf.js worker
            if (typeof pdfjsLib !== 'undefined') {
                pdfjsLib.GlobalWorkerOptions.workerSrc = 'https://unpkg.com/pdfjs-dist@3.11.174/build/pdf.worker.min.js';
                console.log('pdf.js worker initialized');
            } else {
                ocrStatus.text('PDF processing unavailable: pdf.js failed to load.');
                console.error('pdfjsLib is not defined; PDF OCR disabled');
            }

            // Handle image file OCR
            $("#image_file").change(function(e) {
                const file = e.target.files[0];
                if (file && (file.type === 'image/jpeg' || file.type === 'image/png')) {
                    showLoading();
                    ocrStatus.text('Processing image...');
                    const reader = new FileReader();
                    reader.onload = function(event) {
                        console.log('Image file read:', file.name);
                        Tesseract.recognize(
                            event.target.result,
                            'eng',
                            { logger: m => console.log('Tesseract:', m.status, m.progress) }
                        ).then(({ data: { text } }) => {
                            isiField.val(text.trim());
                            ocrStatus.text('Text extracted from image.');
                            console.log('Image OCR complete:', text.substring(0, 100) + '...');
                            hideLoading();
                        }).catch(err => {
                            ocrStatus.text('Error extracting text from image.');
                            console.error('Tesseract image error:', err);
                            hideLoading();
                        });
                    };
                    reader.onerror = function(err) {
                        ocrStatus.text('Error reading image file.');
                        console.error('Image FileReader error:', err);
                        hideLoading();
                    };
                    reader.readAsDataURL(file);
                } else {
                    ocrStatus.text('Please select a valid JPG or PNG file.');
                    console.log('Invalid image file selected:', file ? file.type : 'none');
                }
            });

            // Handle PDF file OCR
            $("#pdf_file").change(function(e) {
                const file = e.target.files[0];
                if (file && file.type === 'application/pdf') {
                    if (typeof pdfjsLib === 'undefined') {
                        ocrStatus.text('PDF processing unavailable: pdf.js not loaded.');
                        console.error('PDF OCR skipped: pdfjsLib undefined');
                        return;
                    }
                    showLoading();
                    ocrStatus.text('Processing PDF...');
                    const reader = new FileReader();
                    reader.onload = async function(event) {
                        try {
                            console.log('PDF file read:', file.name);
                            const typedArray = new Uint8Array(event.target.result);
                            const pdf = await pdfjsLib.getDocument(typedArray).promise;
                            console.log('PDF loaded, pages:', pdf.numPages);
                            const page = await pdf.getPage(1); // First page only
                            const viewport = page.getViewport({ scale: 1.5 });
                            const canvas = document.createElement('canvas');
                            const context = canvas.getContext('2d');
                            canvas.height = viewport.height;
                            canvas.width = viewport.width;
                            await page.render({ canvasContext: context, viewport: viewport }).promise;
                            console.log('PDF page rendered to canvas');
                            Tesseract.recognize(
                                canvas.toDataURL('image/png'),
                                'eng',
                                { logger: m => console.log('Tesseract:', m.status, m.progress) }
                            ).then(({ data: { text } }) => {
                                isiField.val(text.trim());
                                ocrStatus.text('Text extracted from PDF.');
                                console.log('PDF OCR complete:', text.substring(0, 100) + '...');
                                hideLoading();
                            }).catch(err => {
                                ocrStatus.text('Error extracting text from PDF.');
                                console.error('Tesseract PDF error:', err);
                                hideLoading();
                            });
                        } catch (err) {
                            ocrStatus.text('Error processing PDF.');
                            console.error('pdf.js error:', err);
                            hideLoading();
                        }
                    };
                    reader.onerror = function(err) {
                        ocrStatus.text('Error reading PDF file.');
                        console.error('PDF FileReader error:', err);
                        hideLoading();
                    };
                    reader.readAsArrayBuffer(file);
                } else {
                    ocrStatus.text('Please select a valid PDF file.');
                    console.log('Invalid PDF file selected:', file ? file.type : 'none');
                }
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