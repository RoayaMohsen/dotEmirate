

<?php get_header() ?>


    <div class="mainContent">
        <div class="gridContainer">



            <div class="oneSection">
                <div class="myrow clearfix">
                    <?php $query = new WP_Query( array(
                        'post_type' => 'post',
                        'posts_per_page' => '3'

                    ) );

                    while ($query->have_posts()) {
                    $query->the_post();
                     ?>

                        <div class="<?php echo ($query->current_post==0)? 'mycol-lg-6':'mycol-lg-3 mycol-sm-6'?>">
                            <div class="<?php echo ($query->current_post==0)? 'mainPost big':'mainPost'?>">

                                <div class="top">
                                    <div class="img"><img src="images/source.jpg" alt=""></div>
                                    <div class="data">
                                        <div class="source"> Source </div>
                                        <div>منذ دقيقة</div>
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

                    ) );

                    while ($query->have_posts()) {
                        $query->the_post();
                        ?>

                        <div class="<?php echo ($query->current_post==0)? 'mycol-lg-6':'mycol-lg-3 mycol-sm-6'?>">
                            <div class="mainPost small">

                                <div class="top">
                                    <div class="img"><img src="images/source.jpg" alt=""></div>
                                    <div class="data">
                                        <div class="source">  Source </div>
                                        <div>منذ دقيقة</div>
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
                                          <!-- for the third section        -->
            <?php $single = new WP_Query( array(
                        'post_type' => 'post',
                        'posts_per_page' => '1',
                        'offset' =>'6',

                    ) );
            while ($single->have_posts()) {
                $single->the_post();
            ?>

            <div class="widePost">
                <a href="#" class="avatar"><img src="<?php echo get_the_post_thumbnail_url(); ?>" class="bgCover" alt=""></a>
                <div class="content">
                    <div class="in clearfix">
                        <div class="top">
                            <div class="img"><img src="images/source.jpg" alt=""></div>
                            <div class="data">
                                <div class="source"> <?php  the_category();     ?>  </div>
                                <div>منذ دقيقة</div>
                            </div>
                        </div>
                        <h3 class="title"><a href="<?php  the_permalink();  ?>"></a> <?php echo get_the_title()?></h3>
                        <div class="mainSocial pullLeft">
                            <a href="https://www.telegram.org/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank"><i class="icon-telegram"></i></a>
                            <a href="https://www.twitter.com/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank""><i class="icon-twitter"></i></a>
                            <a href="https://www.facebook.com/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank"><i class="icon-facebook"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <?php }?>
            <hr>




                                        <!--  for  the forth section -->


            <div class="oneSection">
                <div class="myrow clearfix">
                    <?php $forth_query = new WP_Query( array(
                        'post_type' => 'post',
                        'posts_per_page' => '4',
                        'offset' =>'7',

                    ) );

                    while ($forth_query->have_posts()) {
                        $forth_query->the_post();
                    ?>
                    <div class="mycol-lg-3 mycol-sm-6">
                        <div class="mainPost small">
                            <div class="top">
                                <div class="img"><img src="images/source.jpg" alt=""></div>
                                <div class="data">
                                    <div class="source"> source  </div>
                                    <div>منذ دقيقة</div>
                                </div>
                            </div>
                            <div class="content">
                                <h3 class="title"><a href="<?php the_permalink(); ?>"><?php echo get_the_title();?></a></h3>
                                <div class="description"><div class="in"><?php the_excerpt(); ?></div></div>
                                <div class="sectionAndSocial clearfix">
                                    <div class="section"><?php the_category()?></div>
                                    <div class="mainSocial pullLeft">
                                        <a href="https://www.telegram.org/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank"><i class="icon-telegram"></i></a>
                                        <a href="https://www.twitter.com/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank""><i class="icon-twitter"></i></a>
                                        <a href="https://www.facebook.com/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank"><i class="icon-facebook"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php }?>
                </div>
            </div>

            <hr>





            <div class="oneSection">
                <div class="myrow clearfix">
                    <?php $forth_query = new WP_Query( array(
                        'post_type' => 'post',
                        'posts_per_page' => '2',
                        'offset' =>'11',

                    ) );

                    while ($forth_query->have_posts()) {
                    $forth_query->the_post();
                    ?>

                    <div class="mycol-lg-6">
                        <div class="mainPost small">
                            <div class="top">
                                <div class="img"><img src="images/source.jpg" alt=""></div>
                                <div class="data">
                                    <div class="source">Source</div>
                                    <div>منذ دقيقة</div>
                                </div>
                            </div>
                            <a href="<?php the_permalink() ?>" class="avatar"><img src="<?php echo get_the_post_thumbnail_url() ?>" class="bgCover" alt=""></a>
                            <div class="content">
                                <h3 class="title"><a href="<?php the_permalink(); ?>"> <?php echo get_the_title(); ?></a></h3>
                                <div class="description"><div class="in"> <?php the_excerpt(); ?>  </div></div>
                                <div class="sectionAndSocial clearfix">
                                    <div class="section"><?php  the_category(); ?></div>
                                    <div class="mainSocial pullLeft">
                                        <a href="https://www.telegram.org/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank"><i class="icon-telegram"></i></a>
                                        <a href="https://www.twitter.com/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank""><i class="icon-twitter"></i></a>
                                        <a href="https://www.facebook.com/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank"><i class="icon-facebook"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php }?>
                </div>
            </div>
        <hr>



                    <!-- for the fifth section -->



            <div class="oneSection">
                <div class="myrow clearfix">

                    <?php $forth_query = new WP_Query( array(
                        'post_type' => 'post',
                        'posts_per_page' => '4',
                        'offset' =>'13',

                    ) );

                    while ($forth_query->have_posts()) {
                        $forth_query->the_post();
                        ?>

                    <div class="mycol-lg-3 mycol-sm-6">
                        <div class="mainPost">
                            <div class="top">
                                <div class="img"><img src="images/source.jpg" alt=""></div>
                                <div class="data">
                                    <div class="source"> Source </div>
                                    <div>منذ دقيقة</div>
                                </div>
                            </div>
                            <a href="#" class="avatar"><img src="<?php echo get_the_post_thumbnail_url(); ?>" class="bgCover" alt=""></a>
                            <div class="content">
                                <h3 class="title"><a href="<?php the_permalink(); ?>"> <?php echo get_the_title() ;?></a></h3>
                                <div class="description"><div class="in"> <?php the_excerpt() ?>  </div></div>
                                <div class="sectionAndSocial clearfix">
                                    <div class="section"><?php the_category() ?></div>
                                    <div class="mainSocial pullLeft">
                                        <a href="https://www.telegram.org/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank"><i class="icon-telegram"></i></a>
                                        <a href="https://www.twitter.com/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank""><i class="icon-twitter"></i></a>
                                        <a href="https://www.facebook.com/sharer.php?u=<?php the_permalink();?>&t=<?php the_title(); ?>" target="blank"><i class="icon-facebook"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php }?>
                </div>
            </div>






            <!-- for video section -->

            <div class="widePost">
                <a href="#" class="avatar"><img src="" class="bgCover" alt=""></a>
                <div class="content">
                    <div class="in clearfix">
                        <div class="top">
                            <div class="img"><img src="<?php echo get_the_post_thumbnail_url(); ?>" alt=""></div>
                            <div class="data">
                                <div class="source"> Source </div>
                                <div>منذ دقيقة</div>
                            </div>
                        </div>
                        <h3 class="title"><a href="<?php  ?>">الصندوق الذي يتحكم في ما تبقى من الإمبراطورية الصندوق الذي يتحكم في ما تبقى من الإمبراطورية الصندوق الذي يتحكم في ما تبقى من الإمبراطورية</a></h3>
                        <div class="mainSocial pullLeft">
                            <a href="#"><i class="icon-telegram"></i></a>
                            <a href="#"><i class="icon-twitter"></i></a>
                            <a href="#"><i class="icon-facebook"></i></a>
                        </div>
                    </div>
                    <div class="playIcon"><i class="icon-arrow-dir-right"></i></div>
                </div>
            </div>

            <hr>
            <!--











            <div class="oneSection">
                <div class="myrow clearfix">

                    <div class="mycol-lg-6">
                        <div class="mainPost big">
                            <div class="top">
                                <div class="img"><img src="images/source.jpg" alt=""></div>
                                <div class="data">
                                    <div class="source">الإمارات اليوم</div>
                                    <div>منذ دقيقة</div>
                                </div>
                            </div>
                            <a href="#" class="avatar"><img src="images/1.jpg" class="bgCover" alt=""></a>
                            <div class="content">
                                <h3 class="title"><a href="#">الصندوق الذي يتحكم في ما تبقى من الإمبراطورية الصندوق الذي يتحكم في ما تبقى من الإمبراطورية</a></h3>
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

                    <div class="mycol-lg-6">
                        <div class="mainPost big">
                            <div class="top">
                                <div class="img"><img src="images/source.jpg" alt=""></div>
                                <div class="data">
                                    <div class="source">الإمارات اليوم</div>
                                    <div>منذ دقيقة</div>
                                </div>
                            </div>
                            <a href="#" class="avatar"><img src="images/1.jpg" class="bgCover" alt=""></a>
                            <div class="content">
                                <h3 class="title"><a href="#">الصندوق الذي يتحكم في ما تبقى من الإمبراطورية الصندوق الذي يتحكم في ما تبقى من الإمبراطورية</a></h3>
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

            <div class="textCentered mainPadding"><a href="#">المزيد ...</a></div> -->

        </div>
    </div>










    <?php wp_footer()?>


</body>
</html>


