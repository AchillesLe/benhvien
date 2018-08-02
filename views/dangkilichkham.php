<?php include('header.php') ?>
<?php
    $conn = connection::_open();
    $sql = "SELECT * FROM tblkhoa";
    $khoa = mysqli_query($conn,$sql)->fetch_all(MYSQLI_ASSOC);
    connection::_close($conn);
?>
<div id="content-wrapper">
    <div class="container-fluid">
        <div class="card mb-3 dklichkham">
            <div class="card-header">
              <i class="fas fa-table"></i> Đăng kí lịch hẹn
            </div>
            <div class="card-body">
                <form id="form-appointment-schedule" method="POST" action="">
                    <div class="form-row">
                        <div class="form-group offset-md-2 col-md-8">
                            <label for="sel_khoa">Khoa</label>
                            <select name="sel_khoa" id="sel_khoa" class="form-control">
                                <option value="0">--------------------------Chọn khoa------------------------</option>
                                    <?php 
                                        foreach($khoa as $item){
                                            echo "<option value='{$item['id']}'>{$item['tenKhoa']}</option>";
                                        }
                                    ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group offset-md-2 col-md-6">
                            <label for="sel_bacsi">Bác sĩ</label>
                            <select name="sel_bacsi" id="sel_bacsi" class="form-control">
                                <option value="0">------ Khoa tự sắp xếp ------</option> 
                            </select>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group offset-md-2 col-md-6">
                            <label for="sel_khoa">Ngày khám</label>
                            <input type="text" class="form-control" name="txt_ngaykham" id="txt_ngaykham"   placeholder="dd/mm/yyyy">
                        </div>
                        <div class="form-group col-md-2">
                            <label for="sel_time">Giờ khám</label>
                            <select name="sel_time" class="form-control">
                                <option value="0">--Chọn--</option>
                                <?php 
                                    foreach($array_time as $time){
                                        echo "<option value={$time}>{$time}</option>";
                                    }
                                ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group offset-md-2 col-md-6">
                            <label for="sel_bacsi">Số điện thoại</label>
                            <input type="text" class="form-control" id="txt_sdt" name="txt_sdt" placeholder="Số điện thoại">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group offset-md-2 col-md-8">
                            <label for="txt_reason">Nguyên nhân / Triệu chứng &nbsp;&nbsp;( Tối đa 300 kí tự )</label>
                            <textarea class="form-control" name="txt_reason" rows="3"></textarea>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group offset-md-2 col-md-4">
                            <input class="form-control" id="txt_sdt" name="submit" hidden>
                            <button type="button" class="btn btn-primary bnt-appointment-schedule">Tạo lịch hẹn</button>
                        </div>
                    </div>
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
    // $("#sel_bacsi").chosen({});
        $('#form-appointment-schedule').validate({
        rules: {
            txt_reason:{
                required:true,
                maxlength : 300,
                minlength:3
            },
            txt_sdt :{
                required:true,
                number: true,
                maxlength : 11,
                minlength:10
            },

        },
        messages:{
            txt_reason:{
                required:"Vui lòng nhập !",
                maxlength : "Nhập tối đa 300 kí tự !",
                minlength : "Nhập tối đa 3 kí tự !",
            },
            txt_sdt :{
                required: "Vui lòng nhập !",
                number:"Phải là số !",
                minlength: "Nhập ít nhất 10 kí tự !",
                maxlength: "Nhập tối đa 11 kí tự !"
            },
        },
        errorClass: "label-danger",
        errorPlacement: function(error, element) {
            error.insertAfter(element);
        }
    });
    $('.bnt-appointment-schedule').on('click',function(){
        if($('.form-appointment-schedule').valid() == false )
            return;
        $('.form-appointment-schedule').submit();
    });
</script>
