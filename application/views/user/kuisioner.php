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
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav" style="background-color: black">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top" style="font-family: helvetica; color: #ffffff; vertical-align: middle;">Aplikasi Penyelarasan Kondisi Perusahaan</a>
       
      </div>
    </nav>

    <!-- Header -->
    <!-- <header class="masthead"> -->
      <div class="container" style="">
        <div class="row">
          <div class="col-lg-12">
            <div class="panel panel-primary">
              <div class="panel-heading">
                  <h3 class="panel-title"><span class="fa fa-edit aria-hidden="true"></span>&nbsp;&nbsp;Daftar Penilaian Menggunakan Model Luftman</h3>
              </div>
  
              <div class="panel-body">
                <ul class="nav nav-tabs">
                     <?php foreach ($faktor_luftman as $f_luftman) { ?>
                   <li role="presentation" class=""><a data-toggle="tab" href="#<?php echo $f_luftman->href ?>" aria-controls="#<?php echo $f_luftman->href ?>" role="tab"><?php echo $f_luftman->factor ?></a></li>               
                    <?php } ?>
                </ul>
                <!-- Tab Komunikasi -->
                <?php foreach ($faktor_luftman as $f_luftman) { ?>
                <div class="tab-content">
                  <div role="tabpanel" id="<?php echo $f_luftman->href ?>" class="tab-pane" style="padding-top: 20px;">
                    <div class="col-md-12">
                     <?php echo $f_luftman->descript."<br>" ?>
                     <br>
                     <div class="table-responsive">
            <table class="table table-striped" border="1">
                <thead>
                    <tr>
                        
                        <th>Komponen Penilaian</th>
                        <th colspan="5"><center>Jawaban</center></th>
                    </tr>
                </thead>


                     <?php foreach($faktor_indikator as $row){ 
                        //jika sama
                      if($row->idf == $f_luftman->id){ ?>
                      <tr>
                        <td><?php echo $row->indicator; ?></td>
                        <?php foreach($indikator_likert as $row2){
                          if($row2->idin == $row->id){ ?>
                      <?php //var_dump($row2); ?>
                            <?php if($row2->idf == $f_luftman->id){ ?>
                            <td><input type="radio" name="a<?php echo $row2->idin; ?>"><?php echo $row2->id; ?><?php echo $row2->descript; ?></td>
                            <?php } ?>
                          <?php } ?>
                       <?php } ?>
                      <?php }
                    } ?>
                      </tr>
                     </table>
                     <p><a class="btn btn-primary btn-lg" href="" target="_blank" role="button" style="vertical-align: right">Simpan Jawaban ! </a></p>
                    </div>
                  </div>
                <!-- end of tab kompetensi -->
                </div>
                         <?php } ?>
                </div>
        </div>
      </div>
    <!-- </header> -->
  
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
</body>
</html>
