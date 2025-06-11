<?php
require_once '../includes/header.php';
requireLevel(2);

$id_surat = isset($_GET['id_surat']) && is_numeric($_GET['id_surat']) ? $_GET['id_surat'] : null;
?>

        <h2>Manage Disposisi</h2>
        <p>This page will allow you to manage dispositions (tbl_disposisi) 
           <?php if ($id_surat): ?>
               for Surat Masuk ID <?php echo htmlspecialchars($id_surat); ?>
           <?php else: ?>
               for all letters
           <?php endif; ?>. 
           Functionality to be implemented.</p>
    </div>
</body>
</html>