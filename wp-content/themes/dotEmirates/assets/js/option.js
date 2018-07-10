
jQuery(document).ready(function () {

        var frame= wp.media({

            title: 'select logo you want',
            button: {
                text: 'use this media'
            },
            multiple:       false
        } ) ;

        $("#uploadingImage").on('click', function(e) {

            e.preventDefault();
            frame.open();
        });
        frame.on('select', function(){
            var attach = frame.state().get('selection').first().toJSON();
            $("input[name=imageInput]").val(attach.url);
        });

})
