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

<div class="inContent">
    <div class="gridContainer">

        <div class="aboutPages">

            <div class="top textCentered">
                <img src="  <?php echo get_template_directory_uri().'/assets/images/callus.png' ?>" alt="">
                <div>إتصل بنا</div>
            </div>

            <div class="tabs textCentered">
                <div class="current">إتصل بنا <i class="icon-arrow-down"></i></div>
                <div class="in">
                    <a href="http://localhost/dotEmirate/?page_id=120">شروط وأحكام</a>
                    <a href="http://localhost/dotEmirate/?page_id=102">إتفاقية الخصوصية</a>
                    <a href="http://localhost/dotEmirate/?page_id=117">إتفاقية ملفات الإوتباط</a>
                    <a href="http://localhost/dotEmirate/?page_id=108">الأسئلة الشائعة</a>
                    <a href="http://localhost/dotEmirate/?page_id=98" class="active">إتصل بنا</a>
                </div>
            </div>

            <div class="mrgBtm clearfix">
                <div class="myrow clearfix">
                    <div class="mycol-lg-6">
                        <form id="form"  class="mrgBtm-lg">
                            <div class="myrow clearfix">
                                <div class="mycol-lg-12">
                                    <select class="formItem mrgBtm">
                                        <option value="0">اتصل بنا</option>
                                    </select>
                                </div>
                                <div class="mycol-sm-6">
                                    <input type="text" class="formItem mrgBtm" placeholder="الإسم" id="name" name="name">
                                </div>
                                <div class="mycol-sm-6">
                                    <input type="email" class="formItem mrgBtm" placeholder="البريد الإلكتروني" id="email" name="email" >
                                </div>
                                <div class="mycol-sm-6">
                                    <input type="number" class="formItem mrgBtm" placeholder="الهاتف الجوال" id="mobile" name="mobile">
                                </div>
                                <div class="mycol-sm-6">
                                    <input type="text" class="formItem mrgBtm" placeholder="المكان" id="place" name="place">
                                </div>
                                <div class="mycol-lg-12">
                                    <textarea class="formItem textarea mrgBtm" placeholder="الرسالة" id="message" name="message"></textarea>
                                    <input type="submit" class="formItem submit" value="إرسال">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="mycol-lg-6 ">
                        <div class="mrgBtm-lg">
                            <div class="brand-color mrgBtm-md">للتواصل والمعلومات</div>
                            <a href="#"><?php echo get_post_meta(get_the_ID(),'info',true); ?></a>
                        </div>
                        <div class="mrgBtm-lg">
                            <div class="brand-color mrgBtm-md">للشئون التحريرية</div>
                            <a href="#"><?php echo get_post_meta(get_the_ID(),'writing',true); ?> </a>
                        </div>
                        <div class="mrgBtm-lg">
                            <div class="brand-color mrgBtm-md">للإعلانات</div>
                            <a href="#"> <?php echo get_post_meta(get_the_ID(),'advertisement',true); ?> </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="textCentered"><img src="<?php echo get_template_directory_uri().'/assets/images/attractions.jpg' ?>" alt=""></div>

        </div>
    </div>
</div>
<?php get_footer() ?>


