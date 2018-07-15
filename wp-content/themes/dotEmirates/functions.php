<?php



    // set up

        include "wp_bootstrap_navwalker.php";
    add_theme_support('menus');

    /*
     * to include css and js
     * Auth:@Roaya
     */


    function ju_enqueue(){

        wp_register_style('main',get_template_directory_uri().'/assets/css/main.css');
        wp_register_style('boilerplate',get_template_directory_uri().'/assets/css/boilerplate.css');
        wp_register_style('mygrid',get_template_directory_uri().'/assets/css/mygrid.css');
        wp_enqueue_style('main');
        wp_enqueue_style('boilerplate');
        wp_enqueue_style('mygrid');

 wp_deregister_script('jquery');
  ?>
        <script src="<?php echo get_template_directory_uri().'/assets/js/jquery.js'?>"</script>
        <?php
        wp_enqueue_script( 'myscript', get_template_directory_uri(). '/assets/js/myscript.js' );
        wp_enqueue_script( 'respond.min', get_template_directory_uri(). '/assets/js/respond.min.js' ) ;
        wp_enqueue_script( 'flexslider-min', get_template_directory_uri(). '/assets/js/jquery.flexslider-min.js' );

        wp_enqueue_script( 'respond.min', get_theme_file_uri( '/assets/js/respond.min.js' ), array() );




    }

    /*
    * customize menu
    * Auth:@Roaya
    */


    function custom_menu(){
    //for many menus
    register_nav_menu('primary' ,__('Navigation Bar','dot'));

}


    function bMenu(){
    wp_nav_menu(array(
        'theme_location'    => 'bootstrap-menu',
        'menu_class'        => 'nav navbar-nav  navbar-right',
        'container'         => false ,

    ));
    }

        /*
        * option activation
        * Auth:@Roaya
        */


        function opt_activation(){
        if( version_compare (get_bloginfo('version'),'4.2','<') ){
            wp_die(_('you must have a minimum version of 4.2 to use this theme .'));
        }

        $theme_opts =       get_option('opts');

        if (!$theme_opts){
            $option             =       array(

                'facebook'      =>      '',
                'twitter'       =>      '',
                'telegram'      =>      '',
                'apple'      =>      '',
                'windows'       =>      '',
                'android'      =>      '',
                'logo'      =>      '',
            );
            add_option('opts',$option);

        }
    }


