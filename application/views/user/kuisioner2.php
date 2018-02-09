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

</head>
<body id="page-top">

		<!-- Navigation -->
		<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav" style="background-color: #998675">
			<div class="container">
				<a class="navbar-brand" href="#page-top" style="font-family: helvetica; color: #ffffff; vertical-align: middle;">Aplikasi Penyelarasan Kondisi Perusahaan</a>
			</div>
		</nav>
				<div class="container">
					<div class="panel panel-primary">
						<div class="panel-heading">
								 <h3 class="panel-title"><span class="fa fa-edit aria-hidden="true"></span>&nbsp;&nbsp;Daftar Penilaian Menggunakan Model Luftman </h3>
						</div>
						<div class="panel-body">
							<ul id="someTab"class="nav nav-tabs" role="tablist">
								<?php foreach ($faktor_luftman as $f_luftman) { ?>
<li role="presentation" class=""><a href="#<?php echo $f_luftman->href ?>" aria-controls="<?php echo $f_luftman->href ?>" role="tab" data-toggle="tab"><?php echo $f_luftman->factor ?></a></li>
								<?php } ?>
							</ul>
						<div class="tab-content">
	           <?php foreach ($faktor_luftman as $f_luftman) { ?>
							<div role="tabpanel" class="tab-pane" id="<?php echo $f_luftman->href; ?>">
								<div class="col-lg-12">
								<?php echo $f_luftman->descript."<br/>"; ?>
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
