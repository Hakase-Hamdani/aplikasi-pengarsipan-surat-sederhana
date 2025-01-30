<?php
    //cek session
    if(empty($_SESSION['admin'])){
        $_SESSION['err'] = '<center>Anda harus login terlebih dahulu!</center>';
        header("Location: ./");
        die();
    } else {

        echo '
        <style type="text/css">
            .hidd {
                display: none
            }
            @media print{
                body {
                    font-size: 12px!important;
                    color: #212121;
                }
                .disp {
                    text-align: center;
                    margin: -.5rem 0;
                    width: 100%;
                }
                nav {
                    display: none
                }
                .hidd {
                    display: block
                }
                .logodisp {
                    position: absolute;
                    width: 80px;
                    height: 80px;
                    left: 50px;
                    margin: 0 0 0 1.2rem;
                }
                .up {
                    font-size: 17px!important;
                    font-weight: normal;
                    margin-top: 45px;
                    text-transform: uppercase
                }
                #nama {
                    font-size: 20px!important;
                    text-transform: uppercase;
                    margin-top: 5px;
                    font-weight: bold;
                }
                .status {
                    font-size: 17px!important;
                    font-weight: normal;
                    margin-top: -1.5rem;
                }
                #alamat {
                    margin-top: -15px;
                    font-size: 13px;
                }
                .separator {
                    border-bottom: 2px solid #616161;
                    margin: 1rem 0;
                }
            }
        </style>';

        if(isset($_REQUEST['submit'])){
            //
            //Untuk mengambil data
            //
            $JOIN = $_REQUEST['JOIN'];
            $dari_tanggal = $_REQUEST['dari_tanggal'];
            $sampai_tanggal = $_REQUEST['sampai_tanggal'];

            if($_REQUEST['dari_tanggal'] == "" || $_REQUEST['sampai_tanggal'] == "" || $_REQUEST['JOIN'] == ""){
                header("Location: ./admin.php?page=sk");
                die();
            } else {

                    //
                    // UNTUK MENENTUKAN JOIN
                    //

                    if($_REQUEST['JOIN'] == "1"){ //Hitung Masuk
                        $JOIN = "SELECT 
                                    d.kode AS division_code,
                                    d.nama AS division_name,
                                    COUNT(s.id_surat) AS total_letters
                                FROM tbl_divisi d
                                LEFT JOIN tbl_surat_masuk s ON d.kode = s.divisi
                                AND s.tgl_surat BETWEEN '2024-01-01' AND '2025-12-31'
                                GROUP BY d.kode, d.nama
                                ORDER BY total_letters DESC;";
                        $IsHitung = "Masuk";
                    } else {  //Hitung Keluar
                        $JOIN = "SELECT 
                                    d.kode AS division_code,
                                    d.nama AS division_name,
                                    COUNT(s.id_surat) AS total_letters
                                FROM tbl_divisi d
                                LEFT JOIN tbl_surat_keluar s ON d.kode = s.divisi
                                AND s.tgl_surat BETWEEN '2024-01-01' AND '2025-12-31'
                                GROUP BY d.kode, d.nama
                                ORDER BY total_letters DESC;";
                        $IsHitung = "Keluar";
                    }
                    
                    //
                    // Kueri untuk mengambil data berdasarkan tanggal dan kode.
                    //
                    
                $sql = $JOIN;
                               
                $query = mysqli_query($config, $sql);

                $query2 = mysqli_query($config, "SELECT nama FROM tbl_instansi");
                list($nama) = mysqli_fetch_array($query2);

                echo '
                    <!-- SHOW DAFTAR AGENDA -->
                    <!-- Row Start -->
                    <div class="row">
                        <!-- Secondary Nav START -->
                        <div class="col s12">
                            <div class="z-depth-1">
                                <nav class="secondary-nav">
                                    <div class="nav-wrapper blue-grey darken-1">
                                        <div class="col 12">
                                            <ul class="left">
                                                <li class="waves-effect waves-light"><a href="?page=sdc" class="judul"><i class="material-icons">print</i> Report Jumlah Surat Per Divisi<a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </nav>
                            </div>
                        </div>
                        <!-- Secondary Nav END -->
                    </div>
                    <!-- Row END -->

                    <!-- Row form Start -->
                    <!-- INI BUAT INPUT -->
                <form class="col s12" method="post" action="">
                    <div class="row jarak-form black-text">

                        
                        <!--Kode untuk menampikan dan mengisi dropdown dari database-->
                        

                        <label for="JOIN">Hitung Surat Masuk/Keluar?</label>
                        <select class="browser-default" name="JOIN" id="JOIN" required>
                                <option value="">Pilih salah satu</option>
                                <option value="1">Masuk</option>
                                <option value="2">Keluar</option>
                        
                        </select>
                    </div>
                    

                        
                        <div class="row jarak-form black-text">
                            <div class="input-field col s3">
                                <i class="material-icons prefix md-prefix">date_range</i>
                                <input id="dari_tanggal" type="text" name="dari_tanggal" id="dari_tanggal" required>
                                <label for="dari_tanggal">Dari Tanggal</label>
                            </div>
                            <div class="input-field col s3">
                                <i class="material-icons prefix md-prefix">date_range</i>
                                <input id="sampai_tanggal" type="text" name="sampai_tanggal" id="sampai_tanggal" required>
                                <label for="sampai_tanggal">Sampai Tanggal</label>
                            </div>
                        </div>
                        <div class="row jarak-form black-text">
                            <div class="col s13">
                                <br/><button type="submit" name="submit" class="btn-large blue waves-effect waves-light"> TAMPILKAN <i class="material-icons">visibility</i></button>
                            </div>
                        </div>
                    
                    </div>
                </form>
                    <!-- INI BUAT INPUT -->
                    <!-- Row form END -->

                    <div class="row agenda">
                        <div class="disp hidd">';

                            //
                            //Kode untuk menampilkan header report
                            //

                            $query2 = mysqli_query($config, "SELECT institusi, nama, status, alamat, logo FROM tbl_instansi");
                            list($institusi, $nama, $status, $alamat, $logo) = mysqli_fetch_array($query2);
                                echo '<img class="logodisp" src="./upload/'.$logo.'"/>';

                                echo '<h6 class="up">'.$institusi.'</h6>';

                                echo '<h5 class="nama" id="nama">'.$nama.'</h5><br/>';

                                echo '<h6 class="status">'.$status.'</h6>';

                                echo '<span id="alamat">'.$alamat.'</span>

                            </div>
                            <div class="separator"></div>
                            
                            <!--GANTI YANG DIBAWAH UNTUK TAMPILAN JUDUL REPORT-->
                            <h5 class="hid">Report Jumlah Surat Per Divisi</h5>
                        <div class="col s10">

                            <!--GANTI YANG DIBAWAH UNTUK TAMPILAN JUDUL REPORT-->
                            <p class="warna agenda">Report Jumlah <strong>Surat '. $IsHitung .'</strong> Per Divisi dari tanggal <strong>'.indoDate($dari_tanggal).'</strong> sampai dengan tanggal <strong>'.indoDate($sampai_tanggal).'</strong>.</p>
                        </div>
                        <div class="col s2">
                            <button type="submit" onClick="window.print()" class="btn-large deep-orange waves-effect waves-light right">CETAK <i class="material-icons">print</i></button>
                        </div>
                    </div>
                    <div id="colres" class="warna cetak">
                        <table class="bordered" id="tbl" width="100%">
                            <thead class="blue lighten-4">
                                <tr>
                                    <th width="10%">No.</th>
                                    <th width="25%">Kode Divisi</th>
                                    <th width="25%">Nama Divisi</th>
                                    <th width="15%">Total Surat</th>
                                </tr>
                            </thead>
                            <tbody>';

                            if(mysqli_num_rows($query) > 0){
                                $no = 0;
                                $i = 1;
                                while($row = mysqli_fetch_array($query)){
                                 echo '
                                    <tr>
                                        <td>'.$i++.'</td>
                                        <td>'.$row['division_code'].'</td>
                                        <td>'.$row['division_name'].'</td>
                                        <td>'.$row['total_letters'].'</td>';
                                 echo '
                                </tr>';
                                    }
                                } else {
                                    echo '<tr><td colspan="9"><center><p class="add">Tidak ada agenda surat</p></center></td></tr>';
                                } echo '
                            </tbody></table>
                        </div>
                    <div class="jarak2"></div>';
                }
        } else {
            echo '
                <!-- Row Start -->
                <div class="row">
                    <!-- Secondary Nav START -->
                    <div class="col s12">
                        <div class="z-depth-1">
                            <nav class="secondary-nav">
                                <div class="nav-wrapper blue-grey darken-1">
                                    <div class="col 12">
                                        <ul class="left">
                                            <li class="waves-effect waves-light"><a href="?page=sdc" class="judul"><i class="material-icons">print</i> Report Jumlah Surat Per Divisi<a></li>
                                        </ul>
                                    </div>
                                </div>
                            </nav>
                        </div>
                    </div>
                    <!-- Secondary Nav END -->
                </div>
                <!-- Row END -->

                <!-- Row form Start -->
                <!-- INI BUAT INPUT AWAL -->
                <form class="col s12" method="post" action="">
                    <div class="row jarak-form black-text">

                        
                        <!--Kode untuk menampikan dan mengisi dropdown dari database-->
                        

                        <label for="JOIN">Hitung Surat Masuk/Keluar?</label>
                        <select class="browser-default" name="JOIN" id="JOIN" required>
                                <option value="">Pilih salah satu</option>
                                <option value="1">Masuk</option>
                                <option value="2">Keluar</option>
                        
                        </select>
                    </div>
                    

                        
                        <div class="row jarak-form black-text">
                            <div class="input-field col s3">
                                <i class="material-icons prefix md-prefix">date_range</i>
                                <input id="dari_tanggal" type="text" name="dari_tanggal" id="dari_tanggal" required>
                                <label for="dari_tanggal">Dari Tanggal</label>
                            </div>
                            <div class="input-field col s3">
                                <i class="material-icons prefix md-prefix">date_range</i>
                                <input id="sampai_tanggal" type="text" name="sampai_tanggal" id="sampai_tanggal" required>
                                <label for="sampai_tanggal">Sampai Tanggal</label>
                            </div>
                        </div>
                        <div class="row jarak-form black-text">
                            <div class="col s13">
                                <br/><button type="submit" name="submit" class="btn-large blue waves-effect waves-light"> TAMPILKAN <i class="material-icons">visibility</i></button>
                            </div>
                        </div>
                    
                    </div>
                </form>
                <!-- INI BUAT INPUT -->
                <div class="jarak"></div>';
        }
    }
?>
