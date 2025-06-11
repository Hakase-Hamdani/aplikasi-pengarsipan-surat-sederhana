<?php
require_once '../includes/header.php';
requireLevel(1);

// Fetch letters based on user level
$user_id = $_SESSION['user_id'];
$user_level = $_SESSION['admin'];

try {
    $query = "SELECT sk.id_surat, sk.no_agenda, sk.kode, sk.divisi, d.nama AS divisi_nama, 
                     sk.isi, sk.file, sk.tujuan, sk.no_surat, sk.tgl_surat
              FROM tbl_surat_keluar sk
              LEFT JOIN tbl_divisi d ON sk.divisi = d.kode";
    if ($user_level < 3) {
        $query .= " WHERE sk.id_user = :user_id";
    }
    $query .= " ORDER BY sk.id_surat DESC";
    
    $stmt = $pdo->prepare($query);
    if ($user_level < 3) {
        $stmt->bindParam(':user_id', $user_id, PDO::PARAM_INT);
    }
    $stmt->execute();
    $letters = $stmt->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    $error = "Error fetching letters: " . $e->getMessage();
}
?>
<style>
.dt-search {
            display: none !important;
        }

</style>

        <h2>Manage Surat Keluar</h2>
        <?php if (isset($error)): ?>
            <div class="alert alert-danger"><?php echo htmlspecialchars($error); ?></div>
        <?php endif; ?>
        
        <!-- Search Bar -->
        <div class="mb-3">
            <input type="text" id="searchInput" class="form-control" placeholder="Search letters...">
        </div>
        
        <!-- Tambah Data and Limit Box -->
        <div class="d-flex justify-content-between mb-3">
            <a href="surat_keluar_form.php" class="btn btn-primary">Tambah Data</a>
            <div>
                <label for="lengthSelect" class="form-label me-2">Show:</label>
                <select id="lengthSelect" class="form-select d-inline-block w-auto">
                    <option value="10" selected>10</option>
                    <option value="25">25</option>
                    <option value="50">50</option>
                    <option value="100">100</option>
                </select>
            </div>
        </div>
        
        <!-- DataTable -->
        <table id="lettersTable" class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>No. Agenda<br>Kode<br>Divisi</th>
                    <th>Isi Ringkas<br>File</th>
                    <th>Tujuan</th>
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
                        <td><?php echo htmlspecialchars($letter['tujuan']); ?></td>
                        <td>
                            <?php echo htmlspecialchars($letter['no_surat']); ?><br>
                            <?php echo htmlspecialchars(date('d-m-Y', strtotime($letter['tgl_surat']))); ?>
                        </td>
                        <td>
                            <a href="surat_keluar_form.php?id_surat=<?php echo $letter['id_surat']; ?>" class="btn btn-sm btn-warning">Edit</a>
                            <a href="surat_keluar_delete.php?id_surat=<?php echo $letter['id_surat']; ?>" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this letter?');">Del</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
        
        <div class="mt-3">
            <a href="referensi.php?context=surat_keluar" class="btn btn-secondary">Referensi (Display Limit)</a>
        </div>
    </div>
    
    <!-- DataTables and jQuery -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.datatables.net/2.1.8/js/dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/2.1.8/js/dataTables.bootstrap5.min.js"></script>
    <style>
        /* Hide DataTables default search */
        div.dataTables_filter {
            display: none !important;
        }
    </style>
    <script>
        $(document).ready(function() {
            const table = $('#lettersTable').DataTable({
                pageLength: 10,
                lengthMenu: [10, 25, 50, 100],
                order: [[0, 'desc']],
                searching: true
            });

            // Sync custom search input
            $('#searchInput').on('keyup', function() {
                table.search(this.value).draw();
            });

            // Sync limit box
            $('#lengthSelect').on('change', function() {
                table.page.len(this.value).draw();
            });
        });
    </script>
</body>
</html>