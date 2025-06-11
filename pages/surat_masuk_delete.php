<?php
require_once '../config/db_connect.php';
require_once '../includes/session.php';
requireLogin();
requireLevel(1);

if (!isset($_GET['id_surat']) || !is_numeric($_GET['id_surat'])) {
    header('Location: surat_masuk.php');
    exit();
}

$id_surat = $_GET['id_surat'];
$user_id = $_SESSION['user_id'];
$user_level = $_SESSION['admin'];

try {
    // Check if the letter belongs to the user (for levels 1 and 2)
    $query = "SELECT id_user FROM tbl_surat_masuk WHERE id_surat = ?";
    if ($user_level < 3) {
        $query .= " AND id_user = ?";
    }
    $stmt = $pdo->prepare($query);
    if ($user_level < 3) {
        $stmt->execute([$id_surat, $user_id]);
    } else {
        $stmt->execute([$id_surat]);
    }
    
    if ($stmt->rowCount() === 0) {
        header('Location: surat_masuk.php');
        exit();
    }
    
    // Delete the letter
    $stmt = $pdo->prepare("DELETE FROM tbl_surat_masuk WHERE id_surat = ?");
    $stmt->execute([$id_surat]);
    
    header('Location: surat_masuk.php');
    exit();
} catch (PDOException $e) {
    header('Location: surat_masuk.php?error=' . urlencode('Error deleting letter'));
    exit();
}
?>