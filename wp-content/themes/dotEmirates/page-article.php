<?php get_header(); ?>

<div class="mainContent">
    <div class="gridContainer">

        <div class="sectionTitle textCentered">
            <div class="icon"><i class="icon-articles"></i></div>
            <h1 class="title">المقالات</h1>
            <div class="tags">
                <span>أخبار مميزة عن:</span>
                <a href="#">أبوظبي</a>
                <a href="#">دبي</a>
                <a href="#">محمد بن زايد</a>
            </div>
        </div>

                            <!--first section -->
        <div class="oneSection">
            <div class="myrow clearfix">
                <?php $query = new WP_Query(array(
                    'post_type' => 'article',
                    'posts_per_page' => '3'

                ));

                while ($query->have_posts()) {
                    $query->the_post();
                    ?>

                    <div class="<?php echo ($query->current_post == 0) ? 'mycol-lg-6' : 'mycol-lg-3 mycol-sm-6' ?>">
                        <div class="<?php echo ($query->current_post == 0) ? 'mainPost big' : 'mainPost' ?>">
                            <div class="writerTop">
                                <div class="img"><img src="<?php echo get_avatar_url(get_the_author_meta('ID')); ?>" style="width: 36px" alt=""></div>
                                <span> <?php the_author(); ?> </span>
                            </div>
                            <a href="<?php the_permalink() ?>" class="avatar"><img
                                        src="<?php echo get_the_post_thumbnail_url(); ?>" class="bgCover" alt=""></a>
                            <div class="content">
                                <h3 class="title"><a
                                            href="<?php the_permalink(); ?>"> <?php echo get_the_title(); ?> </a></h3>
                                <div class="description">
                                    <div class="in"> <?php the_excerpt() ?> </div>
                                </div>
                                <div class="sectionAndSocial clearfix">
                                    <div class="section"><?php the_category() ?></div>
                                    <div class="mainSocial pullLeft">
                                        <a href="#"><i class="icon-telegram"></i></a>
                                        <a href="#"><i class="icon-twitter"></i></a>
                                        <a href="#"><i class="icon-facebook"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>


        <hr>


        <!--<div class="oneSection">
            <div class="myrow clearfix">
                <?php /*$query = new WP_Query(array(
                    'post_type' => 'article',
                    'posts_per_page' => '3',
                    'offset' => '3'

                ));

                while ($query->have_posts()) {
                    $query->the_post();
                    */?>

                    <div class="<?php /*echo ($query->current_post == 0) ? 'mycol-lg-6' : 'mycol-lg-3 mycol-sm-6' */?>">
                        <div class="mainPost small">
                            <div class="writerTop">
                                <div class="img"><img src="<?php /*echo get_avatar_url(get_the_author_meta('ID')); */?>" alt=""></div>
                                <span><?php /*the_author(); */?></span>
                            </div>
                            <a href="<?php /*the_permalink() */?>" class="avatar"><img
                                        src="<?php /*echo get_the_post_thumbnail_url() */?>" class="bgCover" alt=""></a>
                            <div class="content">
                                <h3 class="title"><a href="<?php /*the_permalink() */?>"> <?php /*echo get_the_title() */?> </a>
                                </h3>
                                <div class="description">
                                    <div class="in"> <?php /*the_excerpt() */?> </div>
                                </div>
                                <div class="sectionAndSocial clearfix">
                                    <div class="section"> <?php /**/?></div>
                                    <div class="mainSocial pullLeft">
                                        <a href="#"><i class="icon-telegram"></i></a>
                                        <a href="#"><i class="icon-twitter"></i></a>
                                        <a href="#"><i class="icon-facebook"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php /*} */?>
            </div>
        </div>
-->


        <div class="oneSection">
            <div class="myrow clearfix">
                <?php $query = new WP_Query(array(
                    'post_type' => 'article',
                    'posts_per_page' => '3',
                    'offset' => '3'

                ));
                $query->the_post();?>

                <div class="mycol-lg-6">
                    <div class="mainPost small">
                        <div class="writerTop">
                            <div class="img"><img src="<?php echo get_avatar_url(get_the_author_meta('ID')); ?>" style="width: 36px" alt=""></div>
                            <span><?php the_author(); ?></span>
                        </div>
                        <a href="<?php /*the_permalink() */?>" class="avatar"><img src="<?php echo get_the_post_thumbnail_url() ?>" class="bgCover" alt=""></a>
                        <div class="content">
                            <h3 class="title"><a href="<?php /*the_permalink() */?>"> <?php /*echo get_the_title() */?> </a>
                            </h3>
                            <div class="description">
                                <div class="in"> <?php the_excerpt() ?> </div>
                            </div>
                            <div class="sectionAndSocial clearfix">
                                <div class="section"><?php the_category(); ?></div>
                                <div class="mainSocial pullLeft">
                                    <a href="https://www.telegram.org/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank"><i class="icon-telegram"></i></a>
                                    <a href="https://www.twitter.com/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank""><i class="icon-twitter"></i></a>
                                    <a href="https://www.facebook.com/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank"><i class="icon-facebook"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <?php  $query->the_post();?>
                <div class="mycol-lg-3 mycol-sm-6">
                    <div class="mainPost small">
                        <div class="writerTop">
                            <div class="img"><img src="<?php echo get_avatar_url(get_the_author_meta('ID')); ?>" style="width: 36px" alt=""></div>
                            <span><?php the_author(); ?></span>
                        </div>
                        <div class="content">
                            <h3 class="title"><a href="#">الصندوق الذي يتحكم في ما تبقى من الإمبراطورية</a></h3>
                            <div class="description"><div class="in">ولي العهد محمد بن زايد آل نهيان هو ابن مؤسس أبو ظبي ورئيس مجلس إدارة الصندوق. تصوير: بازوكي محمد / رويترز منذ إنشائها في عام 2002 ، لم يكن لدى أحدث صناديق الثروة السيادية الثلاثة التابعة لحكومة أبوظبي - مبادلة - مكتب خارج الأراضي</div></div>
                            <div class="sectionAndSocial clearfix">
                                <div class="section">العالم</div>
                                <div class="mainSocial pullLeft">
                                    <a href="#"><i class="icon-telegram"></i></a>
                                    <a href="#"><i class="icon-twitter"></i></a>
                                    <a href="#"><i class="icon-facebook"></i></a>
                                </div>
                            </div>
                        </div>


<!--

                        <a href="<?php /*the_permalink() */?>" class="avatar"><img src="<?php echo get_the_post_thumbnail_url() ?>" class="bgCover" alt=""></a>
                        <div class="content">
                            <h3 class="title"><a href="<?php /*the_permalink() */?>"> <?php /*echo get_the_title() */?> </a>
                            </h3>
                            <div class="description">
                                <div class="in"> <?php the_excerpt() ?> </div>
                            </div>
                            <div class="sectionAndSocial clearfix">
                                <div class="section"><?php the_category(); ?></div>
                                <div class="mainSocial pullLeft">
                                    <a href="https://www.telegram.org/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank"><i class="icon-telegram"></i></a>
                                    <a href="https://www.twitter.com/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank""><i class="icon-twitter"></i></a>
                                    <a href="https://www.facebook.com/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank"><i class="icon-facebook"></i></a>
                                </div>
                            </div>
                        </div>


                        -->

                    </div>
                </div>
                <?php  $query->the_post();  ?>
                <div class="mycol-lg-3 mycol-sm-6">
                    <div class="mainPost small">
                        <div class="writerTop">
                            <div class="img"><img src="images/user.jpg" alt=""></div>
                            <span>محمد احمد</span>
                        </div>
                        <div class="content">
                            <h3 class="title"><a href="#">الصندوق الذي يتحكم في ما تبقى من الإمبراطورية</a></h3>
                            <div class="description"><div class="in">ولي العهد محمد بن زايد آل نهيان هو ابن مؤسس أبو ظبي ورئيس مجلس إدارة الصندوق. تصوير: بازوكي محمد / رويترز منذ إنشائها في عام 2002 ، لم يكن لدى أحدث صناديق الثروة السيادية الثلاثة التابعة لحكومة أبوظبي - مبادلة - مكتب خارج الأراضي</div></div>
                            <div class="sectionAndSocial clearfix">
                                <div class="section">العالم</div>
                                <div class="mainSocial pullLeft">
                                    <a href="#"><i class="icon-telegram"></i></a>
                                    <a href="#"><i class="icon-twitter"></i></a>
                                    <a href="#"><i class="icon-facebook"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <hr>


        <!-- for the third section-->


        <div class="oneSection">
            <div class="myrow clearfix">
                <?php $query = new WP_Query(array(
                    'post_type' => 'article',
                    'posts_per_page' => '3',
                    'offset' => '6'

                ));

                while ($query->have_posts()) {
                    $query->the_post();
                    ?>

                    <div class="<?php echo ($query->current_post == 0) ? 'mycol-lg-6' : 'mycol-lg-3 mycol-sm-6' ?>">
                        <div class="<?php echo ($query->current_post == 0) ? 'mainPost big' : 'mainPost' ?>">
                            <div class="writerTop">
                                <div class="img"><img src="<?php echo get_avatar_url(get_the_author_meta('ID')); ?>"  style="width: 36px" alt=""></div>
                                <span> <?php the_author(); ?> </span>
                            </div>
                            <a href="<?php the_permalink() ?>" class="avatar"><img
                                        src="<?php echo get_the_post_thumbnail_url(); ?>" class="bgCover" alt=""></a>
                            <div class="content">
                                <h3 class="title"><a
                                            href="<?php the_permalink(); ?>"> <?php echo get_the_title(); ?> </a></h3>
                                <div class="description">
                                    <div class="in"> <?php the_excerpt() ?> </div>
                                </div>
                                <div class="sectionAndSocial clearfix">
                                    <div class="section"><?php the_category() ?></div>
                                    <div class="mainSocial pullLeft">
                                        <a href="#"><i class="icon-telegram"></i></a>
                                        <a href="#"><i class="icon-twitter"></i></a>
                                        <a href="#"><i class="icon-facebook"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>


        <hr>

        <div class="oneSection">
            <div class="myrow clearfix">
                <?php $query = new WP_Query(array(
                    'post_type' => 'article',
                    'posts_per_page' => '3',
                    'offset' => '3'

                ));

                while ($query->have_posts()) {
                    $query->the_post();
                    ?>

                    <div class="<?php echo ($query->current_post == 0) ? 'mycol-lg-6' : 'mycol-lg-3 mycol-sm-6' ?>">
                        <div class="mainPost small">
                            <div class="writerTop">
                                <div class="img"><img src="<?php echo get_avatar_url(get_the_author_meta('ID')); ?>"
                                                      alt=""></div>
                                <span><?php the_author(); ?></span>
                            </div>
                            <a href="<?php the_permalink() ?>" class="avatar"><img
                                        src="<?php echo get_the_post_thumbnail_url() ?>" class="bgCover" alt=""></a>
                            <div class="content">
                                <h3 class="title"><a href="<?php the_permalink() ?>"> <?php echo get_the_title() ?> </a>
                                </h3>
                                <div class="description">
                                    <div class="in"> <?php the_excerpt() ?> </div>
                                </div>
                                <div class="sectionAndSocial clearfix">
                                    <div class="section"></div>
                                    <div class="mainSocial pullLeft">
                                        <a href="#"><i class="icon-telegram"></i></a>
                                        <a href="#"><i class="icon-twitter"></i></a>
                                        <a href="#"><i class="icon-facebook"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>

        <hr>


    </div>
</div>

<?php get_footer(); ?>
</body>