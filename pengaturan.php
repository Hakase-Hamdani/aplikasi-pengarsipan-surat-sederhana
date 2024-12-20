<?php
    //cek session
    if(empty($_SESSION['role'])){
        $_SESSION['err'] = '<center>Anda harus login terlebih dahulu!</center>';
        header("Location: ./");
        die();
    } else {

        if($_SESSION['role'] != 1 AND $_SESSION['role'] != 2){
            echo '<script language="javascript">
                    window.alert("ERROR! Anda tidak memiliki hak akses untuk membuka halaman ini");
                    window.location.href="./logout.php";
                </script>';
        } else {

            if(isset($_REQUEST['sub'])){
                $sub = $_REQUEST['sub'];
                switch ($sub) {
                    case 'back':
                        include "backup.php";
                        break;
                    case 'rest':
                        include "restore.php";
                        break;
                    case 'usr':
                        include "user.php";
                        break;
                    }
            } else {

                if(isset($_REQUEST['submit'])){

                    //validasi form kosong
                    if ($_REQUEST['no_telp'] == "" || $_REQUEST['dinas'] == "" || $_REQUEST['alamat'] == ""){
                        $_SESSION['errEmpty'] = 'ERROR! Semua form wajib diisi';
                        header("Location: ././admin.php?page=sett");
                        die();
                    } else {

                        $id_instansi = "1";
                        $dinas = $_REQUEST['dinas'];
                        $alamat = $_REQUEST['alamat'];
                        $no_telp = $_REQUEST['no_telp'];
                        $email = $_REQUEST['email'];
                        $website = $_REQUEST['website'];
                        //$id_user = $_SESSION['id_user'];

                        //validasi input data
                        if(!preg_match("/^[a-zA-Z0-9. -]*$/", $dinas)){
                            $_SESSION['dinas'] = 'Form dinas Instansi hanya boleh mengandung karakter huruf, angka, spasi, titik(.) dan minus(-)';
                            echo '<script language="javascript">window.history.back();</script>';
                        } else {

                            if(!preg_match("/^[a-zA-Z0-9. -]*$/", $no_telp)){
                                $_SESSION['no_telp'] = 'Form dinas Yayasan hanya boleh mengandung karakter huruf, angka, spasi, titik(.) dan minus(-)';
                                echo '<script language="javascript">window.history.back();</script>';
                            } else {

                                if(!preg_match("/^[a-zA-Z0-9.,:\/<> -\"]*$/", $alamat)){
                                    $_SESSION['alamat'] = 'Form alamat hanya boleh mengandung karakter huruf, angka, spasi, titik(.), koma(,), titik dua(:), petik dua(""), garis miring(/) dan minus(-)';
                                    echo '<script language="javascript">window.history.back();</script>';
                                } else {
                                                        $ekstensi = array('png','jpg', 'jpeg');
                                                        $logo = $_FILES['logo']['name'];
                                                        $x = explode('.', $logo);
                                                        $eks = strtolower(end($x));
                                                        $ukuran = $_FILES['logo']['size'];
                                                        $target_dir = "upload/";

                                                        if (! is_dir($target_dir)) {
                                                            mkdir($target_dir, 0777, true);
                                                        }

                                                        //jika form logo tidak kosong akan mengeksekusi script dibawah ini
                                                        if(!empty($logo)){

                                                            $nlogo = $logo;
                                                            //validasi gambar
                                                            if(in_array($eks, $ekstensi) == true){
                                                                if($ukuran < 2000000){

                                                                    $query = mysqli_query($config, "SELECT logo FROM tbl_instansi");
                                                                    list($logo) = mysqli_fetch_array($query);

                                                                    unlink($target_dir.$logo);

                                                                    move_uploaded_file($_FILES['logo']['tmp_name'], $target_dir.$nlogo);

                                                                    $query = mysqli_query($config, "UPDATE tbl_instansi SET no_telp='$no_telp',dinas='$dinas',alamat='$alamat',email='$email',website='$website',logo='$nlogo' WHERE id_instansi='$id_instansi'");

                                                                    if($query == true){
                                                                        $_SESSION['succEdit'] = 'SUKSES! Data instansi berhasil diupdate';
                                                                        header("Location: ././admin.php?page=sett");
                                                                        die();
                                                                    } else {
                                                                        $_SESSION['errQ'] = 'ERROR! Ada masalah dengan query';
                                                                        echo '<script language="javascript">window.history.back();</script>';
                                                                    }
                                                                } else {
                                                                    $_SESSION['errSize'] = 'Ukuran file yang diupload terlalu besar!<br/><br/>';
                                                                    echo '<script language="javascript">window.history.back();</script>';
                                                                }
                                                            } else {
                                                                $_SESSION['errSize'] = 'Format file gambar yang diperbolehkan hanya *.JPG dan *.PNG!<br/><br/>';
                                                                echo '<script language="javascript">window.history.back();</script>';
                                                            }
                                                        } else {

                                                            //jika form logo kosong akan mengeksekusi script dibawah ini
                                                            $query = mysqli_query($config, "UPDATE tbl_instansi SET no_telp='$no_telp',dinas='$dinas',alamat='$alamat',email='$email',website='$website',logo='$nlogo' WHERE id_instansi='$id_instansi'");

                                                            if($query == true){
                                                                $_SESSION['succEdit'] = 'SUKSES! Data instansi berhasil diupdate';
                                                                header("Location: ././admin.php?page=sett");
                                                                die();
                                                            } else {
                                                                $_SESSION['errQ'] = 'ERROR! Ada masalah dengan query';
                                                                echo '<script language="javascript">window.history.back();</script>';
                                                            }
                                                        }

                                                        if(empty($email) || empty($website)){
                                                            $query = mysqli_query($config, "UPDATE tbl_instansi SET no_telp='$no_telp',dinas='$dinas',alamat='$alamat', logo='$nlogo' WHERE id_instansi='$id_instansi'");
                                                            if($query == true){
                                                                $_SESSION['succEdit'] = 'SUKSES! Data instansi berhasil diupdate';
                                                                header("Location: ././admin.php?page=sett");
                                                                die();
                                                            } else {
                                                                $_SESSION['errQ'] = 'ERROR! Ada masalah dengan query';
                                                                echo '<script language="javascript">window.history.back();</script>';
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                } else {

                    $query = mysqli_query($config, "SELECT * FROM tbl_instansi");
                    if(mysqli_num_rows($query) > 0){
                        $no = 1;
                        while($row = mysqli_fetch_array($query)){?>

                        <!-- Row Start -->
                        <div class="row">
                            <!-- Secondary Nav START -->
                            <div class="col s12">
                                <nav class="secondary-nav">
                                    <div class="nav-wrapper blue-grey darken-1">
                                        <ul class="left">
                                            <li class="waves-effect waves-light"><a href="?page=sett" class="judul"><i class="material-icons">work</i> Manajemen Instansi</a></li>
                                        </ul>
                                    </div>
                                </nav>
                                <div class="input-field col s6">
                                    <img class="logo" alt="LOGO TIDAK DITEMUKAN" src="upload/<?php echo $row['logo']; ?>">
                                </div>
                            </div>
                            <!-- Secondary Nav END -->
                        </div>
                        <!-- Row END -->

                        <?php
                            if(isset($_SESSION['errEmpty'])){
                                $errEmpty = $_SESSION['errEmpty'];
                                echo '<div id="alert-message" class="row">
                                        <div class="col m12">
                                            <div class="card red lighten-5">
                                                <div class="card-content notif">
                                                    <span class="card-title red-text"><i class="material-icons md-36">clear</i> '.$errEmpty.'</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>';
                                unset($_SESSION['errEmpty']);
                            }
                            if(isset($_SESSION['succEdit'])){
                                $succEdit = $_SESSION['succEdit'];
                                echo '<div id="alert-message" class="row">
                                        <div class="col m12">
                                            <div class="card green lighten-5">
                                                <div class="card-content notif">
                                                    <span class="card-title green-text"><i class="material-icons md-36">done</i> '.$succEdit.'</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>';
                                unset($_SESSION['succEdit']);
                            }
                            if(isset($_SESSION['errQ'])){
                                $errQ = $_SESSION['errQ'];
                                echo '<div id="alert-message" class="row">
                                        <div class="col m12">
                                            <div class="card red lighten-5">
                                                <div class="card-content notif">
                                                    <span class="card-title red-text"><i class="material-icons md-36">clear</i> '.$errQ.'</span>
                                            </div>
                                            </div>
                                        </div>
                                    </div>';
                                unset($_SESSION['errQ']);
                            }
                        ?>

                        <!-- Row form Start -->
                        <div class="row jarak-form">

                            <!-- Form START -->
                            <form class="col s12" method="post" action="?page=sett" enctype="multipart/form-data">

                                <!-- Row in form START -->
                                <div class="row">
                                    <div class="input-field col s6">
                                        <i class="material-icons prefix md-prefix">school</i>
                                        <input id="dinas" type="text" class="validate" name="dinas" value="<?php echo $row['dinas']; ?>" required>
                                            <?php
                                                if(isset($_SESSION['dinas'])){
                                                    $dinas = $_SESSION['dinas'];
                                                    echo '<div id="alert-message" class="callout bottom z-depth-1 red lighten-4 red-text">'.$dinas.'</div>';
                                                    unset($_SESSION['dinas']);
                                                }
                                            ?>
                                        <label for="dinas">Dinas</label>
                                    </div>
                                    <div class="input-field col s6">
                                        <i class="material-icons prefix md-prefix">work</i>
                                        <input id="no_telp" type="text" class="validate" name="no_telp" value="<?php echo $row['no_telp']; ?>" required>
                                            <?php
                                                if(isset($_SESSION['no_telp'])){
                                                    $no_telp = $_SESSION['no_telp'];
                                                    echo '<div id="alert-message" class="callout bottom z-depth-1 red lighten-4 red-text">'.$no_telp.'</div>';
                                                    unset($_SESSION['no_telp']);
                                                }
                                            ?>
                                        <label for="no_telp">Nomor Telepon</label>
                                    </div>
                                    <div class="input-field col s6">
                                        <i class="material-icons prefix md-prefix">assistant_photo</i>
                                        <input id="alamat" type="text" class="validate" name="alamat" value='<?php echo $row['alamat']; ?>' required>
                                            <?php
                                                if(isset($_SESSION['alamat'])){
                                                    $alamat = $_SESSION['alamat'];
                                                    echo '<div id="alert-message" class="callout bottom z-depth-1 red lighten-4 red-text">'.$alamat.'</div>';
                                                    unset($_SESSION['alamat']);
                                                }
                                            ?>
                                        <label for="alamat">alamat</label>
                                    </div>
                                    <div class="input-field col s6">
                                        <i class="material-icons prefix md-prefix">account_box</i>
                                        <input id="email" type="text" class="validate" name="email" value="<?php echo $row['email']; ?>">
                                            <?php
                                                if(isset($_SESSION['email'])){
                                                    $email = $_SESSION['email'];
                                                    echo '<div id="alert-message" class="callout bottom z-depth-1 red lighten-4 red-text">'.$email.'</div>';
                                                    unset($_SESSION['email']);
                                                }
                                            ?>
                                        <label for="email">Email</label>
                                    </div>
                                    <div class="input-field col s6">
                                        <i class="material-icons prefix md-prefix">language</i>
                                        <input id="website" type="text" class="validate" name="website" value="<?php echo $row['website']; ?>">
                                            <?php
                                                if(isset($_SESSION['website'])){
                                                    $website = $_SESSION['website'];
                                                    echo '<div id="alert-message" class="callout bottom z-depth-1 red lighten-4 red-text">'.$website.'</div>';
                                                    unset($_SESSION['website']);
                                                }
                                            ?>
                                        <label for="website">Website</label>
                                    </div>
                                    <div class="input-field col s6 tooltipped" data-position="top" data-tooltip="Jika tidak ada logo, biarkan kosong">
                                        <div class="file-field input-field">
                                            <div class="btn light-green darken-1">
                                                <span>File</span>
                                                <input type="file" id="logo" name="logo">
                                            </div>
                                            <div class="file-path-wrapper">
                                                <input class="file-path validate" type="text" placeholder="Upload Logo instansi">
                                            </div>
                                                <?php
                                                    if(isset($_SESSION['errSize'])){
                                                        $errSize = $_SESSION['errSize'];
                                                        echo '<div id="alert-message" class="callout bottom z-depth-1 red lighten-4 red-text">'.$errSize.'</div>';
                                                        unset($_SESSION['errSize']);
                                                    }
                                                    if(isset($_SESSION['errFormat'])){
                                                        $errFormat = $_SESSION['errFormat'];
                                                        echo '<div id="alert-message" class="callout bottom z-depth-1 red lighten-4 red-text">'.$errFormat.'</div>';
                                                        unset($_SESSION['errFormat']);
                                                    }
                                                ?>
                                            <small class="red-text">*Format file yang diperbolehkan hanya *.JPG, *.PNG dan ukuran maksimal file 2 MB. Disarankan gambar berbentuk kotak atau lingkaran!</small>
                                        </div>
                                    </div>
                                </div>
                                <!-- Row in form END -->

                                <div class="row">
                                    <div class="col 6">
                                        <button type="submit" name="submit" class="btn-large blue waves-effect waves-light">SIMPAN <i class="material-icons">done</i></button>
                                    </div>
                                    <div class="col 6">
                                        <a href="./admin.php" class="btn-large deep-orange waves-effect waves-light">BATAL <i class="material-icons">clear</i></a>
                                    </div>
                                </div>

                            </form>
                            <!-- Form END -->

                        </div>
                        <!-- Row form END -->

<?php
                        }
                    }
                }
            }
        }
    }
?>
