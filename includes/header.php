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
    <style>
        .sidebar {
            height: 100vh;
            width: 250px;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #343a40;
            padding-top: 20px;
            transition: transform 0.3s ease;
            z-index: 1000;
            overflow-y: auto;
        }
        .sidebar-hidden {
            transform: translateX(-250px);
        }
        .main-content {
            margin-left: 250px;
            padding: 20px;
            transition: margin-left 0.3s ease;
            position: relative;
            z-index: 500;
        }
        .sidebar-backdrop {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 900;
            display: none;
        }
        .sidebar-backdrop.active {
            display: block;
        }
        @media (max-width: 768px) {
            .sidebar {
                transform: translateX(-250px);
            }
            .sidebar-active {
                transform: translateX(0);
            }
            .main-content {
                margin-left: 0;
            }
            .toggle-btn {
                display: block !important; /* Force visibility */
                background-color: #007bff;
                border: 2px solid #ffffff; /* Debug border */
            }
        }
        .sidebar .nav-link {
            color: #ffffff;
            padding: 10px 20px;
        }
        .sidebar .nav-link:hover {
            background-color: #495057;
        }
        .sidebar .nav-header {
            color: #adb5bd;
            padding: 10px 20px;
            font-size: 0.9em;
            text-transform: uppercase;
        }
        .toggle-btn {
            position: fixed;
            top: 10px;
            left: 10px;
            z-index: 1100;
            display: none;
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar" id="sidebar">
        <h4 class="text-white text-center mb-4">AMS Native</h4>
        <ul class="nav flex-column">
            <?php if ($user['admin'] >= 1): ?>
                <li class="nav-header">Manajemen Surat</li>
                <li class="nav-item">
                    <a class="nav-link" href="../pages/surat_masuk.php">> Surat Masuk</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../pages/surat_keluar.php">> Surat Keluar</a>
                </li>
            <?php endif; ?>
            <?php if ($user['admin'] == 3): ?>
                <li class="nav-header">Admin Menu</li>
                <li class="nav-item">
                    <a class="nav-link" href="../pages/klasifikasi.php">> Klasifikasi</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../pages/divisi.php">> Divisi</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../pages/instansi.php">> Instansi</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../pages/users.php">> Users</a>
                </li>
            <?php endif; ?>
            <li class="nav-header">User</li>
            <li class="nav-item">
                <a class="nav-link" href="../pages/user_profile.php">Profile</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../includes/logout.php">Logout</a>
            </li>
        </ul>
    </div>

    <!-- Backdrop for Mobile -->
    <div class="sidebar-backdrop" id="sidebarBackdrop"></div>

    <!-- Toggle Button for Mobile -->
    <button class="btn btn-primary toggle-btn" id="toggleSidebar">
        <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Main Content -->
    <div class="main-content">
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        const sidebar = document.getElementById('sidebar');
        const backdrop = document.getElementById('sidebarBackdrop');
        const toggleBtn = document.getElementById('toggleSidebar');

        toggleBtn.addEventListener('click', function() {
            sidebar.classList.toggle('sidebar-active');
            backdrop.classList.toggle('active');
            console.log('Toggle button clicked'); // Debug
        });

        backdrop.addEventListener('click', function() {
            sidebar.classList.remove('sidebar-active');
            backdrop.classList.remove('active');
            console.log('Backdrop clicked'); // Debug
        });
    </script>
</body>
</html>