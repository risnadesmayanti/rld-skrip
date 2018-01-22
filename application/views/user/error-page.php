<div class="container" >
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Form Login</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      
        <div class="row">
          <div class="col-lg-12 mx-auto">
            <div class="modal-body">
              <div class="alert alert-warning alert-dismissible"><?php echo validation_errors(); ?></div>
              
              <?php echo form_open('index.php/login/proses_tambah_user'); ?>
              <!-- <form action="<?php //echo base_url(). 'index.php/login/proses_tambah_user'; ?>" role="form" method="post"> -->
                <div class="form-group">
               <label for="masukkanNama">Nama Pengguna : </label> 
               <input type="text" name="username" class="form-control" placeholder="Masukkan nama anda"><br>
                  
                </div>
                <div class="form-group">
                <label for="masukkanJabatan">Jabatan :</label>
                <input type="text" name="jabatan" class="form-control" placeholder="Masukkan jabatan anda saat ini"><br>
                  
                </div>
                <!-- Bagian Validasi -->
                  
                <div class="form-group">
                  <table>
                    <th class="warning">Pertanyaan 1</th>
                      <th class="warning">Pertanyaan 2</th>
                      <th class="warning">Pertanyaan 3</th>
                    <tr class=" ">
                      <td>
                        <p>Apakah anda pernah mengikuti proses perencanaan strategis sistem informasi untuk organisasi ?</p>
                        <input type="radio" name="a1" value=1>Ya, pernah <br>
                        <input type="radio" name="a1" value=0>Tidak <br>
                      </td>
                      <td>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.?</p>
                        <input type="radio" name="a2" value=1>Ya, pernah <br>
                        <input type="radio" name="a2" value=0>Tidak <br>                            
                      </td>
                      <td>
                        <p>Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero</p>
                        <input type="radio" name="a3" value=1>Ya, pernah <br>
                        <input type="radio" name="a3" value=0>Tidak <br>                          
                      </td>
                    </tr>
                  </table>
                  
              
                </div>  
          <!-- end of bagian validasi -->
              
            </div>
          </div>
        </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <input type="submit" name="submit">
      </div>
      </div>
              <?php form_close(); ?>
      
    </div>