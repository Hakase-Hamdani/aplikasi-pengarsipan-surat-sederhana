<?php
require_once '../includes/header.php';
requireLevel(1);

$context = isset($_GET['context']) ? $_GET['context'] : '';
$valid_contexts = ['surat_masuk', 'surat_keluar', 'klasifikasi'];
if (!in_array($context, $valid_contexts)) {
    header('Location: ../index.php');
    exit();
}

// Map context to tbl_sett field
$field_map = [
    'surat_masuk' => 'surat_masuk',
    'surat_keluar' => 'surat_keluar',
    'klasifikasi' => 'referensi'
];
$field = $field_map[$context];

// Placeholder for settings management
?>

        <h2>Referensi Settings</h2>
        <p>This page will allow you to set the display limit for <?php echo htmlspecialchars($context); ?> (tbl_sett.<?php echo htmlspecialchars($field); ?>). Functionality to be implemented.</p>
    </div>
</body>
</html>