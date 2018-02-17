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
		<link href="<?php echo base_url(); ?>/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="<?php echo base_url(); ?>/assets/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

		<!-- Custom fonts for this template -->
		<link href="<?php echo base_url(); ?>/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
		<link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

		<!-- Custom styles for this template -->
		<link href="<?php echo base_url(); ?>/assets/css/agency.min.css" rel="stylesheet">
		<link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
		<link href="<?php echo base_url(); ?>assets/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="<?php echo base_url(); ?>assets/admin/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
		<link href="<?php echo base_url(); ?>assets/admin/dist/css/sb-admin-2.css" rel="stylesheet">
		<link href="<?php echo base_url(); ?>assets/admin/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<style>
@import url(http://fonts.googleapis.com/css?family=Roboto:500,100,300,700,400);
@import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);

fieldset, label { margin: 0; padding: 0; }
/* body{ margin: 20px; } */
/*h1 { font-size: 1.5em; margin: 10px; }
*/
/****** Style Star Rating Widget *****/

.rating { 
  border: none;
  float: left;
}

.rating > input { display: none; } 
.rating > label:before { 
  margin: 5px;
  font-size: 1.25em;
  font-family: FontAwesome;
  display: inline-table;
  content: "\f005";
}

.rating > .half:before { 
  content: "\f089";
  position: absolute;
}

.rating > label { 
  color: #ddd; 
 float: right; 
}

/***** CSS Magic to Highlight Stars on Hover *****/

