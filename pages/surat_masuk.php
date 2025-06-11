<?php
require_once '../includes/header.php';
requireLevel(1);

// Fetch letters based on user level
$user_id = $_SESSION['user_id'];
$user_level = $_SESSION['admin'];

try {
    $query = "SELECT sm.id_surat, sm.no_agenda, sm.kode, sm.divisi, d.nama AS divisi_nama, 
                     sm.isi, sm.file, sm.asal_surat, sm.no_surat, sm.tgl_surat, sm.id_user
              FROM tbl_surat_masuk sm
              LEFT JOIN tbl_divisi d ON sm.divisi = d.kode";
    if ($user_level == 1) {
        $query .= " WHERE sm.id_user = :user_id";
    }
    $query .= " ORDER BY sm.id_surat DESC";
    
    $stmt = $pdo->prepare($query);
    if ($user_level == 1) {
        $stmt->bindParam(':user_id', $user_id, PDO::PARAM_INT);
    }
    $stmt->execute();
    $letters = $stmt->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    $error = "Error fetching letters: " . $e->getMessage();
}
?>

        <h2>Manage Surat Masuk</h2>
        <?php if (isset($error)): ?>
            <div class="alert alert-danger"><?php echo htmlspecialchars($error); ?></div>
        <?php endif; ?>
        
        <!-- Tambah Data Button -->
        <div class="mb-3">
            <a href="surat_masuk_form.php" class="btn btn-primary">Tambah Data</a>
        </div>
        
        <!-- DataTable -->
        <table id="lettersTable" class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>No. Agenda<br>Kode<br>Divisi</th>
                    <th>Isi Ringkas<br>File</th>
                    <th>Asal Surat</th>
                    <th>No. Surat<br>Tgl. Surat</th>
                    <th>Tindakan</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($letters as $letter): ?>
                    <tr>
                        <td>
                            <?php echo htmlspecialchars($letter['no_agenda']); ?><br>
                            <?php echo htmlspecialchars($letter['kode'] ?? '-'); ?><br>
                            <?php echo htmlspecialchars($letter['divisi_nama'] ?? '-'); ?>
                        </td>
                        <td>
                            <?php echo htmlspecialchars(substr($letter['isi'], 0, 100)) . (strlen($letter['isi']) > 100 ? '...' : ''); ?><br>
                            <?php if ($letter['file']): ?>
                                <a href="../Uploads/<?php echo htmlspecialchars($letter['file']); ?>" target="_blank">View File</a>
                            <?php else: ?>
                                No File
                            <?php endif; ?>
                        </td>
                        <td><?php echo htmlspecialchars($letter['asal_surat']); ?></td>
                        <td>
                            <?php echo htmlspecialchars($letter['no_surat']); ?><br>
                            <?php echo htmlspecialchars(date('d-m-Y', strtotime($letter['tgl_surat']))); ?>
                        </td>
                        <td>
                            <?php if ($user_level == 3 || $letter['id_user'] == $user_id): ?>
                                <a href="surat_masuk_form.php?id_surat=<?php echo $letter['id_surat']; ?>" class="btn btn-sm btn-warning">Edit</a>
                                <a href="surat_masuk_delete.php?id_surat=<?php echo $letter['id_surat']; ?>" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this letter?');">Del</a>
                            <?php endif; ?>
                            <a href="disposisi.php?id_surat=<?php echo $letter['id_surat']; ?>" class="btn btn-sm btn-info">Disp</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
        
        <div class="mt-3">
            <a href="referensi.php?context=surat_masuk" class="btn btn-secondary">Referensi (Display Limit)</a>
            <?php if ($user_level >= 2): ?>
                <a href="disposisi.php" class="btn btn-secondary">Disposisi</a>
            <?php endif; ?>
        </div>
    </div>
    
    <!-- DataTables and jQuery -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.datatables.net/2.1.8/js/dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/2.1.8/js/dataTables.bootstrap5.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#lettersTable').DataTable({
                pageLength: 10,
                lengthMenu: [10, 25, 50, 100],
                order: [[0, 'desc']],
                searching: true
            });
        });
    </script>
</body>
</html>