function wp_show_date() {
        $seconds = current_time( 'timestamp' ) - get_the_time('U') ;
        $minutes = $seconds * 1.0 / 60;
        $hours = $minutes *1.0 / 60;
        $days = $hours / 24;
        $months = $days / 30;
        $years = $months / 12;
            if($minutes < 2){
                return "منذ دقيقة";
            }
            else if($minutes < 3){
                return "منذ دقيقتين";
            }
            else if($minutes < 11){
                return "منذ ".floor($minutes)." دقائق";
            }
            else if($hours < 1){
                return "منذ ". floor($minutes) ." دقيقة";
            }

            else if($hours < 2){
                return "منذ ساعة";
            }

            else if($hours < 3){
                return "منذ ساعتين";
            }
            else if($hours < 11){
                return "منذ ".floor($hours)." ساعات";
            }
            else if($days < 1){
                return "منذ ".floor($hours)." ساعة";
            }
            else if($days < 2){
                return "منذ يوم";
            }
            else if($days < 3){
                return "منذ يومين";
            }
            else if($days < 11){
                return "منذ ".floor($days)." ايام";
            }
            else if($months < 1){
                return "منذ ".floor($days)." يوم";
            }
            else if($months < 2){
                return "منذ شهر";
            }
            else if($months < 3){
                return "منذ شهرين";
            }
            else if($months < 11){
                return "منذ ".floor($months)." اشهر";
            }
            else if($years < 1){
                return "منذ ".floor($months)." شهر";
            }
            else if($years < 2){
                return "منذ سنة";
            }
            else if($years < 3){
                return "منذ سنتين";
            }
            else if($years < 11){
                return "منذ ".floor($years)." سنوات";
            }
            else if($years >= 11){
                return "منذ ".floor($years)." سنين";
            }

}

    function create_admin_menus(){
            add_menu_page(
              'Dot Theme options',
              'Theme options',
              'edit_theme_options',
              'theme_opt',
              'theme_opt_page'
            );
    }

    function theme_opt_page(){

            $option     =   get_option('opts');
    ?>

        <div class="wrap">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title" ><?php _e('dotEmirate sitting','dotEmirate'); ?> </h3>
                </div>
                <div class="panel-body" >
                    <form method="post" action="admin-post.php"    >
                        <input type="hidden" name="action"  value="save_option" >
                            <?php wp_nonce_field('option_verify'); ?>

                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="logo image"  name="imageInput" value= "<?php echo  $option['logo'];?>">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="button" id="uploadingImage" > upload </button>
                                </span>
                        </div>
                        <div class="form-group">
                            <label><?php _e('Facebook','dotEmirate'); ?></label>
                            <input type="text" class="form-control" name="facebookInput" value="<?php echo  $option['facebook'];?>">
                        </div>

                        <div class="form-group">
                            <label><?php _e('Twitter','dotEmirate'); ?></label>
                            <input type="text" class="form-control" name="twitterInput" value="<?php echo  $option['twitter'];?>">
                        </div>

                        <div class="form-group">
                            <label><?php _e('Telegram','dotEmirate'); ?></label>
                            <input type="text" class="form-control" name="telegramInput" value="<?php echo  $option['telegram'];?>">
                        </div>


                        <div class="form-group">
                            <label><?php _e('Apple','dotEmirate'); ?></label>
                            <input type="text" class="form-control" name="appleInput" value="<?php echo  $option['apple'];?>">
                        </div>

                        <div class="form-group">
                            <label><?php _e('Android','dotEmirate'); ?></label>
                            <input type="text" class="form-control" name="androidInput" value="<?php echo  $option['android'];?>">
                        </div>

                        <div class="form-group">
                            <label><?php _e('Windows','dotEmirate'); ?></label>
                            <input type="text" class="form-control" name="windowsInput" value="<?php echo  $option['windows'];?>">
                        </div>



                        <div class="form-group">
                            <button type="submit"  class="btn btn-primary" name="create"> Create </button>
                        </div>




                    </form>

                </div>
            </div>
        </div>
<?php
    }

    function ju_admin_init(){
        add_action('admin_enqueue_scripts', 'ju_admin_enqueue');
        add_action('admin_post_save_option','save_option');
    }



    /*
    * save option in database
    * Auth:@Roaya
    */

    function save_option(){
        if(!current_user_can('edit_theme_options')){
            wp_die(__('You are not allow to enter this page'));
        }
        check_admin_referer('option_verify');
        $opts   =   get_option('opts');
        $opts['facebook'] = sanitize_text_field($_POST['facebookInput']);
        $opts['twitter'] = sanitize_text_field($_POST['twitterInput']);
        $opts['telegram'] = sanitize_text_field($_POST['telegramInput']);
        $opts['android'] = sanitize_text_field($_POST['androidInput']);
        $opts['windows'] = sanitize_text_field($_POST['windowsInput']);
        $opts['apple'] = sanitize_text_field($_POST['appleInput']);
        $opts['logo'] = esc_url_raw($_POST['imageInput']);

        update_option('opts' ,$opts);
        wp_redirect(admin_url('admin.php?page=theme_opt&status=1'));

    }

    // add_to_theme

function setup()
{

    //Add featured image support
    add_theme_support('post-thumbnails');
    add_image_size('small-thumbnail', 200, 300, array('left', 'top'), true); //size of image

}
add_image_size('large','1257','668');
add_image_size('medium','1257','668');
add_image_size('small','35','35');





    function ju_admin_enqueue()

    {
            if (!isset($_GET['page'])|| $_GET['page'] != "theme_opt" ){
                return;
            }

        wp_register_style('bootstrap_css',get_template_directory_uri().'/assets/css/bootstrap.min.css');
        wp_enqueue_style('bootstrap_css');
        wp_register_script('bootstrap',get_template_directory_uri().'/assets/js/bootstrap.min.js',array(''),false,true);
        wp_enqueue_script('bootstrap');


        ?>

        <script src="<?php echo get_template_directory_uri().'/assets/js/bootstrap.min.js' ?>"></script>

        <?php

        wp_enqueue_script( 'option', get_theme_file_uri( '/assets/js/option.js' ), array() );


        wp_enqueue_media();

    }

    function add_ajax(){


                wp_register_script( 'my_loadmore', get_template_directory_uri() . '/assets/js/ajax.js' );


                wp_localize_script( 'my_loadmore', 'loadmore_params', array(
                    'ajaxurl' => site_url() . '/wp-admin/admin-ajax.php', // WordPress AJAX
                  'ppp' => 2
                ) );

                wp_enqueue_script( 'my_loadmore' );


    }
    function loadmore(){

	// prepare our arguments for the query
	die($_POST['ppp']);
}


    //Action & Filter Hocks


    add_action('wp_ajax_loadmore', 'loadmore'); // wp_ajax_{action}
    add_action('wp_ajax_nopriv_loadmore', 'loadmore'); // wp_ajax_nopriv_{action} //for all users
    add_action('wp_enqueue_scripts','ju_enqueue');
    add_action('wp_enqueue_scripts','add_ajax');
    add_action('after_setup_theme','custom_menu');
    add_action('after_switch_theme','opt_activation');
    add_action('admin_menu','create_admin_menus');
    add_action('admin_init','ju_admin_init');
    add_action('show_date','wp_show_date');
    add_action('after_setup_theme','setup');
