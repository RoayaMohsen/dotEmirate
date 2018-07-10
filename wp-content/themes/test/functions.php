<?php

//include navwalker
require_once ('wp_bootstrap_navwalker.php');

//Add Image support
add_theme_support('post-thumbnails');



/*
 **
 ** Function to add custom style
 ** add by @Roaya
 ** wp_enqueue_style()
 **
 */
Function custom_style(){

    wp_enqueue_style('bootstrap-css',get_template_directory_uri().'/css/bootstrap.min.css');
    wp_enqueue_style('main',get_template_directory_uri().'/css/main.css');
    wp_enqueue_style('fontawesome-css',get_template_directory_uri().'/css/font-awesome.min.css');

}

/*
 **
 ** Function to add custom script
 ** add by @Roaya
 ** wp_enqueue_script()
 **
 */

Function custom_script(){

    /* // add jquery
    wp_deregister_script('jquery'); //remove old jquery
    wp_register_script('jquery', includes_url('/js/jquery/jquery.js'),false ,'',true);// add new jquery
    wp_enqueue_script('jquery'); //enqueue the new jquery
    */
    wp_enqueue_script('bootstrap-js',get_template_directory_uri().'/js/bootstrap.js', array('jquery'),false,false);
    wp_enqueue_script('main-js',get_template_directory_uri().'/js/main.js', array(),false,false);

    wp_enqueue_script('html5shiv',get_template_directory_uri().'/js/html5shiv.js');
    wp_script_add_data('html5shiv','conditional','lt IE 9');

    wp_enqueue_script('respond',get_template_directory_uri().'/js/respond.min.js');
    wp_script_add_data('respond','conditional','lt IE 9');

}




/*
Customize the excrept word length &read more dots
 * Added by @Roaya
 *
 */
    function extended_excerpt($length){
        return 25;
    }
    add_filter('excerpt_length','extended_excerpt');

    function change_dots($more){
        return '    .....';
    }

add_filter('excerpt_more','change_dots');




    /*
     ** Add custom menu
     * Add by @Roaya
     *
     */

    function custom_menu(){
            //for many menus
        register_nav_menus(array(
            'bootstrap-menu' => 'Navigation Bar' ,
            'footer-menu' => 'Footer Menu' ,


        ));

        }



    function bMenu(){
        wp_nav_menu(array(
            'theme_location'    => 'bootstrap-menu',
            'menu_class'        => 'nav navbar-nav  navbar-right',
            'container'         => false ,
            'depth'             => 2,
            'walker'            =>new WP_Bootstrap_Navwalker(),

        ));
    }


    /*
    **
    ** Add action
    ** add by @Roaya
    ** add_action()
    **
     */

    add_action('wp_enqueue_scripts','custom_style');
    add_action('wp_enqueue_scripts','custom_script');
    add_action('init','custom_menu');


            //add SideBar
        function main_sidebar(){
            register_sidebar(array(
                'name'          => 'Main Sidebar',
                'id'            => 'main-sidebar',
                'description'   => 'Main SideBar Appear Everywhere',
                'class'         => 'main-sidebar',
                'before_widget' => '<div class="widget-content">',
                'after_widget'  => '</div>',
                'before_title'  => '<h3 class ="widget-title">',
                'after_title'   => '</h3',

            ));

        }
        add_action ('widgets_init','main_sidebar');

