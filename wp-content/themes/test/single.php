
<?php get_header(); ?>
<div class="breadcrumbs-holder">
  <div class="container">
    <ol class="breadcrumb">
        <li>
            <a href=""> </a>
        </li>
        <li>
            <a href=""> </a>
        </li>
        <li class="active">

        </li>
    </ol>
  </div>
</div>
<div class="container">
        <?php
        if (have_posts()){
            while (have_posts()) {
                the_post(); ?>
                <div class="main-post single-post">
                    <?php edit_post_link('Edit <i class="fa fa-pencil"></i> ') ?>

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
                        <div class="row">
                            <div class="col-sm-6">
                                <?php the_post_thumbnail('',['class' => 'img-responsive img-thumbnail', 'title'=> 'Post Image']) ?>

                            </div>
                            <div class="col-sm-6">
                                <div class="post-content">
                                    <?php the_content() ?>
                                </div>
                            </div>
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

        comments_template();
        ?>

    </div>



<br><br>
<br><br>

<?php get_footer() ; ?>

