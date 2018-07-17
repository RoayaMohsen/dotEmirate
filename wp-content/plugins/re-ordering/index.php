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
    /* create ordering table to save the order of each post  when activation the plugin */

    function active_plugin()
    {
        if (version_compare(get_bloginfo('version'), '4.2', '<')) {
            wp_die(__('you must update wordpress to use this plugin', 're-ordering'));
            exit();

        }
        global $wpdb;
        require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
        $table_name = $wpdb->prefix . "ordering";
        if ($wpdb->get_var('SHOW TABLES LIKE '.$table_name) != $table_name) {
            $sql = 'CREATE TABLE ' . $table_name . '(
          ID INTEGER(10) UNSIGNED  AUTO_INCREMENT NOT NULL,
          post_order INTEGER(10) UNIQUE NOT NULL,
          post_ID bigint (20) UNSIGNED NOT NULL, 
          PRIMARY KEY(ID),
          FOREIGN KEY (post_ID) REFERENCES wp_posts(ID) ON DELETE CASCADE;
        )';
            dbDelta($sql);
        }
    }

    register_activation_hook(__FILE__, 'active_plugin');

/*
    function test_plugin_setup_menu()
    {
        add_menu_page('Test Plugin Page', 'Test Plugin', 'manage_options', 'test-plugin', 'test_init');
    }
*/
    function reordering_init()
    {
        active_plugin();

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
    /* add in admin menu  button to the plugin  */
    function reordering_menu(){
        add_menu_page( 'Reordering Plugin Page', 'Reordering Plugin', 'manage_options', 'reordering-plugin', 'reordering_init' );

    }
    add_action('admin_menu', 'reordering_menu');

