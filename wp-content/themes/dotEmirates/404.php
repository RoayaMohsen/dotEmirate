
<?php  get_header()  ?>



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
    <div class="errorPage">
        <div class="in">
            <div><img src="<?php echo get_template_directory_uri().'/assets/images/404.png'?>" alt=""></div>
            <div class="number">404</div>
            <div class="name">الصفحة غير موجودة</div>
            <div class="description">عذرا ، ولكن الصفحة التي كنت تبحث عنها لم يتم العثور عليها. حاول التحقق من URL للخطأ ، ثم اضغط على زر التحديث في المتصفح الخاص بك أو حاول العثور على شيء آخر في موقعنا .</div>
            <div class="brand-color">سيتم تحويلك</div>
        </div>
    </div>
</div>

<?php get_footer() ?>
</body>
</html>


