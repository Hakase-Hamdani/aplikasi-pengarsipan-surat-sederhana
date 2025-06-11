<?php
require_once '../includes/header.php';
requireLevel(1);
?>

<h2>Manage Surat Masuk</h2>
<p>This page will allow you to manage incoming letters (tbl_surat_masuk). Functionality to be implemented.</p>
<div class="mt-3">
    <a href="referensi.php?context=surat_masuk" class="btn btn-secondary">Referensi (Display Limit)</a>
    <?php if ($_SESSION['admin'] >= 2): ?>
        <a href="disposisi.php" class="btn btn-secondary">Disposisi</a>
    <?php endif; ?>
</div>
</div>
</body>
</html>