        <?php
        get_header();
        ?>
        <div class="inContent">
            <div class="gridContainer">

                <div class="aboutPages">

                    <div class="top textCentered">
                        <img src="images/logo2.png" alt="">
                        <div>عن دوت إمارات</div>
                    </div>

                    <div class="tabs textCentered">
                        <div class="current">عن دوت إمارات <i class="icon-arrow-down"></i></div>
                        <div class="in">
                            <a href="#">شروط وأحكام</a>
                            <a href="#">إتفاقية الخصوصية</a>
                            <a href="#">إتفاقية ملفات الإوتباط</a>
                            <a href="#">الأسئلة الشائعة</a>
                            <a href="#">إتصل بنا</a>
                        </div>
                    </div>

                    <div class="content clearfix">
                        <?php
                        $page=get_page_by_title('privacy');
                        $content= apply_filters( 'the_content',$page->post_content);
                        echo $content;
                        ?>

                        <div class="textCentered"><img src="images/attractions.jpg" alt=""></div>

                    </div>
                </div>
                <?php get_footer();?>
