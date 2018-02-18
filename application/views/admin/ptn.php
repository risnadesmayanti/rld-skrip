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
                                <div id="container2" style="margin: 0;"></div>
                            </div>
                            <h3>Indikator Penghambat</h3>
                            <?php for($no=1;$no<=6;$no++){ ?>
                             <div class="row">
                               <div class="col-md-4"><div id="pt<?php echo $no; ?>" style="margin: 0;"></div>
                             </div>
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
                                    <?php $i=1;if(isset($penghambat[$no])){foreach($penghambat[$no] as $row){ ?>
                                    <tr>
                                      <td><?php echo $i++; ?></td>
                                      <td><?php echo $row['nama']; ?></td>
                                      <td><?php echo $row['level']; ?></td>
                                      <td></td>
                                      <td></td>
                                      <td></td>
                                    </tr>
                                    <?php }}else{ ?>
                                    <tr class="success">
                                      <td>-</td>
                                      <td>-Tidak ada indikator penghambat-</td>
                                      <td>-</td>
                                      <td>-</td>
                                      <td>-</td>
                                      <td>-</td>
                                    </tr>
                                    <?php } ?>
                                   </tbody>
                                 </table>   
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
