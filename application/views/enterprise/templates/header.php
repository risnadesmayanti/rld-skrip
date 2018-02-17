<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Readiness Level Definition Enterprises</title>

    <!-- Bootstrap Core CSS -->
    <link href="<?php echo base_url(); ?>assets/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<?php echo base_url(); ?>assets/admin/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<?php echo base_url(); ?>assets/admin/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="<?php echo base_url(); ?>assets/admin/vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<?php echo base_url(); ?>assets/admin/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0;">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.html">Aplikasi Tingkat Kesiapan TI Organisasi</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li><a href="#myModal" data-toggle="modal" data-target="#myModal"><i class="fa fa-info-circle fa-fw" style="font-size: 18px;"></i></a>
             
                <!-- /.dropdown -->
             </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                          
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="<?php echo site_url('index.php/enterprise') ?>"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                         <li class="active">
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Diagram Setiap Indikator <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<?php echo site_url('index.php/enterprise/komunikasi') ?>">Indikator Komunikasi</a>
                                </li>
                                <li>
                                    <a href="<?php echo site_url('index.php/enterprise/nilai') ?>">Indikator Nilai dan Kompetensi</a>
                                </li>
                                <li>
                                    <a href="<?php echo site_url('index.php/enterprise/tkelola') ?>">Indikator Tata Kelola</a>
                                </li>
                                <li>
                                    <a href="<?php echo site_url('index.php/enterprise/mitra') ?>">Indikator Kemitraan</a>
                                </li>
                                <li>
                                    <a href="<?php echo site_url('index.php/enterprise/arsitektur') ?>">Indikator Ruang Lingkup dan Arsitektur</a>
                                </li>
                                <li>
                                    <a href="<?php echo site_url('index.php/enterprise/kemampuan') ?>">Indikator Kemampuan</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>

<!--                        <li>
     <a href="#"><i class="fa fa-table fa-fw"></i> Tabel Responden<span class="fa arrow"></span></a>
     <ul class="nav nav-second-level">
         <li>
             <a href="flot.html">Perguruan Tinggi</a>
         </li>
         <li>
             <a href="morris.html">Non Perguruan Tinggi</a>
         </li>
     </ul>
 </li>
 <li>
     <a href="#"><i class="fa fa-wrench fa-fw"></i> Indikator Penilaian<span class="fa arrow"></span></a>
     <ul class="nav nav-second-level">
         <li>
             <a href="panels-wells.html">Lihat Daftar Indikator Penilaian</a>
         </li>
         <li>
             <a href="buttons.html">Tambah Indikator Penilaian</a>
         </li>
     </ul>
 </li> -->
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>