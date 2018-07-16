
$(document).ready(function () {
    $('#form').on('submit',function (e) {
        e.preventDefault()
        formdata = {
            'action' : 'form',

            //'name'  : $('#form input[name="name"]').val(),
            'name':$('#name').val(),
            'email': $('#email').val(),
            'mobile' :$('#mobile').val(),
            'place' :$('#place').val(),
            'message' : $('#message').val(),
        }

        $.ajax({
            type: 'post',
            url: form_params.ajaxurl,
            data: formdata,
            success: function (data) {
location.reload();                }
        });

    })

})