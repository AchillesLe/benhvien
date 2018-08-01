$(function(){
    var options_Y_M_D = {
        format: 'dd/mm/yyyy',
        minViewMode: 'days',
        todayHighlight: true,
        autoclose: true,
        orientation: "auto right",
    };
    $('#txt_birthday').datepicker(options_Y_M_D);
});
$(document).ready(function() {
    $('.btn-dangki').on('click',function(){
        $('#form-dangki').submit();
        // $('#form-dangki').validate({
        //     rules:{
        //         txt_name :{
        //             required : true
        //         },
        //         rd_sex :{
        //             required:true
        //         },
        //         txt_address:{
        //             required:true
        //         },
        //         txt_birthday:{
        //             required:true
        //         },
        //         txt_bhyt:{
        //             required:true
        //         },
        //         txt_cmt:{
        //             required:true,
        //             number: true,
        //             maxlength : 9,
        //             minlength: 9
        //         },
        //         txt_cmt:{
        //             required:true,
        //             number: true,
        //             maxlength : 9,
        //             minlength: 9
        //         },
        //         txt_dantoc:{
        //             required:true,
        //         },
        //         txt_email:{
        //             email:true
        //         },
        //         txt_username :{
        //             required:true,
        //         },
        //         txt_password:{
        //             required:true,
        //             minlength:6
        //         },
        //         txt_confirmPassword:{
        //             equalTo: "#txt_password",
        //             minlength: 6
        //         }
        //     },
        //     messages:{

        //     },
        //     errorClass: "label label-danger",
        //     highlight: function (element, errorClass, validClass) {
        //         return false;
        //     },
        //     unhighlight: function (element, errorClass, validClass) {
        //         return false;
        //     }
        // });
        // $valid = false;
        // if($valid){
        //     $('#form-dangki').submit();
        // }
   });
});