.rating > input:checked ~ label, /* show gold star when clicked */
.rating:not(:checked) > label:hover, /* hover current star */
.rating:not(:checked) > label:hover ~ label { color: #FFD700;  } /* hover previous stars in list */

.rating > input:checked + label:hover, /* hover current star when changing rating */
.rating > input:checked ~ label:hover,
.rating > label:hover ~ input:checked ~ label, /* lighten current selection */
.rating > input:checked ~ label:hover ~ label { color: #FFED85;  } 
</style>
<!-- <link href="http://www.cssscript.com/wp-includes/css/sticky.css" rel="stylesheet" type="text/css"> -->
	

</head>
<body id="page-top">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 2%;background-color: #000000;">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html" style="color:white;">Aplikasi Tingkat Kesiapan TI Organisasi</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" style="color:white;">
                        <i class="fa fa-user fa-fw" style="color:white;"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#myModal" data-toggle="modal" data-target="#myModal"><i class="fa fa-user fa-fw"></i>Tentang Aplikasi</a>
                        </li>
                        <li><a href="#close" data-toggle="modal" data-target="#close"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->
</nav>
				<div class="container">
					<div class="alert alert-success">
						<p>Selamat datang, <strong><?php foreach ($user as $key) { echo $key->username." "; } ?> !</strong> silahkan isi penilaian tingkat kematangan penyelarasan strategi organisasi dan strategi Sistem Informasi dibawah ini                     
	                  	</p><br>
	                  </div>
					<div class="panel panel-default">
						<div class="panel-heading">
								 <h3 class="panel-title"><span class="fa fa-edit aria-hidden="true"></span>&nbsp;&nbsp;Daftar Penilaian Menggunakan Model Luftman </h3>
						</div>
						<div class="panel-body">
							<ul id="someTab" class="nav nav-tabs" role="tablist">
								<?php foreach ($faktor_luftman as $f_luftman) { ?>
<li role="presentation" class=""><a href="#<?php echo $f_luftman->href ?>" aria-controls="<?php echo $f_luftman->href ?>" role="tab" data-toggle="tab"><?php echo $f_luftman->factor ?></a></li>
								<?php } ?>
							</ul>
						<div class="tab-content">
	           <?php foreach ($faktor_luftman as $f_luftman) { ?>
							<div role="tabpanel" class="tab-pane" id="<?php echo $f_luftman->href; ?>">
								<div class="col-lg-12">
									<p align="justify"><br>
								<?php echo $f_luftman->descript."<br/>"; ?>
							</p>
								<br>
									<div class="table-responsive">
									<?php echo form_open('index.php/isi_kuisioner/process_measurement'); ?>
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>Komponen Penilaian</th>
												<th colspan="6">Pertanyaan Penilaian</th>
											</tr>
										</thead>
										<tbody>
										<?php foreach($faktor_indikator as $row){  
											if($row->idf == $f_luftman->id){?>
											<tr>
												<td>
													<?php echo $row->indicator; ?>
												</td>
												<td colspan="6"><?php echo $row->pertanyaan; ?></td>
											</tr>
											<?php foreach($indikator_likert as $row2){ 
												if($row2->idin == $row->id && $row2->idf == $f_luftman->id){?>
												<tr>
													<td></td>
													<td><?php echo $row2->descript; ?></td>
																			<td><input type="radio" name="a[<?php echo $row2->idin; ?>][<?php echo $row2->val; ?>]" value=1>  Belum ada, tidak sesuai dengan organisasi</td>
                                        <td><input type="radio" name="a[<?php echo $row2->idin; ?>][<?php echo $row2->val; ?>]" value=2>  Sesuai, hanya saja tingkatannya masih rendah</td>
                                        <td><input type="radio" name="a[<?php echo $row2->idin; ?>][<?php echo $row2->val; ?>]" value=3>  Moderat, sesuai untuk organisasi dalam tingkatan menengah</td>
                                        <td><input type="radio" name="a[<?php echo $row2->idin; ?>][<?php echo $row2->val; ?>]" value=4>  Sesuai, untuk sebagian besar organisasi</td>
                                        <td><input type="radio" name="a[<?php echo $row2->idin; ?>][<?php echo $row2->val; ?>]" value=5>  Tingkat kuat, sesuai di seluruh bagian organisasi</td>
												</tr>
											
											<?php }} ?>
										<?php }} ?>
										</tbody>
									</table>
                  <center><input type="submit" name="" value="Simpan Tanggapan" class="btn btn-sm btn-primary" alignment="center"></center>

									<?php echo form_close(); ?>
									</div>
								</div>
							</div>
							<?php } ?>
						</div>
						</div>
					</div>
				</div>
		
<div id="myModal" class="modal fade" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h5 class="modal-title"><span class="fa fa-info-circle aria-hidden="true"></span>&nbsp;&nbsp;Aplikasi Tingkat Kematangan Penyelarasan Strategi SI dan Organisasi</h5>
      </div>
      		<div class="modal-body">
            	<h3><center>ICT Readiness Level Definition Application</center></h3> 
            	<hr>
            	<p align="justify">
            		Aplikasi ini dibuat untuk kepentingan penelitian. Tujuan pembuatan aplikasi ini untuk mengetahui ukuran kematangan organisasi mengenai keselarasan strategi organisasi yang telah dibuat dengan strategi sistem informasi. Penilaian dilakukan dengan mengembangkan model kerangka kerja SAMM yang menilai 6 indikator / dimensi. Hasil pengukuran akan diperoleh setelah responden mengisi kuisioner ini. <b>Link URL yang tertera dalam isi halaman ini digunakan untuk mengakses hasil pengukuran tingkat kematangan organisasi.</b>
            	</p>
            </div>  
          <!-- end of bagian validasi -->
          <div class="modal-footer">
	        <h6 align="center">&copy;&nbsp;Copyright Risna Desmayanti <br> Ilmu Komputer - Universitas Pendidikan Indonesia</h6>
	        
	        <!-- <button type="button" class="btn btn-primary">Save changes</button> -->
	      </div>
      </div>
     
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<div class="modal fade" id="close" role="dialog" style="padding-top: 200px">
	    <div class="modal-dialog">
	      	<div class="modal-content">
	        	<div class="modal-body">
	        		<div class="alert alert-success" role="alert">
	        		<h1 align="center" style="font-size: 300%"><span class="fa fa-smile-o aria-hidden="true"></span></h1>
		          	<h5 align="center" style="color: grey;">Terimakasih Telah Mengisi Kuisioner ini !</h5>
		          	</div>
		          	
		          	 <table align="center" style="width: 550px;">
                    
                   <!--  <th class="warning">Pilih Jawaban untuk Pertanyaan di bawah ini :</th> -->
                   <tbody style="text-align: center;">
                    <tr class=" ">
                      <td colspan="3" width="200px">
                        <p align="center">Bagaimana Penilaian Anda tentang Aplikasi?</p>
                      </td>
                    </tr>
                    <tr>
                    	<td>Desain Antar Muka</td>
                    	<td>Pemahaman Terhadap Isi Kuisioner</td>
                    	<td>Kemudahan Pemakaian</td>
                    </tr>
                    <tr>
                    	<td>
                    		<!-- <h1>Pure CSS Star Rating Widget</h1> -->
							<fieldset class="rating">
							    <input type="radio" id="star5" name="rating1" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
							    <input type="radio" id="star4" name="rating1" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
							    <input type="radio" id="star3" name="rating1" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
							    <input type="radio" id="star2" name="rating1" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
							    <input type="radio" id="star1" name="rating1" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
							</fieldset>
                    	</td>
                  	<td>
							<fieldset class="rating">
							    <input type="radio" id="star5" name="rating2" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
							    <input type="radio" id="star4" name="rating2" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
							    <input type="radio" id="star3" name="rating2" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
							    <input type="radio" id="star2" name="rating2" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
							    <input type="radio" id="star1" name="rating2" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
							</fieldset>
                    	</td>
               <!--        	<td>
							<fieldset class="rating">
							    <input type="radio" id="star5" name="rating3" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
							    <input type="radio" id="star4" name="rating3" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
							    <input type="radio" id="star3" name="rating3" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
							    <input type="radio" id="star2" name="rating3" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
							    <input type="radio" id="star1" name="rating3" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
							</fieldset>
                    	</td> -->
                    	<!-- <td>
                    		<div class="stars">
								  <form action="">
								    <input class="star star-5" id="star-5" type="radio" name="star"/>
								    <label class="star star-5" for="star-5"></label>							
								    <input class="star star-4" id="star-4" type="radio" name="star"/>
								    <label class="star star-4" for="star-4"></label>
								    <input class="star star-3" id="star-3" type="radio" name="star"/>
								    <label class="star star-3" for="star-3"></label>
								    <input class="star star-2" id="star-2" type="radio" name="star"/>
								    <label class="star star-2" for="star-2"></label>
								    <input class="star star-1" id="star-1" type="radio" name="star"/>
								    <label class="star star-1" for="star-1"></label>
								  </form>								
							</div>
                    	</td>
                    	<td>
                    		<div class="stars">
								  <form action="">
								    <input class="star star-5" id="star-5" type="radio" name="star"/>
								    <label class="star star-5" for="star-5"></label>							
								    <input class="star star-4" id="star-4" type="radio" name="star"/>
								    <label class="star star-4" for="star-4"></label>
								    <input class="star star-3" id="star-3" type="radio" name="star"/>
								    <label class="star star-3" for="star-3"></label>
								    <input class="star star-2" id="star-2" type="radio" name="star"/>
								    <label class="star star-2" for="star-2"></label>
								    <input class="star star-1" id="star-1" type="radio" name="star"/>
								    <label class="star star-1" for="star-1"></label>
								  </form>								
							</div>
                    	</td>
                    	<td>
                    		<div class="stars">
								  <form action="">
								    <input class="star star-5" id="star-5" type="radio" name="star"/>
								    <label class="star star-5" for="star-5"></label>							
								    <input class="star star-4" id="star-4" type="radio" name="star"/>
								    <label class="star star-4" for="star-4"></label>
								    <input class="star star-3" id="star-3" type="radio" name="star"/>
								    <label class="star star-3" for="star-3"></label>
								    <input class="star star-2" id="star-2" type="radio" name="star"/>
								    <label class="star star-2" for="star-2"></label>
								    <input class="star star-1" id="star-1" type="radio" name="star"/>
								    <label class="star star-1" for="star-1"></label>
								  </form>								
							</div>
                    	</td> -->
                    </tr>
                    </tbody>
              		</table>
			    </div>
			    <div class="modal-footer">
			        <a href="<?php echo site_url() ?>" class="btn btn-default">Keluar</a>
		        </div>
	      	</div>
	      
	    </div>
  	</div>

	<!-- Modal -->
	<!-- Bootstrap core JavaScript -->
		<script src="<?php echo base_url(); ?>/assets/vendor/jquery/jquery.min.js"></script>
		<script src="<?php echo base_url(); ?>/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<!-- Plugin JavaScript -->
		<script src="<?php echo base_url(); ?>/assets/vendor/jquery-easing/jquery.easing.min.js"></script>
		<!-- Contact form JavaScript -->
		<script src="<?php echo base_url(); ?>/assets/js/jqBootstrapValidation.js"></script>
		<script src="<?php echo base_url(); ?>/assets/js/contact_me.js"></script>
		<!-- Custom scripts for this template -->
		<script src="<?php echo base_url(); ?>/assets/js/agency.min.js"></script>
		<script>
			$('#someTab').tab('show')
		</script>
</body>
</html>
