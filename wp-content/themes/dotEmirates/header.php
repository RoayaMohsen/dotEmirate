    <?php
        $theme  =   get_option('theme');

    ?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">

    <title>dotemirates</title>


<?php  wp_head()   ?>
</head>
<body class="">

<header id="header">

    <div class="top ">
        <div class="gridContainer clearfix">
            <h1 class="logo pullRight"><img src="images/logo.png" alt=""></h1>
            <div class="leftArea pullLeft">

                <div class="one search">
                    <div class="icon"><i class="icon-search"></i></div>
                    <div class="searchForm" style="    position: absolute;
    top: -6px;
    left: -6px;
    border: 1px solid #e9e9e9;
    padding: 0;
    z-index: 99;
    width: 200px;
    display: none;">
                        <form action="#" method="get" id="main_search_form" class="main_search_form">
                            <input type="text" name="keyword" value="" placeholder="بحث">
                            <input type="hidden" name="from" value="dot">
                            <!--<input type="submit" value="">-->
                        </form>
                    </div>
                </div>
                <div class="one mainSocial">
                    <a href="#"><i class="icon-telegram"></i></a>
                    <a href="#"><i class="icon-twitter"></i></a>
                    <a href="#"><i class="icon-facebook"></i></a>
                </div>
                <div class="one widgets clearfix">
                    <div class="oneWidget">
                        <span class="icon"><i class="icon-economy"></i></span>
                    </div>
                    <div class="oneWidget">
                        <span class="icon"><i class="icon-weather"></i></span>
                    </div>
                    <div class="oneWidget">
                        <span class="icon"><i class="icon-pray"></i></span>
                    </div>
                    <div class="oneWidget">
                        <span class="icon"><i class="icon-currencies"></i></span>
                    </div>
                    <div class="oneWidget">
                        <span class="icon"><i class="icon-gas"></i></span>
                    </div>
                </div>
                <div class="one"><a href="#">EN</a></div>

            </div>
        </div>
    </div>

    <nav id="navigation">
        <div class="gridContainer clearfix">
            <div class="menuIcon"><div><span></span><span></span><span></span></div><span class="text">القائمة</span></div>
            <div class="theMenu relative">
                <ul class="clearfix">
                    <li>
                        <a href="#"><i class="icon-home"></i> <span>الرئيسية</span></a>
                    </li>
                    <li>
                        <a href="#"><i class="icon-emirates"></i> <span>الإمارات</span></a>
                    </li>
                    <li>
                        <a href="#"><i class="icon-world"></i> <span>العالم</span></a>
                    </li>
                    <li>
                        <a href="#"><i class="icon-money"></i> <span>مال وأعمال</span></a>
                    </li>
                    <li>
                        <a href="#"><i class="icon-sport"></i> <span>رياضة</span></a>
                    </li>
                    <li>
                        <a href="#"><i class="icon-science"></i> <span>علوم وتكنولوجيا</span></a>
                    </li>


                    <li>
                        <a href="#"><i class="icon-lifestyle"></i> <span>لايف ستايل</span></a>
                    </li>
                    <li>
                        <a href="#"><i class="icon-art"></i> <span>فن وثقافة</span></a>
                    </li>
                    <li>
                        <a href="#"><i class="icon-accidents"></i> <span>حوادث وقضايا</span></a>
                    </li>
                    <li>
                        <a href="#"><i class="icon-health"></i> <span>الصحة</span></a>
                    </li>
                    <li>
                        <a href="#"><i class="icon-articles"></i> <span>المقالات</span></a>
                    </li>
                </ul>
                <div class="seeMore" onClick="sliceMenu()"><i class="icon-arrow-right"></i> <span>المزيد</span><span class="back">الرجوع</span></div>
            </div>

        </div>

    </nav>

</header>