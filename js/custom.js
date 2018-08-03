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
                minlength: "Chứng minh thư phải đủ 15 số",
                maxlength: "Chứng minh thư phải đủ 15 số"
            },
            txt_cmt: {
                number:  "Phải là số !",
                minlength: "Chứng minh thư phải đủ 9 số",
                maxlength: "Chứng minh thư phải đủ 9 số"
            },
            txt_email: {
                required: "Vui lòng nhập !",
                email:"Email không hợp lệ !"
            },
            txt_sdt :{
                required: "Vui lòng nhập !",
                number:"Phải là số !",
                minlength: "Nhập ít nhất 10 kí tự !",
                maxlength: "Nhập tối đa 11 kí tự !"
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
                minlength: "Chứng minh thư phải đủ 15 số",
                maxlength: "Chứng minh thư phải đủ 15 số"
            },
            txt_cmt: {
                number:  "Phải là số !",
                minlength: "Chứng minh thư phải đủ 9 số",
                maxlength: "Chứng minh thư phải đủ 9 số"
            },
            txt_email: {
                required: "Vui lòng nhập !",
                email:"Email không hợp lệ !"
            },
            txt_sdt :{
                required: "Vui lòng nhập !",
                number:"Phải là số !",
                minlength: "Nhập ít nhất 10 kí tự !",
                maxlength: "Nhập tối đa 11 kí tự !"
            },
            txt_pass: {
                required: "Vui lòng nhập !",
                minlength: "Nhập ít nhất 6 kí tự"
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

    $('#sel_khoa').on('change',function(){
        var id = $(this).val();
        $('#error-sel-khoa').css("display","none");
        $("select#sel_bacsi").empty();
        $("select#sel_bacsi").append('<option value="0">------ Khoa tự sắp xếp ------</option> ');
        $('#sel_time').empty();
        $('#message-lichkham').html("");
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
        $('#sel_time').empty();
        if( $('#txt_ngaykham').val()){
            $('#sel_time').append('<option value="0">-chọn-</option>');
            $.each(JSON.parse(array_time),function(index,element){
                let html = '<option value="'+index+'">'+element+'</option>';
                $('#sel_time').append(html);
            });
            $('#message-lichkham').html("");
        }
    });
    $('#txt_ngaykham').on('change',function(){
        $('#sel_time').empty();
        $ngay =  $(this).val();
        $('#message-lichkham').html("");
        $('#sel_time').append('<option value="0">-chọn-</option>');Date.parse('01/01/2011 10:20:45') > Date.parse('01/01/2011 5:10:10')
        $.each(JSON.parse(array_time),function(index,element){
            $date_comp = $ngay+" "+element;
            $now = new Date();
            $date_now = $now.getDate()+"/"+($now.getMonth()+1)+"/"+$now.getFullYear() + $now.getFullYear() ;
            console.log($date_now);
            console.log($date_comp);
            let html = '<option value="'+index+'">'+element+'</option>';
            $('#sel_time').append(html);
        });
    });
    $('#sel_time').on('change',function(){
        $('#error-sel-time').css("display","none");
        $('#message-lichkham').html("");
        var indextime = $(this).val();
        var time = $('#sel_time option:selected').text();
        var idbacsi = $('#sel_bacsi').val();
        var ngay = $('#txt_ngaykham').val();
        $.ajax({
            url:"/check-lichkham",
            type:"POST",
            dataType:'json',
            data:{nameRequest:210,indextime:indextime,time:time,idbacsi:idbacsi,ngay:ngay},
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
                required:true,
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

});