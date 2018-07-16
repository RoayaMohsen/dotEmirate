<?php
/**
 Plugin Name:Re-ordering
 * Description: a simple wordpress plugin to reorder post by darg and drop
 * Version: 1.0
 * Author: Roaya Mohsen
 * Text Domain: re-ordering
 */


        if (!function_exists('add_action')){
            echo "Not allowed";
        }

    function active_plugin()
    {
        if (version_compare(get_bloginfo('version'), '4.2', '<')) {
        wp_die(__('you must update wordpress to use this plugin', 're-ordering'));
        exit();
    }}


    register_activation_hook(__FILE__, 'active_plugin');

/*
    function test_plugin_setup_menu()
    {
        add_menu_page('Test Plugin Page', 'Test Plugin', 'manage_options', 'test-plugin', 'test_init');
    }
*/
    function reordering_init()
    {
        ?>

        <h4>Hello , you can now reorder the posts as you like to see them </h4>

        <?php

        $query = new WP_Query(array(
            'post_type' => 'post',
            'posts_per_page' => '-1'

        ));
        if ($query->have_posts()){
            while ($query->have_posts() ){
                $query->the_post();
            ?>

                <h3 class="title"><a href="<?php the_permalink(); ?>"> <?php echo get_the_title(); ?> </a></h3>
                <div class="description"><div class="in"><?php  echo the_excerpt(); ?> </div></div>

            <?php
        }}

    }

    function reordering_menu(){
        add_menu_page( 'Reordering Plugin Page', 'Reordering Plugin', 'manage_options', 'reordering-plugin', 'reordering_init' );

    }
add_action('admin_menu', 'reordering_menu');
