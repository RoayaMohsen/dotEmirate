<?php



    // set up


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




        ?>
        <script src="<?php echo get_template_directory_uri().'/assets/js/jquery.js' ?>"></script>
        <script src="<?php echo get_template_directory_uri().'/assets/js/respond.min.js' ?>"></script>
        <script src="<?php echo get_template_directory_uri().'/assets/js/flexslider-min.js' ?>"></script>
        <script src="<?php echo get_template_directory_uri().'/assets/js/myscript.js' ?>"></script>
        <?php


    }

    /*
    * customize menu
    * Auth:@Roaya
    */


    function custom_menu(){
    //for many menus
    register_nav_menus(array(
        'bootstrap-menu' => 'Navigation Bar' ,


    ));

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

        $theme_opts =       get_option('link_options');

        if (!$theme_opts){
            $option             =       array(

                'facebook'      =>      '',
                'twitter'       =>      '',
                'telegram'      =>      '',
                'logo_type'     =>       1,
                'logo_img'      =>      '',
                'footer'        =>      ''
            );
            add_option('link_options',$option);

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
                            <input type="text" class="form-control" name="facebookInput" value="<?php echo  $option['Facebook'];?>">
                        </div>

                        <div class="form-group">
                            <label><?php _e('Twitter','dotEmirate'); ?></label>
                            <input type="text" class="form-control" name="twitterInput" value="<?php echo  $option['Twitter'];?>">
                        </div>

                        <div class="form-group">
                            <label><?php _e('Telegram','dotEmirate'); ?></label>
                            <input type="text" class="form-control" name="telegramInput" value="<?php echo  $option['Telegram'];?>">
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
        $opts['Facebook'] = sanitize_text_field($_POST['facebookInput']);
        $opts['Twitter'] = sanitize_text_field($_POST['twitterInput']);
        $opts['Telegram'] = sanitize_text_field($_POST['telegramInput']);
        $opts['logo'] = esc_url_raw($_POST['imageInput']);

        update_option('opts' ,$opts);
        wp_redirect(admin_url('admin.php?page=theme_opt&status=1'));

    }

    // add_to_theme
        add_theme_support('post-thumbnails');






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



    //Action & Filter Hocks


    add_action('wp_enqueue_scripts','ju_enqueue');
    add_action('after_setup_theme','custom_menu');
    add_action('after_switch_theme','opt_activation');
    add_action('admin_menu','create_admin_menus');
    add_action('admin_init','ju_admin_init');


