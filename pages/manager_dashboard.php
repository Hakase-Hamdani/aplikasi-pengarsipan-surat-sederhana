<?php
require_once '../includes/header.php';
requireLevel(2);

// Fetch statistics (excluding pengguna)
$stats = [];
$tables = [
    'surat_masuk' => 'tbl_surat_masuk',
    'surat_keluar' => 'tbl_surat_keluar',
    'disposisi' => 'tbl_disposisi',
    'klasifikasi' => 'tbl_klasifikasi'
];

foreach ($tables as $key => $table) {
    $stmt = $pdo->query("SELECT COUNT(*) as count FROM $table");
    $stats[$key] = $stmt->fetch(PDO::FETCH_ASSOC)['count'];
}
?>

        <h2>Manager Dashboard</h2>
        <div class="row">
            <div class="col-md-4 mb-3">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Jumlah Surat Masuk</h5>
                        <p class="card-text"><?php echo $stats['surat_masuk']; ?></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-3">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Jumlah Surat Keluar</h5>
                        <p class="card-text"><?php echo $stats['surat_keluar']; ?></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-3">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Jumlah Disposisi</h5>
                        <p class="card-text"><?php echo $stats['disposisi']; ?></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-3">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Jumlah Klasifikasi Surat</h5>
                        <p class="card-text"><?php echo $stats['klasifikasi']; ?></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>