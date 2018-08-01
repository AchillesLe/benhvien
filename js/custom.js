$(function(){
    var options_Y_M_D = {
        format: 'dd/mm/yyyy',
        minViewMode: 'days',
        todayHighlight: true,
        autoclose: true,
        orientation: "auto right",
    };
    var date = new Date();
    var currdate =  date.getDate()+"/"+ (date.getMonth()+1) +"/"+date.getFullYear();
    $('#txt_birthday , input[type=text-date] ').datepicker(options_Y_M_D);
    $('#txt_birthday , input[type=text-date] ').data('datepicker').setEndDate(currdate);
    $("#sel_bacsi").chosen({});

});
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
});