<?php
    //cek session
    if(empty($_SESSION['admin'])){
        $_SESSION['err'] = '<center>Anda harus login terlebih dahulu!</center>';
        header("Location: ./");
        die();
    } else {

        if(isset($_REQUEST['submit'])){

            //validasi form kosong
            if($_REQUEST['no_agenda'] == "" || $_REQUEST['no_surat'] == "" || $_REQUEST['tujuan'] == "" || $_REQUEST['isi'] == ""
                || $_REQUEST['kode'] == "" || $_REQUEST['tgl_surat'] == ""  || $_REQUEST['keterangan'] == ""){
                    $_SESSION['errEmpty'] = 'ERROR! Semua form wajib diisi';
                    echo '<script language="javascript">window.history.back();</script>';
            } else {

                $id_surat = $_REQUEST['id_surat'];
                $no_agenda = $_REQUEST['no_agenda'];
                $no_surat = $_REQUEST['no_surat'];
                $tujuan = $_REQUEST['tujuan'];
                $isi = $_REQUEST['isi'];
                $kode = substr($_REQUEST['kode'],0,30);
                $nkode = trim($kode);
                $divisi = $_REQUEST['divisi'];
                $tgl_surat = $_REQUEST['tgl_surat'];
                $keterangan = $_REQUEST['keterangan'];
                $id_user = $_SESSION['id_user'];

                //validasi input data
                if(!preg_match("/^[0-9]*$/", $no_agenda)){
                    $_SESSION['no_agendak'] = 'Form Nomor Agenda harus diisi angka!';
                    echo '<script language="javascript">window.history.back();</script>';
                } else {

                    if(!preg_match("/^[a-zA-Z0-9.\/ -]*$/", $no_surat)){
                        $_SESSION['no_suratk'] = 'Form No Surat hanya boleh mengandung karakter huruf, angka, spasi, titik(.), minus(-) dan garis miring(/)';
                        echo '<script language="javascript">window.history.back();</script>';
                    } else {

                        if(!preg_match("/^[a-zA-Z0-9.,() \/ -]*$/", $tujuan)){
                            $_SESSION['tujuan_surat'] = 'Form Tujuan Surat hanya boleh mengandung karakter huruf, angka, spasi, titik(.), koma(,), minus(-),kurung() dan garis miring(/)';
                            echo '<script language="javascript">window.history.back();</script>';
                        } else {

                            if(!preg_match("/^[a-zA-Z0-9.,_()%&@\/\r\n -]*$/", $isi)){
                                $_SESSION['isik'] = 'Form Isi Ringkas hanya boleh mengandung karakter huruf, angka, spasi, titik(.), koma(,), minus(-), garis miring(/), kurung(), underscore(_), dan(&) persen(%) dan at(@)';
                                echo '<script language="javascript">window.history.back();</script>';
                            } else {

                                if (!preg_match("/^[a-zA-Z0-9.,\/\- ]*$/", $nkode)) {
                                    $_SESSION['kodek'] = 'Form Kode Klasifikasi hanya boleh mengandung karakter huruf, angka, spasi, titik(.) dan koma(,)';
                                    echo '<script language="javascript">window.history.back();</script>';
                                } else {

                                    if (!preg_match("/^[a-zA-Z0-9.,\/\- ]*$/", $divisi)) {
                                        $_SESSION['divisi'] = 'Form Kode Divisi hanya boleh mengandung karakter huruf, angka, spasi, titik(.) dan koma(,)';
                                        echo '<script language="javascript">window.history.back();</script>';
                                    } else {

                                    if(!preg_match("/^[0-9.-]*$/", $tgl_surat)){
                                        $_SESSION['tgl_suratk'] = 'Form Tanggal Surat hanya boleh mengandung angka dan minus(-)';
                                        echo '<script language="javascript">window.history.back();</script>';
                                    } else {

                                        if(!preg_match("/^[a-zA-Z0-9.,()\/ -]*$/", $keterangan)){
                                            $_SESSION['keterangank'] = 'Form Keterangan hanya boleh mengandung karakter huruf, angka, spasi, titik(.), koma(,), minus(-), garis miring(/), dan kurung()';
                                            echo '<script language="javascript">window.history.back();</script>';
                                        } else {

                                            $ekstensi = array('jpg','png','jpeg','doc','docx','pdf');
                                            $file = $_FILES['file']['name'];
                                            $x = explode('.', $file);
                                            $eks = strtolower(end($x));
                                            $ukuran = $_FILES['file']['size'];
                                            $target_dir = "upload/surat_keluar/";

                                            if (! is_dir($target_dir)) {
                                                mkdir($target_dir, 0755, true);
                                            }

                                            //jika form file tidak kosong akan mengeksekusi script dibawah ini
                                            if ($file != "") {
                                                $rand = rand(1, 10000);
                                                $nfile = $rand . "-" . $file;
                                            
                                                // Validasi file
                                                if (in_array($eks, $ekstensi)) {
                                                    if ($ukuran < 2500000) {
                                                        $id_surat = $_REQUEST['id_surat'];
                                            
                                                        // Validate foreign keys
                                                        $kode_check = mysqli_query($config, "SELECT COUNT(*) AS cnt FROM tbl_klasifikasi WHERE kode = '$nkode'");
                                                        $kode_row = mysqli_fetch_assoc($kode_check);
                                            
                                                        $divisi_check = mysqli_query($config, "SELECT COUNT(*) AS cnt FROM tbl_divisi WHERE kode = '$divisi'");
                                                        $divisi_row = mysqli_fetch_assoc($divisi_check);
                                            
                                                        if ($kode_row['cnt'] > 0 && $divisi_row['cnt'] > 0) {
                                                            $query = mysqli_query($config, "SELECT file FROM tbl_surat_keluar WHERE id_surat='$id_surat'");
                                                            list($existing_file) = mysqli_fetch_array($query);
                                            
                                                            if (!empty($existing_file)) {
                                                                unlink($target_dir . $existing_file);
                                                            }
                                            
                                                            move_uploaded_file($_FILES['file']['tmp_name'], $target_dir . $nfile);
                                            
                                                            $query = mysqli_query($config, "UPDATE tbl_surat_keluar 
                                                                                            SET no_agenda='$no_agenda', tujuan='$tujuan', no_surat='$no_surat', isi='$isi', 
                                                                                                kode='$nkode', divisi='$divisi', tgl_surat='$tgl_surat', file='$nfile', 
                                                                                                keterangan='$keterangan', id_user='$id_user' 
                                                                                            WHERE id_surat='$id_surat'");
                                            
                                                            if ($query) {
                                                                $_SESSION['succEdit'] = 'SUKSES! Data berhasil diupdate';
                                                                header("Location: ./admin.php?page=tsk");
                                                                die();
                                                            } else {
                                                                $_SESSION['errQ'] = 'ERROR! Ada masalah dengan query';
                                                                echo '<script language="javascript">window.history.back();</script>';
                                                            }
                                                        } else {
                                                            $_SESSION['errForeign'] = 'ERROR! Kode atau Divisi tidak valid.';
                                                            echo '<script language="javascript">window.history.back();</script>';
                                                        }
                                                    } else {
                                                        $_SESSION['errSize'] = 'Ukuran file yang diupload terlalu besar!';
                                                        echo '<script language="javascript">window.history.back();</script>';
                                                    }
                                                } else {
                                                    $_SESSION['errFormat'] = 'Format file yang diperbolehkan hanya *.JPG, *.PNG, *.DOC, *.DOCX atau *.PDF!';
                                                    echo '<script language="javascript">window.history.back();</script>';
                                                }
                                            } else {
                                                $id_surat = $_REQUEST['id_surat'];
                                            
                                                // Validate foreign keys
                                                $kode_check = mysqli_query($config, "SELECT COUNT(*) AS cnt FROM tbl_klasifikasi WHERE kode = '$nkode'");
                                                $kode_row = mysqli_fetch_assoc($kode_check);
                                            
                                                $divisi_check = mysqli_query($config, "SELECT COUNT(*) AS cnt FROM tbl_divisi WHERE kode = '$divisi'");
                                                $divisi_row = mysqli_fetch_assoc($divisi_check);
                                            
                                                if ($kode_row['cnt'] > 0 && $divisi_row['cnt'] > 0) {
                                                    $query = mysqli_query($config, "UPDATE tbl_surat_keluar 
                                                                                    SET no_agenda='$no_agenda', tujuan='$tujuan', no_surat='$no_surat', isi='$isi', 
                                                                                        kode='$nkode', divisi='$divisi', tgl_surat='$tgl_surat', keterangan='$keterangan', 
                                                                                        id_user='$id_user' 
                                                                                    WHERE id_surat='$id_surat'");
                                            
                                                    if ($query) {
                                                        $_SESSION['succEdit'] = 'SUKSES! Data berhasil diupdate';
                                                        header("Location: ./admin.php?page=tsk");
                                                        die();
                                                    } else {
                                                        $_SESSION['errQ'] = 'ERROR! Ada masalah dengan query';
                                                        echo '<script language="javascript">window.history.back();</script>';
                                                    }
                                                } else {
                                                    $_SESSION['errForeign'] = 'ERROR! Kode atau Divisi tidak valid.';
                                                    echo '<script language="javascript">window.history.back();</script>';
                                                }
                                            }
                                            
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        } else {

            $id_surat = mysqli_real_escape_string($config, $_REQUEST['id_surat']);
            $query = mysqli_query($config, "SELECT id_surat, no_agenda, tujuan, no_surat, isi, kode, divisi, tgl_surat, file, keterangan, id_user FROM tbl_surat_keluar WHERE id_surat='$id_surat'");
            list($id_surat, $no_agenda, $tujuan, $no_surat, $isi, $kode, $divisi, $tgl_surat, $file, $keterangan, $id_user) = mysqli_fetch_array($query);
            if($_SESSION['id_user'] != $id_user AND $_SESSION['id_user'] != 1){
                echo '<script language="javascript">
                        window.alert("ERROR! Anda tidak memiliki hak akses untuk mengedit data ini");
                        window.location.href="./admin.php?page=tsk";
                      </script>';
            } else {?>

                <!-- Row Start -->
                <div class="row">
                    <!-- Secondary Nav START -->
                    <div class="col s12">
                        <nav class="secondary-nav">
                            <div class="nav-wrapper blue-grey darken-1">
                                <ul class="left">
                                    <li class="waves-effect waves-light"><a href="#" class="judul"><i class="material-icons">edit</i> Edit Data Surat Keluar</a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    <!-- Secondary Nav END -->
                </div>
                <!-- Row END -->

                <?php
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
                    if(isset($_SESSION['errForeign'])){
                        $errForeign = $_SESSION['errForeign'];
                        echo '<div id="alert-message" class="row">
                                <div class="col m12">
                                    <div class="card red lighten-5">
                                        <div class="card-content notif">
                                            <span class="card-title red-text"><i class="material-icons md-36">clear</i> '.$errForeign.'</span>
                                        </div>
                                    </div>
                                </div>
                            </div>';
                        unset($_SESSION['errForeign']);
                    }
                ?>

                <!-- Row form Start -->
                <div class="row jarak-form">

                    <!-- Form START -->
                    <form class="col s12" method="POST" action="?page=tsk&act=edit" enctype="multipart/form-data">

                        <!-- Row in form START -->
                        <div class="row">
                            <div class="input-field col s6">
                                <input type="hidden" name="id_surat" value="<?php echo $id_surat ;?>">
                                <i class="material-icons prefix md-prefix">looks_one</i>
                                <input id="no_agenda" type="number" class="validate" name="no_agenda" value="<?php echo $no_agenda ;?>" required>
                                    <?php
                                        if(isset($_SESSION['no_agendak'])){
                                            $no_agendak = $_SESSION['no_agendak'];
                                            echo '<div id="alert-message" class="callout bottom z-depth-1 red lighten-4 red-text">'.$no_agendak.'</div>';
                                            unset($_SESSION['no_agendak']);
                                        }
                                    ?>
                                <label for="no_agenda">Nomor Agenda</label>
                            </div>
                            <div class="input-field col s6">
                                <i class="material-icons prefix md-prefix">bookmark</i>
                                <input id="kode" type="text" class="validate" name="kode" value="<?php echo $kode ;?>" required>
                                    <?php
                                        if(isset($_SESSION['kodek'])){
                                            $kodek = $_SESSION['kodek'];
                                            echo '<div id="alert-message" class="callout bottom z-depth-1 red lighten-4 red-text">'.$kodek.'</div>';
                                            unset($_SESSION['kodek']);
                                        }
                                    ?>
                                <label for="kode">Kode Klasifikasi</label>
                            </div>
                            <div class="input-field col s6">
                            <i class="material-icons prefix md-prefix">bookmark</i>
                            <input id="divisi" type="text" class="validate" name="divisi" value="<?php echo $divisi ;?>" required>
                                <?php
                                    if(isset($_SESSION['divisi'])){
                                        $divisi = $_SESSION['divisi'];
                                        echo '<div id="alert-message" class="callout bottom z-depth-1 red lighten-4 red-text">'.$divisi.'</div>';
                                        unset($_SESSION['divisi']);
                                }
                                ?>
                            
                            <label for="divisi">Divisi</label>
                        </div>
                            <div class="input-field col s6">
                                <i class="material-icons prefix md-prefix">place</i>
                                <input id="tujuan" type="text" class="validate" name="tujuan" value="<?php echo $tujuan ;?>" required>
                                    <?php
                                        if(isset($_SESSION['tujuan_surat'])){
                                            $tujuan_surat = $_SESSION['tujuan_surat'];
                                            echo '<div id="alert-message" class="callout bottom z-depth-1 red lighten-4 red-text">'.$tujuan_surat.'</div>';
                                            unset($_SESSION['tujuan_surat']);
                                        }
                                    ?>
                                <label for="tujuan">Tujuan Surat</label>
                            </div>
                            <div class="input-field col s6">
                                <i class="material-icons prefix md-prefix">looks_two</i>
                                <input id="no_surat" type="text" class="validate" name="no_surat" value="<?php echo $no_surat ;?>" required>
                                    <?php
                                        if(isset($_SESSION['no_suratk'])){
                                            $no_suratk = $_SESSION['no_suratk'];
                                            echo '<div id="alert-message" class="callout bottom z-depth-1 red lighten-4 red-text">'.$no_suratk.'</div>';
                                            unset($_SESSION['no_suratk']);
                                        }
                                    ?>
                                <label for="no_surat">Nomor Surat</label>
                            </div>
                            <div class="input-field col s6">
                                <i class="material-icons prefix md-prefix">date_range</i>
                                <input id="tgl_surat" type="text" name="tgl_surat" class="datepicker" value="<?php echo $tgl_surat ;?>" required>
                                    <?php
                                        if(isset($_SESSION['tgl_suratk'])){
                                            $tgl_suratk = $_SESSION['tgl_suratk'];
                                            echo '<div id="alert-message" class="callout bottom z-depth-1 red lighten-4 red-text">'.$tgl_suratk.'</div>';
                                            unset($_SESSION['tgl_suratk']);
                                        }
                                    ?>
                                <label for="tgl_surat">Tanggal Surat</label>
                            </div>
                            <div class="input-field col s6">
                                <i class="material-icons prefix md-prefix">featured_play_list</i>
                                <input id="keterangan" type="text" class="validate" name="keterangan" value="<?php echo $keterangan ;?>" required>
                                    <?php
                                        if(isset($_SESSION['keterangank'])){
                                            $keterangank = $_SESSION['keterangank'];
                                            echo '<div id="alert-message" class="callout bottom z-depth-1 red lighten-4 red-text">'.$keterangank.'</div>';
                                            unset($_SESSION['keterangank']);
                                        }
                                    ?>
                                <label for="keterangan">Keterangan</label>
                            </div>
                            <div class="input-field col s6">
                                <i class="material-icons prefix md-prefix">description</i>
                                <textarea id="isi" class="materialize-textarea validate" name="isi" required><?php echo $isi ;?></textarea>
                                    <?php
                                        if(isset($_SESSION['isik'])){
                                            $isik = $_SESSION['isik'];
                                            echo '<div id="alert-message" class="callout bottom z-depth-1 red lighten-4 red-text">'.$isik.'</div>';
                                            unset($_SESSION['isik']);
                                        }
                                    ?>
                                <label for="isi">Isi Ringkas</label>
                            </div>
                            <div class="input-field col s6">
                                <div class="file-field input-field">
                                    <div class="btn light-green darken-1">
                                        <span>File</span>
                                        <input type="file" id="file" name="file">
                                    </div>
                                    <div class="file-path-wrapper">
                                        <input class="file-path validate" type="text" value="<?php echo $file ;?>" placeholder="Upload file/scan gambar surat keluar">
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
                                        <small class="red-text">*Format file yang diperbolehkan *.JPG, *.PNG, *.DOC, *.DOCX, *.PDF dan ukuran maksimal file 2 MB!</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Row in form END -->

                        <div class="row">
                            <div class="col 6">
                                <button type="submit" name="submit" class="btn-large blue waves-effect waves-light">SIMPAN <i class="material-icons">done</i></button>
                            </div>
                            <div class="col 6">
                                <a href="?page=tsk" class="btn-large deep-orange waves-effect waves-light">BATAL <i class="material-icons">clear</i></a>
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
?>
