<!doctype html>
<html>
<head>
	<!-- Page Header -->
  	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Readiness Level Definition - SISP</title>

    <!-- Bootstrap core CSS -->
    <link href="<?php echo base_url(); ?>assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- Custom fonts for this template -->
    <link href="<?php echo base_url(); ?>assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="<?php echo base_url(); ?>assets/css/agency.min.css" rel="stylesheet">
    <style type="text/css" media="screen">
    #mainNav {
      background-color: #998675;
    }
    </style>
</head>
<body id="page-top">
  
  <!-- Navigation -->

    <!-- Header -->
    <header class="masthead">
      <div class="container">
        <div class="intro-text">
          <div class="intro-heading text-uppercase">Selamat datang di aplikasi SISP !</div>
          <br>
          <div class="intro-lead-in" style="font-size: 25px;">Klik tombol dibawah <br>untuk mengisi !</div>
          <button class="btn btn-primary btn-xl text-uppercase" type="button" data-toggle="modal" data-target="#myModal">Mulai isi !</button>
        </div>
      </div>
    </header>

<div id="myModal" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Form Login</h4>
      </div>
      <div class="modal-body">
              <?php echo form_open('index.php/login/proses_tambah_user'); ?>
              <!-- <form action="<?php //echo base_url(). 'index.php/login/proses_tambah_user'; ?>" role="form" method="post"> -->
                <div class="form-group">
               <label for="masukkanNama">Nama Pengguna : </label> 
               <input type="text" name="username" class="form-control" placeholder="Masukkan nama anda" required=""><br>
                  
                </div>
                <div class="form-group">
                <label for="masukkanJabatan">Jabatan Pekerjaan :</label>
                <!-- <input type="text" name="jabatan" class="form-control" placeholder="Masukkan jabatan anda saat ini"><br> -->
                <select class="form-control" name="divisi" required="">
                    <!-- fungsional -->
                    <option value="" disabled selected hidden>Pilih jabatan posisi anda saat ini </option>
                    <optgroup label="Bidang akademik, perencanaan dan kerjasama">
                      
                      <option value="Bagian Akademik dan Statistik">Bagian Akademik dan Statistik</option>
                      <option value="Bagian Kemahasiswaan dan Humas">Bagian Kemahasiswaan dan Humas</option>
                      <option value="Bagian Perencanaan dan Kerjasama">Bagian Perencanaan dan Kerjasama</option>
                    </optgroup>
                    <optgroup label="Bidang umum dan keuangan">
                    <option value="Bagian Umum dan Keuangan">Bagian Umum dan Keuangan</option>
                    <option value="Bagian Kepegawaian">Bagian Kepegawaian</option>
                    <option value="Bagian Keuangan">Bagian Keuangan</option>
                    <option value="Bagian Tata Usaha">Bagian Tata Usaha</option>
                  </optgroup>
                    <!-- end of fungsional -->
                </select>
          
                  
                </div>
                <!-- Bagian Validasi -->
                  
                <div class="form-group">
                  <table>
                    <br>
                    <th class="warning">Pilih Jawaban untuk Pertanyaan di bawah ini :</th>
                    <tr class=" ">
                      <td>
                        <p>Apakah anda pernah mengikuti proses perencanaan strategis sistem informasi untuk organisasi ?</p>
                        <div class="radio">
                          <label>
                        <input type="radio" name="a1" value=1 required="">Ya, pernah <br>
                          </label>
                        </div>
                        <div class="radio">
                          <label>
                        <input type="radio" name="a1" value=0>Tidak<br>
                          </label>
                        </div>
                      </td>
                    </tr>
                    <tr class=" ">
                      <td>
                        <p>Termasuk ke dalam kategori mana enterprise / organisasi anda?</p>
                        <div class="radio">
                          <label>
                            <input type="radio" name="e1" value=1 required="">Perguruan Tinggi Negeri<br>
                          </label>
                        </div>
                        <div class="radio">
                          <label>
                            <input type="radio" name="e1" value=2>Perguruan Tinggi Swasta<br>
                          </label>
                        </div>
                       <!--  <input type="radio" name="e1" value=3>Bidang Kesehatan<br>
                        <input type="radio" name="e1" value=4>Bidang Pariwisata<br>
                        <input type="radio" name="e1" value=5>Bidang Pemerintahan<br> -->
                      </td>
                    </tr>
                  </table>
              <?php form_close(); ?>
                </div>  
          <!-- end of bagian validasi -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <input type="submit" name="Simpan" value="Submit" class="btn btn-default">
        <!-- <button type="button" class="btn btn-primary">Save changes</button> -->
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
	<!-- Modal -->
  
  <script>
function inputUserForm(){
    var reg = /^[A-Z0-9._%+-]+@([A-Z0-9-]+\.)+[A-Z]{2,4}$/i;
    var nama = $('#masukkanNama').val();
    var jabatan = $('#masukkanJabatan').val();
    
    if(nama.trim() == '' ){
  alert('Masukkan nama Anda.');
        $('#masukkanNama').focus();
  return false;
 }else if(jabatan.trim() == '' ){
  alert('Masukkan informasi jabatan anda saat ini.');
        $('#masukkanJabatan').focus();
  return false;
 }else{
}
</script>


	<!-- Bootstrap core JavaScript -->
    <script src="<?php echo base_url(); ?>assets/vendor/jquery/jquery.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="<?php echo base_url(); ?>assets/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Contact form JavaScript -->
    <script src="<?php echo base_url(); ?>assets/js/jqBootstrapValidation.js"></script>
    <script src="<?php echo base_url(); ?>assets/js/contact_me.js"></script>

    <!-- Custom scripts for this template -->
    <script src="<?php echo base_url(); ?>assets/js/agency.min.js"></script>

</body>
</html>