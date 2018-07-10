
<?php get_header(); ?>

<div class="container">
    <div class="row">
        <?php
            if (have_posts()){
                while (have_posts()) {
                    the_post(); ?>

                <div class="col-sm-6" >
        `           <div class="main-post">
                       <h3 class="post-title">
                           <a href="<?php the_permalink() ?>">
                                <?php the_title( '<h3>','</h3>' );?>
                           </a>
                       </h3>
                        <span class="post-author">
                            <i class="fa fa-user fa-fw  "></i> <?php the_author_posts_link() ?>
                        </span>
                        <span class="post-date">
                            <i class="fa fa-calendar fa-fw  "></i>  <?php the_time( 'F j , y') ?>
                        </span>
                        <span class="post-comments">
                            <i class="fa fa-comments-o fa-fw  "></i>  <?php comments_popup_link('no comments', '1 comment  ',' % comments '); ?>
                        </span>
                        <?php the_post_thumbnail('',['class' => 'img-responsive img-thumbnail', 'title'=> 'Post Image']) ?>

                        <div class="post-content">

                        <?php the_excerpt() ?>

                        </div>
                        <hr>
                        <p class="post-categories">
                            <i  class="fa fa-tags fa-fw  "></i>
                            <?php the_category(' , ') ?>
                        </p>
                        <p class="post-tags">

                            <?php
                            if (has_tag()){
                                the_tags();
                            }
                            else{
                                echo 'Tags : there\'s No Tag ';
                            }

                            ?>

                        </p>
                    </div>
                    </div>

            <?php
        }
    }


        previous_posts_link();
        next_posts_link();
    ?>
        <div class="col-md-3">
            <?php
            if (is_active_sidebar('main-sidebar')){
                dynamic_sidebar('main-sidebar');
            }



            ?>
        </div>
    </div>
</div>


<br><br>
<br><br>

<?php get_footer() ; ?>

