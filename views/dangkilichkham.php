<?php include('header.php') ?>
<?php
    $conn = connection::_open();
    $sql = "SELECT * FROM tblbacsi";
    $data = mysqli_query($conn,$sql)->fetch_all(MYSQLI_ASSOC);
    connection::_close($conn);
?>
<div id="content-wrapper">
    <div class="container-fluid">
        <div class="card mb-3 dklichkham">
            <div class="card-header">
              <i class="fas fa-table"></i> Đăng kí lịch hẹn
            </div>
            <div class="card-body">
            <form>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="sel_khoa">Khoa</label>
                        <select name="sel_khoa" class="form-control">
                            <option value="1">1</option>
                        </select>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="sel_bacsi">Bác sĩ</label>
                        <select name="sel_bacsi" id="sel_bacsi" class="form-control">
                            <option>---------------------Auto---------------------</option>
                            <?php 
                                foreach($data as $bacsi){
                                    echo "<option value='{$bacsi['id']}'>{$bacsi['tenBacsi']}</option>";
                                }
                            ?>
                        </select>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="sel_khoa">Ngày khám</label>
                        <input type="text" class="form-control" name="txt_ngaykham" id="txt_ngaykham"   placeholder="dd/mm/yyyy">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="sel_bacsi">Bác sĩ</label>
                        <select name="sel_bacsi" class="form-control">
                            <option value="1">1</option>
                        </select>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                    <label for="inputCity">City</label>
                    <input type="text" class="form-control" id="inputCity">
                    </div>
                    <div class="form-group col-md-4">
                    <label for="inputState">State</label>
                    <select id="inputState" class="form-control">
                        <option selected>Choose...</option>
                        <option>...</option>
                    </select>
                    </div>
                    <div class="form-group col-md-2">
                    <label for="inputZip">Zip</label>
                    <input type="text" class="form-control" id="inputZip">
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="gridCheck">
                    <label class="form-check-label" for="gridCheck">
                        Check me out
                    </label>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Sign in</button>
            </form>
            </div>
        </div>
    </div>
</div>

<?php include('footer.php') ?>
<script>
    var options_Y_M_D = {
        format: 'dd/mm/yyyy',
        minViewMode: 'days',
        todayHighlight: true,
        autoclose: true,
        orientation: "auto right",
    };
    var date = new Date();
    var currdate =  date.getDate()+"/"+ (date.getMonth()+1) +"/"+date.getFullYear();
    $('#txt_ngaykham').datepicker(options_Y_M_D);
    $('#txt_ngaykham').data('datepicker').setStartDate(currdate);
    $("#sel_bacsi").chosen({});
</script>
