<?php
    ob_start();
    //cek session
    session_start();

    if(empty($_SESSION['admin'])){
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


MODIFIED BY

Developer   : Muhammad Hamdani
Website     : fauxnet.blogspot.com

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
            $page = $_REQUEST['page'];
            switch ($page) {
                case 'tsm':
                    include "transaksi_surat_masuk.php";
                    break;
                case 'ctk':
                    include "cetak_disposisi.php";
                    break;
                case 'tsk':
                    include "transaksi_surat_keluar.php";
                    break;
                case 'asm':
                    include "agenda_surat_masuk.php";
                    break;
                case 'ask':
                    include "agenda_surat_keluar.php";
                    break;
                case 'ref':
                    include "referensi.php";
                    break;
                case 'div':
                    include "divisi.php";
                    break;
                case 'sett':
                    include "pengaturan.php";
                    break;
                case 'pro':
                    include "profil.php";
                    break;
                case 'gsm':
                    include "galeri_sm.php";
                    break;
                case 'gsk':
                    include "galeri_sk.php";
                    break;
                ////
                case 'sk': //Laporan Daftar Surat Per Klasifikasi (surat join klasifikasi dengan where id_klasifikasi)
                    include "surat_join_klas.php";
                    break;
                case 'skc': //Laporan Pengarsipan Berdasarkan Klasifikasi Surat (surat join klasifikasi dengan count)
                    include "surat_klas_count.php";
                    break;
                case 'suc': //Laporan Jumlah Surat Per Staff (surat join staff dengan count)
                    include "surat_user_count.php";
                    break;
                case 'sdc': //Laporan Jumlah Surat Per Bidang/Divisi (surat join bidang dengan count)
                    include "surat_div_count.php";
                    break;
                case 'dummy': //Laporan Komprehensif Output Surat (surat join bidang join staf join klasifikasi)
                    include "dummy.php";
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
                        <h4>Selamat Datang <?php echo $_SESSION['nama']; ?></h4>
                        <p class="description">Anda login sebagai
                        <?php
                            if($_SESSION['admin'] == 1){
                                echo "<strong>Super Admin</strong>. Anda memiliki akses penuh terhadap sistem.";
                            } elseif($_SESSION['admin'] == 2){
                                echo "<strong>Petugas Surat</strong>. Berikut adalah statistik data yang tersimpan dalam sistem.";
                            } elseif($_SESSION['admin'] == 3){
                                echo "<strong>Petugas Disposisi</strong>. Berikut adalah statistik data yang tersimpan dalam sistem.";
                            }?></p>
                    </div>
                </div>
            </div>
            <!-- Welcome Message END -->

            <?php
                //menghitung jumlah surat masuk
                $count1 = mysqli_num_rows(mysqli_query($config, "SELECT * FROM tbl_surat_masuk"));

                //menghitung jumlah surat masuk
                $count2 = mysqli_num_rows(mysqli_query($config, "SELECT * FROM tbl_surat_keluar"));

                //menghitung jumlah surat masuk
                $count3 = mysqli_num_rows(mysqli_query($config, "SELECT * FROM tbl_disposisi"));

                //menghitung jumlah klasifikasi
                $count4 = mysqli_num_rows(mysqli_query($config, "SELECT * FROM tbl_klasifikasi"));

                //menghitung jumlah pengguna
                $count5 = mysqli_num_rows(mysqli_query($config, "SELECT * FROM tbl_user"));
            ?>

            <!-- Info Statistic START -->
            <a href="?page=tsm">
                <div class="col s12 m4">
                    <div class="card cyan">
                        <div class="card-content">
                            <span class="card-title white-text"><i class="material-icons md-36">mail</i> Jumlah Surat Masuk</span>
                            <?php echo '<h5 class="white-text link">'.$count1.' Surat Masuk</h5>'; ?>
                        </div>
                    </div>
                </div>
            </a>

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
                        <span class="card-title white-text"><i class="material-icons md-36">description</i> Jumlah Disposisi</span>
                        <?php echo '<h5 class="white-text link">'.$count3.' Disposisi</h5>'; ?>
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
            if($_SESSION['admin'] == 1){?>
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
