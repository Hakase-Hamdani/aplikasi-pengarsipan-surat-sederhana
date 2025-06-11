<?php
require_once '../config/db_connect.php';
require_once '../includes/session.php';
requireLogin();

// Fetch user details
$stmt = $pdo->prepare("SELECT nama, username, admin FROM tbl_user WHERE id_user = ?");
$stmt->execute([$_SESSION['user_id']]);
$user = $stmt->fetch(PDO::FETCH_ASSOC);

// Determine user level
$user_level = $user['admin'] == 3 ? 'Super Admin' : ($user['admin'] == 2 ? 'Manager' : 'User');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AMS Native</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">AMS Native</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="../includes/logout.php">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container mt-4">
        <div class="card mb-4">
            <div class="card-body">
                <h5 class="card-title">User Information</h5>
                <p class="card-text">
                    <strong>Name:</strong> <?php echo htmlspecialchars($user['nama']); ?><br>
                    <strong>Username:</strong> <?php echo htmlspecialchars($user['username']); ?><br>
                    <strong>Level:</strong> <?php echo htmlspecialchars($user_level); ?>
                </p>
            </div>
        </div>