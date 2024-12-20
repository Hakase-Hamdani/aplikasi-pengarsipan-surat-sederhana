<?php
    ob_start();
    //cek session
    session_start();

    if(empty($_SESSION['role'])){
        $_SESSION['err'] = '<center>Anda harus login terlebih dahulu!</center>';
        header("Location: ./");
        die();
    } else {
?>
<!--

Name        : Aplikasi Sederhana Manajemen Surat Menyurat
Version     : v1.0.1
Description : Aplikasi untuk mencatat data surat masuk dan keluar secara digital.
Date        : 2016
Developer   : M. Rudianto
Phone/WA    : 0852-3290-4156
Email       : rudi@masrud.com
Website     : https://masrud.com

-->
<!doctype html>
<html lang="en">

<!-- Include Head START -->
<?php include('include/head.php'); ?>
<!-- Include Head END -->

<!-- Body START -->
<body class="bg">

<!-- Header START -->
<header>

<!-- Include Navigation START -->
<?php include('include/menu.php'); ?>
<!-- Include Navigation END -->

</header>
<!-- Header END -->

<!-- Main START -->
<main>

    <!-- container START -->
    <div class="container">

    <?php
        if(isset($_REQUEST['page'])){
            //Cek menu.php di ./include untuk fungsi di bawah
            $page = $_REQUEST['page'];
            switch ($page) {
                //switch dilakukan berdasarkan 'href=?page=...' yang ada di menu.php
                case 'tsm':
                    include "transaksi_surat_masuk.php"; //href=?page=tsk
                    break;
                case 'ctk':
                    include "cetak_disposisi.php";
                    break;
                case 'tsk':
                    include "transaksi_surat_keluar.php"; //href=?page=tsk
                    break;
                case 'asm':
                    include "agenda_surat_masuk.php"; //href=?page=asm
                    break;
                case 'ask':
                    include "agenda_surat_keluar.php"; //href=?page=ask
                    break;
                case 'ref':
                    include "referensi.php";
                    break;
                case 'sett':
                    include "pengaturan.php";
                    break;
                case 'pro':
                    include "profil.php";
                    break;
                case 'gsm':
                    include "galeri_sm.php"; //href=?page=gsm
                    break;
                case 'gsk':
                    include "galeri_sk.php"; //href=?page=gsk
                    break;
            }
        } else {
    ?>
        <!-- Row START -->
        <div class="row">

            <!-- Include Header Instansi START -->
            <?php include('include/header_instansi.php'); ?>
            <!-- Include Header Instansi END -->

            <!-- Welcome Message START -->
            <div class="col s12">
                <div class="card">
                    <div class="card-content">
                        <h4>Selamat Datang <u> <?php echo $_SESSION['username']; ?> </u></h4>
                        <!--Buat menampilkan profil user (jika ada)-->
                        <?php
                        if(isset($_SESSION['id_staff'])){
                            echo "Nama  :" . $_SESSION['nama'];
                            echo "<br>";
                            //tambahkan join tabel berdasarkan id_instansi di tbl_staf, buat menampilkan instansi
                            echo "NIP  :" . $_SESSION['NIP'];
                        } else { //tampilkan ini jika user belum punya/membuat profil
                            echo "<p>Anda belum membuat profil staf</p>";
                        }
                        ?>
                        <p class="description">Anda login sebagai
                        <?php
                            if($_SESSION['role'] == 1){
                                echo "<strong>Super Admin</strong>. Anda memiliki akses penuh terhadap sistem.";
                            } elseif($_SESSION['role'] == 2){
                                echo "<strong>Administrator</strong>. Berikut adalah statistik data yang tersimpan dalam sistem.";
                            } else {
                                echo "<strong>Petugas Disposisi</strong>. Berikut adalah statistik data yang tersimpan dalam sistem.";
                            }?></p>
                    </div>
                </div>
            </div>
            <!-- Welcome Message END -->

            <?php
                //menghitung jumlah surat masuk
                $count2 = mysqli_num_rows(mysqli_query($config, "SELECT * FROM tbl_surat_keluar"));

                //menghitung jumlah klasifikasi
                $count4 = mysqli_num_rows(mysqli_query($config, "SELECT * FROM tbl_klasifikasi"));

                //menghitung jumlah klasifikasi
                $count3 = mysqli_num_rows(mysqli_query($config, "SELECT * FROM tbl_instansi"));

                //menghitung jumlah pengguna
                $count5 = mysqli_num_rows(mysqli_query($config, "SELECT * FROM tbl_user"));
            ?>

            <!-- Info Statistic START -->

            <a href="?page=tsk">
                <div class="col s12 m4">
                    <div class="card lime darken-1">
                        <div class="card-content">
                            <span class="card-title white-text"><i class="material-icons md-36">drafts</i> Jumlah Surat Keluar</span>
                            <?php echo '<h5 class="white-text link">'.$count2.' Surat Keluar</h5>'; ?>
                        </div>
                    </div>
                </div>
            </a>

            <div class="col s12 m4">
                <div class="card yellow darken-3">
                    <div class="card-content">
                        <span class="card-title white-text"><i class="material-icons md-36">description</i> Jumlah Instansi</span>
                        <?php echo '<h5 class="white-text link">'.$count3.' Instansi</h5>'; ?>
                    </div>
                </div>
            </div>

            <a href="?page=ref">
                <div class="col s12 m4">
                    <div class="card deep-orange">
                        <div class="card-content">
                            <span class="card-title white-text"><i class="material-icons md-36">class</i> Jumlah Klasifikasi Surat</span>
                            <?php echo '<h5 class="white-text link">'.$count4.' Klasifikasi Surat</h5>'; ?>
                        </div>
                    </div>
                </div>
            </a>

        <?php
            if($_SESSION['id_user'] == 1 || $_SESSION['role'] == 2){?>
                <a href="?page=sett&sub=usr">
                    <div class="col s12 m4">
                        <div class="card blue accent-2">
                            <div class="card-content">
                                <span class="card-title white-text"><i class="material-icons md-36">people</i> Jumlah Pengguna</span>
                                <?php echo '<h5 class="white-text link">'.$count5.' Pengguna</h5>'; ?>
                            </div>
                        </div>
                    </div>
                </a>
            <!-- Info Statistic START -->
        <?php
            }
        ?>

        </div>
        <!-- Row END -->
    <?php
        }
    ?>
    </div>
    <!-- container END -->

</main>
<!-- Main END -->

<!-- Include Footer START -->
<?php include('include/footer.php'); ?>
<!-- Include Footer END -->

</body>
<!-- Body END -->

</html>

<?php
    }
?>
