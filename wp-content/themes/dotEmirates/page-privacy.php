        <?php
        get_header();
        ?>
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

        <div class="inContent">
            <div class="gridContainer">

                <div class="aboutPages">

                    <div class="top textCentered">
                        <img src="<?php echo get_template_directory_uri().'/assets/images/logo2.png' ?>" alt="">
                        <div>عن دوت إمارات</div>
                    </div>

                    <div class="tabs textCentered">
                        <div class="current">عن دوت إمارات <i class="icon-arrow-down"></i></div>
                        <div class="in">
                            <a href="http://localhost/dotEmirate/?page_id=120" >شروط وأحكام</a>
                            <a href="http://localhost/dotEmirate/?page_id=102" class="active">إتفاقية الخصوصية</a>
                            <a href="http://localhost/dotEmirate/?page_id=117">إتفاقية ملفات الإوتباط</a>
                            <a href="http://localhost/dotEmirate/?page_id=108">الأسئلة الشائعة</a>
                            <a href="http://localhost/dotEmirate/?page_id=98" >إتصل بنا</a>
                        </div>
                    </div>

                    <div class="content clearfix">
                        <?php
                        $page=get_page_by_title('privacy');
                        $content= apply_filters( 'the_content',$page->post_content);
                        echo $content;
                        ?>

                        <div class="textCentered"><img src=" <?php echo get_template_directory_uri().'/assets/images/attractions.jpg' ?>" alt=""></div>

                    </div>
                </div>
            </div>
        </div>
                <?php get_footer();?>
