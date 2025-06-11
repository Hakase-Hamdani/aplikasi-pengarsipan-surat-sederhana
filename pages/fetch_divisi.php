<?php
require_once '../config/db_connect.php';

$term = trim($_GET['term'] ?? '');
$results = [];

try {
    $stmt = $pdo->prepare("SELECT kode, nama FROM tbl_divisi WHERE kode LIKE ? OR nama LIKE ?");
    $stmt->execute(['%' . $term . '%', '%' . $term . '%']);
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    // Log error in production
}

header('Content-Type: application/json');
echo json_encode($results);
?>