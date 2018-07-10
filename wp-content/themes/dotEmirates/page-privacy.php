        <?php
        get_header();
        ?>
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
                <?php get_footer();?>
