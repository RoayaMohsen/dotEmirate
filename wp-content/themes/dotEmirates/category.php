    <?php get_header();?>

    <div class="loading">
        <div class="tableDis">
            <div class="oneCell">
                <div class="theImg">
                    <img src="<?php echo get_template_directory_uri().'/assets/images/loadingLogo.png'?>" alt="">
                    <svg height="176" width="176">
                        <circle cx="88" cy="88" r="87" stroke="#C1CA35" stroke-width="2" stroke-dasharray="546" fill="none"></circle><!-- stroke-dasharray="672" -->
                    </svg>
                </div>
            </div>
        </div>
    </div>


<script >

    $(window).on('load', function () {
        $('.loading').css('display', 'none')
    })



</script>

    <div class="mainContent">
    <div class="gridContainer">




        <div class="sectionTitle textCentered">
            <div class="icon"><i class="<?php  echo get_category(get_queried_object_id())->description ?>"></i></div>
            <h1 class="title"><?php  echo get_category(get_queried_object_id())->name ?></h1>
            <div class="tags">
                <span>أخبار مميزة عن:</span>
                <a href="#">أبوظبي</a>
                <a href="#">دبي</a>
                <a href="#">محمد بن زايد</a>
            </div>
        </div>




        <?php $single = new WP_Query( array(
            'post_type' => 'post',
            'posts_per_page' => '1',
            'offset' =>'6',
            'cat' => get_queried_object_id()

        ) );

        while ($single->have_posts()) {
            $single->the_post();
            ?>

            <div class="widePost">
                <a href="#" class="avatar"><img src="<?php echo get_the_post_thumbnail_url(); ?>" class="bgCover" alt=""></a>
                <div class="content">
                    <div class="in clearfix">
                        <div class="top">
                            <div class="img"><img src="<?php echo get_field('source_image') ?>" alt=""></div>
                            <div class="data">
                                <div class="source"> <?php echo get_field('source_name') ?> </div>
                                <div><?php the_time(wp_show_date());?> </div>
                            </div>
                        </div>
                        <h3 class="title"> <a href="<?php the_permalink() ?>">
                                <?php the_title( '<h3>','</h3>' );?>
                            </a></h3>                        <div class="mainSocial pullLeft">
                            <a href="https://www.telegram.org/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank"><i class="icon-telegram"></i></a>
                            <a href="https://www.twitter.com/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank""><i class="icon-twitter"></i></a>
                            <a href="https://www.facebook.com/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank"><i class="icon-facebook"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        <?php }?>
        <hr>

        <div class="oneSection">
            <div class="myrow clearfix">
                <?php $query = new WP_Query( array(
                    'post_type' => 'post',
                    'posts_per_page' => '3',
            'cat' => get_queried_object_id()

                ) );

                while ($query->have_posts()) {
                    $query->the_post();
                    ?>

                    <div class="<?php echo ($query->current_post==0)? 'mycol-lg-6':'mycol-lg-3 mycol-sm-6'?>">
                        <div class="<?php echo ($query->current_post==0)? 'mainPost big':'mainPost'?>">

                            <div class="top">
                                <div class="img"><img src="<?php echo get_field('source_image') ?>" alt=""></div>
                                <div class="data">
                                    <div class="source"> <?php echo get_field('source_name') ?> </div>
                                    <div><?php the_time(wp_show_date());?> </div>
                                </div>
                            </div>
                            <a href="<?php  the_permalink() ?>" class="avatar"><img src="<?php echo get_the_post_thumbnail_url() ; ?>" class="bgCover" alt=""></a>
                            <div class="content">

                                <h3 class="title"> <a href="<?php the_permalink() ?>">
                                        <?php the_title( '<h3>','</h3>' );?>
                                    </a></h3>
                                <div class="description"><div class="in"> <?php the_excerpt(); ?> </div></div>
                                <div class="sectionAndSocial clearfix">
                                    <div class="section">    <?php the_category(); ?>  </div>
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

                } ?>




            </div>
        </div>

        <hr>
        <!-- for  second section        -->
        <div class="oneSection">
            <div class="myrow clearfix">
                <?php $query = new WP_Query( array(
                    'post_type' => 'post',
                    'posts_per_page' => '3',
                    'offset' =>'3',
                    'cat' => get_queried_object_id()

                ) );

                while ($query->have_posts()) {
                    $query->the_post();
                    ?>

                    <div class="<?php echo ($query->current_post==0)? 'mycol-lg-6':'mycol-lg-3 mycol-sm-6'?>">
                        <div class="mainPost small">

                            <div class="top">
                                <div class="img"><img src="<?php echo get_field('source_image') ?>" alt=""></div>
                                <div class="data">
                                    <div class="source"> <?php echo get_field('source_name') ?> </div>
                                    <div><?php the_time(wp_show_date());?> ة</div>
                                </div>
                            </div>

                            <?php if ($query->current_post==0){
                                ?>
                                <a href="<?php the_permalink() ?>" class="avatar"><img src="<?php echo get_the_post_thumbnail_url() ;?>" class="bgCover" alt=""></a>

                                <?php
                            }
                            ?>
                            <div class="content">
                                <h3 class="title"> <a href="<?php the_permalink() ?>">
                                        <?php the_title( '<h3>','</h3>' );?>
                                    </a></h3>
                                <div class="description"><div class="in"> <?php the_excerpt(); ?> </div></div>
                                <div class="sectionAndSocial clearfix">
                                    <div class="section">   <?php the_category(); ?> </div>
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

                } ?>

            </div>
        </div>

        <hr>

        <div class="oneSection">
            <div class="myrow clearfix">
                <?php $query = new WP_Query( array(
                    'post_type' => 'post',
                    'posts_per_page' => '3',
                    'cat' => get_queried_object_id()

                ) );

                while ($query->have_posts()) {
                    $query->the_post();
                    ?>

                    <div class="<?php echo ($query->current_post==0)? 'mycol-lg-6':'mycol-lg-3 mycol-sm-6'?>">
                        <div class="<?php echo ($query->current_post==0)? 'mainPost big':'mainPost'?>">

                            <div class="top">
                                <div class="img"><img src="<?php echo get_field('source_image') ?>" alt=""></div>
                                <div class="data">
                                    <div class="source"> <?php echo get_field('source_name') ?> </div>
                                    <div><?php the_time(wp_show_date());?> </div>
                                </div>
                            </div>
                            <a href="<?php  the_permalink() ?>" class="avatar"><img src="<?php echo get_the_post_thumbnail_url() ; ?>" class="bgCover" alt=""></a>
                            <div class="content">

                                <h3 class="title"> <a href="<?php the_permalink() ?>">
                                        <?php the_title( '<h3>','</h3>' );?>
                                    </a></h3>
                                <div class="description"><div class="in"> <?php the_excerpt(); ?> </div></div>
                                <div class="sectionAndSocial clearfix">
                                    <div class="section">    <?php the_category(); ?>  </div>
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

                } ?>




            </div>
        </div>

        <hr>
        <!-- for  second section        -->
        <div class="oneSection">
            <div class="myrow clearfix">
                <?php $query = new WP_Query( array(
                    'post_type' => 'post',
                    'posts_per_page' => '3',
                    'offset' =>'3',
                    'cat' => get_queried_object_id()


                ) );

                while ($query->have_posts()) {
                    $query->the_post();
                    ?>

                    <div class="<?php echo ($query->current_post==0)? 'mycol-lg-6':'mycol-lg-3 mycol-sm-6'?>">
                        <div class="mainPost small">

                            <div class="top">
                                <div class="img"><img src="<?php echo get_field('source_image') ?>" alt=""></div>
                                <div class="data">
                                    <div class="source"> <?php echo get_field('source_name') ?> </div>
                                    <div><?php the_time(wp_show_date());?> </div>
                                </div>
                            </div>

                            <?php if ($query->current_post==0){
                                ?>
                                <a href="<?php the_permalink() ?>" class="avatar"><img src="<?php echo get_the_post_thumbnail_url() ;?>" class="bgCover" alt=""></a>

                                <?php
                            }
                            ?>
                            <div class="content">
                                <h3 class="title"> <a href="<?php the_permalink() ?>">
                                        <?php the_title( '<h3>','</h3>' );?>
                                    </a></h3>
                                <div class="description"><div class="in"> <?php the_excerpt(); ?> </div></div>
                                <div class="sectionAndSocial clearfix">
                                    <div class="section">   <?php the_category(); ?> </div>
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

                } ?>

            </div>
        </div>

        <hr>



    </div>
</div>
	<?php
	get_footer() ?>
    </body>
