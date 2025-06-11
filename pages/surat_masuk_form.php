<?php
require_once '../includes/header.php';
requireLevel(1);
?>

        <h2><?php echo isset($_GET['id_surat']) ? 'Edit Surat Masuk' : 'Tambah Surat Masuk'; ?></h2>
        <p>This page will allow you to <?php echo isset($_GET['id_surat']) ? 'edit' : 'add'; ?> incoming letters (tbl_surat_masuk). Functionality to be implemented.</p>
    </div>
</body>
</html>