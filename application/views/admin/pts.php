    <div id="wrapper">

        <!-- Navigation -->
       
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Maturity Level Perguruan Tinggi Swasta</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        <div class="row">
                <div class="col-lg-12">
                   <div class="panel panel-default">
                       <div class="panel-heading">
                           Perguruan Tinggi Swasta
                       </div>
                       <div class="panel-body">
                            <div class="col-lg-12">
                                <div id="containerpts" style="margin: 0;"></div>
                                
                            </div>
                            <h3>Indikator Penghambat</h3>
                             <hr style="border-top: 2px solid #000;">
                            
                            <?php $key=0;$abjad = ['A','B','C','D','E','F', 'G'];for($no=1;$no<=6;$no++){ ?>
                             <div class="row">
                               <div class="col-md-4"><div id="pts<?php echo $no; ?>" style="margin: 0;"></div>
<<<<<<< HEAD
                             
                             </div>

=======
                               Keterangan :<br>
                            <p style="font-size: 11px">
                            <?php $abjkey=0;foreach($indikator as $key=>$x){ ?>
                            <?php if($x['idf'] == $no){?>
                            <?php  echo $abjad[$abjkey++].":  ".$x['indicator']; ?><br>
                            <?php } ?>
                            <?php } //echo $key;?>
                            </p>
                             </div>
>>>>>>> a77339ee3432c8f319fea8f2e9acb4e169e3743f
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
                                      <td><?php echo $row['kondisi']; ?></td>
                                      <td><?php echo $row['goal']; ?></td>
                                      <td><?php echo $row['strategi']; ?></td>
                                    </tr>
                                    <?php } ?>
                                   </tbody>
                                 </table>   
                               </div>
                             </div>
                             <hr style="border-top: 2px solid #000;">

                            <?php }} ?>
                       </div>
                   </div>
               </div>
            </div>
        </div>
            <!-- /.row -->
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
