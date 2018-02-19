    <div id="wrapper">

        <!-- Navigation -->
       
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Maturity Level Indikator Komunikasi</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->

            <div class="row">
               <div class="col-lg-12">
                   <div class="panel panel-default">
                       <div class="panel-heading">
                           Hasil Penilaian
                       </div>
                       <div class="panel-body">
                            <div class="col-lg-12">
                                <div id="container2" style="margin: 0;"></div>
                            </div>
                            <h3>Indikator Penghambat</h3>
                             <div class="row">
                               <div class="col-md-4"><div id="pt" style="margin: 0;"></div></div>
                               <div class="col-md-8">
                                 <table class="table table-bordered">
                                   <thead>
                                     <tr class="success">
                                       <th rowspan="2">No.</th>
                                       <th rowspan="2">Nama Indikator</th>
                                       <th colspan="2">Tingkat Saat ini</th>
                                       <th rowspan="2">Sasaran</th>
                                       <th rowspan="2">Strategi</th>
                                     </tr>
                                     <tr class="success">
                                       <th>Level</th>
                                       <th>Kondisi</th>
                                     </tr>
                                   </thead>
                                   <tbody>
                                    <?php $i=1;if(isset($penghambat)){foreach($penghambat as $row){ ?>
                                    <tr>
                                      <td><?php echo $i++; ?></td>
                                      <td><?php echo $row['nama']; ?></td>
                                      <td><?php echo $row['level']; ?></td>
                                      <td></td>
                                      <td></td>
                                      <td></td>
                                    </tr>
                                    <?php } ?>
                                   </tbody>
                                 </table>   
                               </div>
                             </div>
                            <!-- <?php } ?> -->
                       </div>
                   </div>
               </div>
        </div>
        </div>
            <!-- /.row -->
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
