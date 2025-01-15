<?php
    //cek session
    if(!empty($_SESSION['admin'])){
?>

<noscript>
    <meta http-equiv="refresh" content="0;URL='./enable-javascript.html'" />
</noscript>

<!-- Footer START -->
<footer class="page-footer">
    <div class="container">
           <div class="row">
               <br/>
           </div>
    </div>
    <div class="footer-copyright blue-grey darken-1 white-text">
        <div class="container" id="footer">
            <?php
                $query = mysqli_query($config, "SELECT * FROM tbl_instansi");
                while($data = mysqli_fetch_array($query)){
            ?>
                <span>&copy; <?php echo date("Y"); ?> <?php echo $data['nama'] .'</span>
                ';?>
            <?php } ?>
        </div>
    </div>
</footer>
<!-- Footer END -->

<!-- Javascript START -->
<script type="text/javascript" src="asset/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="asset/js/materialize.min.js"></script>
<script type="text/javascript" src="asset/js/bootstrap.min.js"></script>
<script type="text/javascript" src="asset/js/jquery.autocomplete.min.js"></script>
<script data-pace-options='{ "ajax": false }' src='asset/js/pace.min.js'></script>

<!-- DataTables CSS -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">

<!-- jQuery and DataTables JS --
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script-->
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
    
    $('#dataTable').DataTable({
        columnDefs: [
        { orderable: false, targets: -1 } // Excludes the last column
        ],
        ordering: true,
        paging: false,     // Disables pagination (removes "Show Entries")
        searching: false,  // Disables the search box
        info: false        // Removes "Showing X to Y of Z entries"
        
  });
    
    //jquery dropdown
    $(".dropdown-button").dropdown({ hover: false });

    //jquery sidenav on mobile
    $('.button-collapse').sideNav({
        menuWidth: 240,
        edge: 'left',
        closeOnClick: true
    });

    //jquery datepicker
    $('#tgl_surat,#batas_waktu,#dari_tanggal,#sampai_tanggal').pickadate({
        selectMonths: true,
        selectYears: 10,
        format: "yyyy-mm-dd"
    });

    //jquery teaxtarea
    $('#isi_ringkas').val('');
    $('#isi_ringkas').trigger('autoresize');

    //jquery dropdown select dan tooltip
    $('select').material_select();
    $('.tooltipped').tooltip({delay: 10});

    //jquery autocomplete
    $( "#divisi" ).autocomplete({
        serviceUrl: "kdivisi.php",   // Kode php untuk prosesing data.
        dataType: "JSON",           // Tipe data JSON.
        onSelect: function (suggestion) {
            $( "#divisi" ).val(suggestion.kode);
        }
    });
    $( "#kode" ).autocomplete({
        serviceUrl: "kode.php",   // Kode php untuk prosesing data.
        dataType: "JSON",           // Tipe data JSON.
        onSelect: function (suggestion) {
            $( "#kode" ).val(suggestion.kode);
        }
    });

    //jquery untuk menampilkan pemberitahuan
    $("#alert-message").alert().delay(5000).fadeOut('slow');

    //jquery modal
    $('.modal-trigger').leanModal();
 });

</script>
<!-- Javascript END -->

<?php
    } else {
        header("Location: ../");
        die();
    }
?>
