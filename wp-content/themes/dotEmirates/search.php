<?php
get_header();
?>
نتائج البحث عن
<?php echo $_GET['s']; ?>




<div class="mainContent">
    <div class="gridContainer">

        <div class="sectionTitle textCentered">
            <div class="icon"><i class="icon-search2"></i></div>
            <h1 class="title2">نتائج البحث عن “<?php echo $_GET['s']?>"</h1>
        </div>
        <div class="oneSection">
            <div class="myrow clearfix">

                <?php
                if (have_posts()){
                    while (have_posts() && $wp_query->current_post<2){
                        the_post();?>

                        <div class="<?php echo ($wp_query->current_post == 0) ? 'mycol-lg-6' : 'mycol-lg-3 mycol-sm-6' ?>">
                            <div class="<?php echo ($wp_query->current_post == 0) ? 'mainPost big' : 'mainPost' ?>">
                                <div class="writerTop">
                                    <div class="img"><img src="<?php echo get_avatar_url(get_the_author_meta('ID')); ?> " style="width: 36px" alt=""></div>
                                    <span> <?php echo get_the_author_meta('first_name')." ".get_the_author_meta('last_name') ; ?> </span>
                                </div>
                                <a href="<?php the_permalink(); ?>" class="avatar"><img src="<?php echo get_the_post_thumbnail_url();  ?>" class="bgCover" alt=""></a>
                                <div class="content">
                                    <h3 class="title"><a href="<?php the_permalink(); ?>"> <?php echo get_the_title(); ?> </a></h3>
                                    <div class="description"><div class="in"><?php  echo get_the_content(); ?> </div></div>
                                    <div class="sectionAndSocial clearfix">
                                        <div class="section"><?php the_category(' , ') ?></div>
                                        <div class="mainSocial pullLeft">
                                            <a href="https://www.telegram.org/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank"><i class="icon-telegram"></i></a>
                                            <a href="https://www.twitter.com/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank""><i class="icon-twitter"></i></a>
                                            <a href="https://www.facebook.com/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank"><i class="icon-facebook"></i></a>
                                        </div>
                                    </div>
                                </div>





                            </div>
                        </div>

                        <?php
                    } }?>
            </div>
        </div>
        <hr>
        <div class="oneSection">
            <div class="myrow clearfix">
                <?php if ($wp_query->found_posts>=$wp_query->current_post){
                    while ($wp_query->current_post<5){
                        the_post()
                        ?>
                        <div class="<?php echo ($wp_query->current_post==3)? 'mycol-lg-6':'mycol-lg-3 mycol-sm-6'?>">
                            <div class="mainPost small">
                                <div class="writerTop">
                                    <div class="img"><img src="<?php echo get_avatar_url(get_the_author_meta('ID')); ?> " style="width: 36px" alt=""></div>
                                    <span> <?php echo get_the_author_meta('first_name')." ".get_the_author_meta('last_name') ; ?> </span>
                                </div>

                                <?php if ($wp_query->current_post==3) {?>

                                    <a href="<?php the_permalink(); ?>" class="avatar"><img src="<?php echo get_the_post_thumbnail_url() ?>" class="bgCover" alt=""></a>

                                <?php } ?>

                                <div class="content">
                                    <h3 class="title"><a href="<?php the_permalink(); ?>"> <?php echo get_the_title(); ?> </a></h3>
                                    <div class="description"><div class="in"><?php  echo get_the_content(); ?> </div></div>
                                    <div class="sectionAndSocial clearfix">
                                        <div class="section"><?php the_category(' , ') ?></div>
                                        <div class="mainSocial pullLeft">
                                            <a href="https://www.telegram.org/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank"><i class="icon-telegram"></i></a>
                                            <a href="https://www.twitter.com/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank""><i class="icon-twitter"></i></a>
                                            <a href="https://www.facebook.com/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank"><i class="icon-facebook"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php }
                }?>
            </div>
        </div>

    </div>
</div>

<hr>
<div class="oneSection">
    <div class="myrow clearfix">

        <?php
        if (have_posts()){
            while (have_posts() && $wp_query->current_post<8){
                the_post();?>

                <div class="<?php echo ($wp_query->current_post == 6) ? 'mycol-lg-6' : 'mycol-lg-3 mycol-sm-6' ?>">
                    <div class="<?php echo ($wp_query->current_post == 6) ? 'mainPost big' : 'mainPost' ?>">
                        <div class="writerTop">
                            <div class="img"><img src="<?php echo get_avatar_url(get_the_author_meta('ID')); ?> " style="width: 36px" alt=""></div>
                            <span> <?php echo get_the_author_meta('first_name')." ".get_the_author_meta('last_name') ; ?> </span>
                        </div>
                        <a href="<?php the_permalink(); ?>" class="avatar"><img src="<?php echo get_the_post_thumbnail_url();  ?>" class="bgCover" alt=""></a>
                        <div class="content">
                            <h3 class="title"><a href="<?php the_permalink(); ?>"> <?php echo get_the_title(); ?> </a></h3>
                            <div class="description"><div class="in"><?php  echo get_the_content(); ?> </div></div>
                            <div class="sectionAndSocial clearfix">
                                <div class="section"><?php the_category(' , ') ?></div>
                                <div class="mainSocial pullLeft">
                                    <a href="https://www.telegram.org/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank"><i class="icon-telegram"></i></a>
                                    <a href="https://www.twitter.com/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank""><i class="icon-twitter"></i></a>
                                    <a href="https://www.facebook.com/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank"><i class="icon-facebook"></i></a>
                                </div>
                            </div>
                        </div>





                    </div>
                </div>

                <?php
            } }?>
    </div>
</div>
<hr>
<div class="oneSection">
    <div class="myrow clearfix">
        <?php if ($wp_query->found_posts>=$wp_query->current_post){
            while ($wp_query->current_post<11){
                the_post()
                ?>
                <div class="<?php echo ($wp_query->current_post==9)? 'mycol-lg-6':'mycol-lg-3 mycol-sm-6'?>">
                    <div class="mainPost small">
                        <div class="writerTop">
                            <div class="img"><img src="<?php echo get_avatar_url(get_the_author_meta('ID')); ?> " style="width: 36px" alt=""></div>
                            <span> <?php echo get_the_author_meta('first_name')." ".get_the_author_meta('last_name') ; ?> </span>
                        </div>

                        <?php if ($wp_query->current_post==9) {?>

                            <a href="<?php the_permalink(); ?>" class="avatar"><img src="<?php echo get_the_post_thumbnail_url() ?>" class="bgCover" alt=""></a>

                        <?php } ?>

                        <div class="content">
                            <h3 class="title"><a href="<?php the_permalink(); ?>"> <?php echo get_the_title(); ?> </a></h3>
                            <div class="description"><div class="in"><?php  echo get_the_content(); ?> </div></div>
                            <div class="sectionAndSocial clearfix">
                                <div class="section"><?php the_category(' , ') ?></div>
                                <div class="mainSocial pullLeft">
                                    <a href="https://www.telegram.org/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank"><i class="icon-telegram"></i></a>
                                    <a href="https://www.twitter.com/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank""><i class="icon-twitter"></i></a>
                                    <a href="https://www.facebook.com/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank"><i class="icon-facebook"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php }
        }?>
    </div>
</div>

</div>
</div>

<hr>



    </div>
</div>
	<?php get_footer(); ?>

