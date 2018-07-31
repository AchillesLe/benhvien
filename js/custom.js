$(function(){
    var options_Y_M_D = {
        format: 'mm-dd-yyyy',
        minViewMode: 'days',
        todayHighlight: true,
        autoclose: true,
        orientation: "auto right",
    };
    $('#txt_birthday').datepicker(options_Y_M_D);
});
$(document).ready(function() {
   $('.btn-dangki').on('click',function(){
       if( $('#txt_name').val()!=""){

       }else{
            $('#form-dangki').submit();
       }
   });
});