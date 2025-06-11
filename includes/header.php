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
        .dropdown-submenu {
            position: relative;
        }
        .dropdown-submenu .dropdown-menu {
            top: 0;
            left: 100%;
            margin-top: -1px;
        }
        .dropdown-submenu:hover > .dropdown-menu {
            display: block;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="../pages/<?php echo $user['admin'] == 3 ? 'super_admin_dashboard' : ($user['admin'] == 2 ? 'manager_dashboard' : 'user_dashboard'); ?>.php">AMS Native</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <?php if ($user['admin'] >= 1): ?>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="manajemenSurat" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Manajemen Surat
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="manajemenSurat">
                                <li class="dropdown-submenu">
                                    <a class="dropdown-item dropdown-toggle" href="../pages/surat_masuk.php">Surat Masuk</a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="../pages/referensi.php?context=surat_masuk">Referensi</a></li>
                                        <?php if ($user['admin'] >= 2): ?>
                                            <li><a class="dropdown-item" href="../pages/disposisi.php">Disposisi</a></li>
                                        <?php endif; ?>
                                    </ul>
                                </li>
                                <li class="dropdown-submenu">
                                    <a class="dropdown-item dropdown-toggle" href="../pages/surat_keluar.php">Surat Keluar</a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="../pages/referensi.php?context=surat_keluar">Referensi</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    <?php endif; ?>
                    <?php if ($user['admin'] == 3): ?>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="adminMenu" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Admin Menu
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="adminMenu">
                                <li class="dropdown-submenu">
                                    <a class="dropdown-item dropdown-toggle" href="../pages/klasifikasi.php">Klasifikasi</a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="../pages/referensi.php?context=klasifikasi">Referensi</a></li>
                                    </ul>
                                </li>
                                <li><a class="dropdown-item" href="../pages/divisi.php">Divisi</a></li>
                                <li><a class="dropdown-item" href="../pages/instansi.php">Instansi</a></li>
                                <li><a class="dropdown-item" href="../pages/users.php">Users</a></li>
                            </ul>
                        </li>
                    <?php endif; ?>
                    <li class="nav-item">
                        <a class="nav-link" href="../pages/user_profile.php">Profile</a>
                    </li>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Enable nested dropdowns
        document.querySelectorAll('.dropdown-submenu .dropdown-toggle').forEach(item => {
            item.addEventListener('click', function(e) {
                e.preventDefault();
                e.stopPropagation();
                let submenu = this.nextElementSibling;
                if (submenu.classList.contains('dropdown-menu')) {
                    submenu.classList.toggle('show');
                }
            });
        });
    </script>
</body>
</html>