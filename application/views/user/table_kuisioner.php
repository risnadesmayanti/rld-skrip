   <div class="table-responsive">
            <table class="table table-striped" border="1">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Komponen Penilaian</th>
                        <th colspan="5"><center>Jawaban</center></th>
                    </tr>
                </thead>
                <tbody>
		<?php foreach ($indikator_luftman as $i_luftman) { ?>
                    <tr>
                    	
                        <td><?php echo $i_luftman['id'] ?></td>
                        <td><?php echo $i_luftman->['indicator'] ?></td>
                        <td><input type="radio" name="a1"> IT management not aware</td>
                        <td><input type="radio" name="a1"> Limited IT Awareness</td>
                        <td><input type="radio" name="a1"> Senior and Mid Management</td>
                        <td><input type="radio" name="a1"> Pushed down through organization</td>
                        <td><input type="radio"> Pervasive</td>
                    </tr>
                    <?php } ?>
               <!--      <tr>
                        <td>2</td>
                        <td>UNDERSTANDING OF IT BY BUSINESS</td>
                        <td><input type="radio" name="a2"> IT management not aware</td>
                        <td><input type="radio" name="a2"> Limited IT Awareness</td>
                        <td><input type="radio" name="a2"> Senior and Mid Management</td>
                        <td><input type="radio" name="a2"> Pushed down through organization</td>
                        <td><input type="radio" name="a2"> Pervasive</td>
                    </tr> -->
           
                </tbody>
            </table>
          </div>