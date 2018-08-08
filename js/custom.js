$(document).ready(function() {
    
    $('#form-dangki').validate({
        rules: {
            txt_name: {
                required: true
            },
            rd_sex: {
                required:true
            },
            txt_address: {
                required:true
            },
            txt_birthday: {
                required:true
            },
            txt_bhyt: {
                number: true,
                maxlength : 15,
                minlength: 15
            },
            txt_cmt: {
                number: true,
                maxlength : 9,
                minlength: 9
            },
            txt_email: {
                required:true,
                email:true
            },
            txt_sdt :{
                required:true,
                number: true,
                maxlength : 11,
                minlength:10
            },
            txt_password: {
                required:true,
                minlength:6
            },
            txt_confirmPassword: {
                equalTo: "#txt_password",
                minlength: 6
            },
        },
        messages:{
            txt_name: {
                required: "Vui lòng nhập !"
            },
            rd_sex: {
                required: "Vui lòng chọn !"
            },
            txt_address: {
                required: "Vui lòng nhập !"
            },
            txt_birthday: {
                required: "Vui lòng nhập !"
            },
            txt_bhyt: {
                number:  "Phải là số !",
                minlength: "Không hợp lệ !",
                maxlength: "Không hợp lệ !"
            },
            txt_cmt: {
                number:  "Phải là số !",
                minlength: "Không hợp lệ !",
                maxlength: "Không hợp lệ !"
            },
            txt_email: {
                required: "Vui lòng nhập !",
                email:"Email không hợp lệ !"
            },
            txt_sdt :{
                required: "Vui lòng nhập !",
                number:"Phải là số !",
                minlength: "Không hợp lệ !",
                maxlength: "Không hợp lệ !"
            },
            txt_password: {
                required: "Vui lòng nhập !",
                minlength: "Nhập ít nhất 6 kí tự"
            },
            txt_confirmPassword: {
                equalTo: "Mật khẩu chưa khớp !"
            }
        },
        errorClass: "label-danger",
        errorPlacement: function(error, element) {
            if(element.attr("name")=="rd_sex"){
                error.insertAfter(element.parent().parent());
            }
            else
                error.insertAfter(element);
        }

    });
    $('#update-infor').validate({
        rules: {
            txt_name: {
                required: true
            },
            rd_sex: {
                required:true
            },
            txt_address: {
                required:true
            },
            txt_birthday: {
                required:true
            },
            txt_bhyt: {
                number: true,
                maxlength : 15,
                minlength: 15
            },
            txt_cmt: {
                number: true,
                maxlength : 9,
                minlength: 9
            },
            txt_email: {
                required:true,
                email:true
            },
            txt_sdt :{
                required:true,
                number: true,
                maxlength : 11,
                minlength:10
            },
            txt_pass: {
                required:true,
                minlength:6
            }
        },
        messages:{
            txt_name: {
                required: "Vui lòng nhập !"
            },
            rd_sex: {
                required: "Vui lòng chọn !"
            },
            txt_address: {
                required: "Vui lòng nhập !"
            },
            txt_birthday: {
                required: "Vui lòng nhập !"
            },
            txt_bhyt: {
                number:  "Phải là số !",
                minlength: "Không hợp lệ !",
                maxlength: "Không hợp lệ !"
            },
            txt_cmt: {
                number:  "Phải là số !",
                minlength: "Không hợp lệ !",
                maxlength: "Không hợp lệ !"
            },
            txt_email: {
                required: "Vui lòng nhập !",
                email:"Không hợp lệ !"
            },
            txt_sdt :{
                required: "Vui lòng nhập !",
                number:"Phải là số !",
                minlength: "Không hợp lệ !",
                maxlength: "Không hợp lệ !"
            },
            txt_pass: {
                required: "Vui lòng nhập !",
                minlength: "Không hợp lệ !"
            },
        },
        errorClass: "label-danger",
        errorPlacement: function(error, element) {
            if(element.attr("name")=="rd_sex"){
                error.insertAfter(element.parent().parent());
            }
            else
                error.insertAfter(element);
        }
    });
    $('.btn-dangki').on('click',function(){
        if( $('#form-dangki').valid() == false){
            return;
        }
        $('#form-dangki').submit();
    });
    $('#btn-update-infor').on('click',function(){
        if( $('#update-infor').valid() == false){
            return;
        }
        $('#update-infor').submit();
    });
    function resetUI_lichkham(element){
        $('#message-lichkham').html("");
        $('#sel_time').empty();
        $('#sel_time').append('<option value="0">-chọn-</option>');
        if(element.id =='sel_khoa'){
            $('#txt_ngaykham').val('');
            $('select#sel_bacsi').empty();
            $('select#sel_bacsi').append('<option value="0">------ Khoa tự sắp xếp ------</option> ');
        }else if( element.id =='sel_bacsi' ){
            $('#txt_ngaykham').val('');
            $('#sel_time').empty();
            $('#sel_time').append('<option value="0">-chọn-</option>');
        }
    }
    $('#sel_khoa').on('change',function(){
        resetUI_lichkham(this);
        var id = $(this).val();
        $.ajax({
            url:'/get-bacsi-by-idKhoa',
            type:'POST',
            dataType:'json',
            data:{nameRequest:100,idkhoa:id},
            success:function(result) {
                if(result.success){
                    $.each( result.data , function(index,element){
                        var html = "<option value='"+element.id+"'>"+element.ten+"</option>";
                        $('select#sel_bacsi').append(html);
                    });
                }
            }
        });
    });
    $('#sel_bacsi').on('change',function(){
        resetUI_lichkham(this);
    });
    $('#txt_ngaykham').on('change',function(){
        resetUI_lichkham(this);
        if($('#sel_khoa').val() == 0){
            alert("Vui lòng chọn khoa");
            $('#txt_ngaykham').val("");
            return;
        }
        $ngay =  $(this).val();
        var res = $ngay.split('/');
        $newngay = res[1]+"/"+res[0]+"/"+res[2];
        $now = new Date();
        $date_now = ($now.getMonth()+1)+"/"+$now.getDate()+"/"+$now.getFullYear() +" "+$now.getHours()+":"+$now.getMinutes();
        $.each(JSON.parse(array_time),function(index,element){
            $date_comp = $newngay+" "+element;
            if(Date.parse(new Date($date_comp)) > Date.parse(new Date($date_now))){
                let html = '<option value="'+index+'">'+element+'</option>';
                $('#sel_time').append(html);
            }
        });
    });
    $('#sel_time').on('change',function(){
        $('#message-lichkham').html("");
        var indextime = $(this).val();
        var time = $('#sel_time option:selected').text();
        var idbacsi = $('#sel_bacsi').val();
        var ngay = $('#txt_ngaykham').val();
        var idkhoa = $('#sel_khoa').val();
        var namekhoa = $('#sel_khoa option:selected').text();
        console.log(namekhoa);
        $.ajax({
            url:"/check-lichkham",
            type:"POST",
            dataType:'json',
            data:{nameRequest:210,idkhoa:idkhoa,namekhoa:namekhoa,indextime:indextime,time:time,idbacsi:idbacsi,ngay:ngay},
            success:function(result){
                let html ="";
                if(!result.status){
                    html = "<div class='alert alert-danger'>"+result.massage+"</div>";
                }
                $('#message-lichkham').html(html);
            }
        });
    });
    $('#form-appointment-schedule').validate({
        rules: {
            txt_ngaykham:{
                required:true
            },
            txt_reason:{
                required:true,
                maxlength : 300,
                minlength:3
            },
            txt_sdt :{
                number: true,
                maxlength : 11,
                minlength:10
            },
        },
        messages:{
            txt_ngaykham:{
                required:"Vui lòng nhập/chọn ngày hẹn !",
            },
            txt_reason:{
                required:"Vui lòng nhập nguyên nhân triệu chứng !",
                maxlength : "Nhập tối đa 300 kí tự !",
                minlength : "Nhập tối đa 3 kí tự !",
            },
            txt_sdt :{
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
        if( $('#sel_khoa').val() == 0 ){
            // $('#error-sel-khoa').css("display","inline-block");
            alert("Vui lòng chọn khoa !");
            return;
        }
        if( $('#sel_time').val()==0 ){
            // $('#error-sel-time').css("display","inline-block");
            alert("Vui lòng chọn thời gian !");
            return;
        }
        if($('#form-appointment-schedule').valid() == false )
            return;
        if( $('#message-lichkham').html()==''){
            $('#form-appointment-schedule').submit();
        }else{
            alert("Lịch hẹn đang bị trùng với người khác . Vui lòng chọn giờ khác !");
            return;
        }
        
    });
    var option = {
        "language": {
            "info": "Hiển thị _START_ đến _END_ của _TOTAL_ kết quả",
            "lengthMenu":"Hiển thị _MENU_ kết quả",
            "infoEmpty":"Hiển thị 0 kết quả",
            "search":    "Tìm kiếm:",
            "paginate": {
                "first":        "Đầu",
                "previous":     "Trước",
                "next":         "Tiếp",
                "last":         "Cuối"
            }
        }
    }

    $('#table-benh-an-bacsi').dataTable(option);
    $('#table-ds-benh-nhan').dataTable(option);	
    var option1 = Object.assign({}, option);
    option1.language["emptyTable"] = "<h4><i> Không có lịch khám nào . </i></h4>";
    $('#table-ds-lich-kham-1').dataTable(option1);
    var option3 = Object.assign({}, option);
    option3.language["emptyTable"] = "<h4><i>Không có lịch hẹn với bệnh nhân nào.</i></h4>";
    $('#table-ds-lich-hen-1').dataTable(option3);

    var option2 = Object.assign({}, option);
    option2.language["emptyTable"] = "<h4><i>Không có lịch khám với bác sĩ nào .</i></h4>";
    $('#table-ds-lich-kham-2').dataTable(option2);
    var option4 = Object.assign({}, option);
    option4.language["emptyTable"] = "<h4><i>Không có lịch hẹn nào từ phía bác sĩ.</i></h4>";
    $('#table-ds-lich-hen-2').dataTable(option4);
    $('#txt_gio').timepicker({
        minuteStep: 5,
        showInputs: false,
        defaultTime:"current",
        mode:'24h',
        disableFocus: true,
        showMeridian: false  
    });
    $('#txt_gio').on('change',function(){
        console.log($(this).val());
    });
    $('.btn-confirm-done').on('click',function(){
        if( $(this).hasClass('btn-warning') ){
            var id = $(this).data('id');
            $this = $(this);
            $.ajax({
                url:'/comfirm-done',
                type:'POST',
                dataType:'JSON',
                data:{nameRequest:250,id:id},
                success:function(result){
                    if(result.status){
                        $this.removeClass('btn-warning').addClass('btn-success').prop('disabled',true);
                    }
                }
            });
        }
    });

});

