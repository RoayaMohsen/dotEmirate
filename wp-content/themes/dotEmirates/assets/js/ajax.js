    offset = 19;

$(document).ready(function () {
    $('#loadmore').on('click',function (e) {
        e.preventDefault()
        formdata = {
            'action' : 'loadmore',
            'offset' : offset,
        }

        $.ajax({
            type: 'post',
            url: loadmore_params.ajaxurl,
            data: formdata,
            success: function (data) {
                $('#loadmore').parent().before(data);
                getImages();
                getImages2();
                offset += 2 ;
            }
        });

    })

})