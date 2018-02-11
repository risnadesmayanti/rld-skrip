    <div id="wrapper">

        <!-- Navigation -->
       
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Maturity Level Perguruan Tinggi Negeri</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->

            <div class="row">
               <div class="col-lg-12">
                   <div class="panel panel-default">
                       <div class="panel-heading">
                           Perguruan Tinggi Negeri
                       </div>
                       <div class="panel-body">
                            <div class="col-lg-12">
                                <div id="batangpts" style="margin: 0;"></div>
                            </div>
                            <h3>Maturity Level Setiap Faktor</h3>
                            <?php $faktor = [1=>'Komunikasi', 2=>'Kompetensi', 3=>'Tata Kelola', 4=>'Kerjasama',
                        5=>'Arsitektur dan Ruang Lingkup', 6=>'Kemampuan'];
                        for($no=1;$no<=6;$no++){ ?>
                             <div class="row">
                               <div class="col-md-2">
                                <h3>Faktor <?php echo $faktor[$no]; ?></h3>
                              </div>
                               <div class="col-md-10">
                                <div id="bts<?php echo $no; ?>" style="margin: 0;"></div>
                               </div>
                             </div>
                            <?php } ?>
                       </div>
                   </div>
               </div>
        </div>
        </div>
            <!-- /.row -->
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
