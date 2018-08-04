<?php include('header.php') ?>
    <div id="content-wrapper">

        <div class="container-fluid">
        <?php 
            $conn = connection::_open();
            $sql= "select * from tblbacsi";
            $result = mysqli_query($conn,$sql);
            connection::_close($conn);
        ?>

          <!-- DataTables Example -->
          <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-table"></i>
              Data Table Example</div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Ma</th>
                            <th>Tên</th>
                            <th>ngày sinh</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php 
                       while($item = mysqli_fetch_array($result)) {            
                            echo "<tr>";
                            echo "<td>".$item['id']."</td>";
                            echo "<td>".$item['ten']."</td>";
                            echo "<td>".$item['ngaySinh']."</td>";
                            echo "</tr>";
                        }
                    ?>
                    </tbody>
                </table>
              </div>
            </div>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
          </div>

        </div>
        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
        <footer class="sticky-footer">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright © Your Website 2018</span>
            </div>
          </div>
        </footer>

    </div>
      <!-- /.content-wrapper -->

<?php include('footer.php') ?>