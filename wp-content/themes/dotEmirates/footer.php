
<?php         $theme_opts =       get_option('opts');
?>

<footer id="footer">
    <div class="gridContainer">

        <div class="one menu">
            <ul>

                <li><a href="http://localhost/dotEmirate/?page_id=91">عن دوت إمارات</a></li>
                <li><a href="http://localhost/dotEmirate/?page_id=98">إتصل بنا</a></li>
                <li><a href="http://localhost/dotEmirate/?page_id=120">شروط وأحكام</a></li>
                <li><a style="cursor:not-allowed"  >أبلغ عن خطأ</a></li>
                <li><a href="http://localhost/dotEmirate/?page_id=102">إتفاقية الخصوصية</a></li>
                <li><a style="cursor:not-allowed"  >تصويبات وتوضيحات</a></li>
                <li><a href="http://localhost/dotEmirate/?page_id=117">إتفاقية ملفات الإرتباط</a></li>
                <li><a style="cursor:not-allowed" >الشكاوي والإقتراحات</a></li>
                <li><a href="http://localhost/dotEmirate/?page_id=108">الأسئلة الشائعة</a></li>
                <li><a style="cursor:not-allowed"  >خريطة الموقع</a></li>
            </ul>
        </div>
        <div class="one subscribe textCentered">
            <div class="logo"><img src="<?php echo $theme_opts['logo'];  ?>" alt=""></div>
            <div class="mainSocial">
                <?php
                if (!empty($theme_opts['telegram']))  ?>
                <a href="https://telagram.org/ <?php echo $theme_opts['telegram']; ?>" ><i class="icon-telegram"></i></a><?php

                if (!empty($theme_opts['twitter']))
                ?> <a href="https://twitter.com/ <?php echo $theme_opts['twitter']; ?>" ><i class="icon-twitter"></i></a><?php

                if (!empty($theme_opts['facebook']))
                ?> <a href="https://facbook.com/ <?php echo $theme_opts['facebook']; ?>" ><i class="icon-facebook"></i></a><?php

                ?>

            </div>
            <div class="verticalLine"></div>
            <div class="subscribeForm">
                <div class="title">القائمة البريدية</div>
                <form action="#">
                    <input type="emial" class="emailInp" placeholder="البريد الإلكتروني">
                    <input type="submit" value="إشتراك">
                </form>
            </div>
        </div>
        <div class="one applications">
            <div class="text">
                <div>حمل تطبيق  دوت إمارات </div>
                <div class="links">


                    <?php
                    if (!empty($theme_opts['telegram']))  ?>
                    <a href="https://apple.org/ <?php echo $theme_opts['apple']; ?>" ><i class="icon-apple"></i></a><?php

                    if (!empty($theme_opts['twitter']))
                    ?> <a href="https://android.com/ <?php echo $theme_opts['android']; ?>" ><i class="icon-android"></i></a><?php

                    if (!empty($theme_opts['facebook']))
                    ?> <a href="https://windows.com/ <?php echo $theme_opts['windows']; ?>" ><i class="icon-windows"></i></a><?php

                    ?>

                </div>
            </div>
            <div class="img">
                <img src=" <?php echo get_template_directory_uri().'/assets/images/application.png'?>" alt="">
            </div>
        </div>

    </div>
</footer>




<div class="loading" style="display: none;">
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

    $(document).on('ready', function () {
        $('.loading').css('display', 'none')

    })


</script>


        <?php wp_footer();?>
    </body>
</html>