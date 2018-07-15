    offset = 19;

$(document).ready(function () {
    $('#loadmore').on('click',function (e) {
        e.preventDefault()
        ppp = $("[name='ppp']").val();
        console.log(ppp)

        formdata = {
            'action' : 'loadmore',
            'offset' : offset,
            'ppp' : loadmore_params.ppp
        }

        $.ajax({
            type: 'post',
            url: loadmore_params.ajaxurl,
            data: formdata,
            success: function (data) {
                offset += 2 ;
                console.log(offset);
            }
        })
    })

})