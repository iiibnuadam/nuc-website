<?php $aset = base_url().'assets/' ?>
  <!DOCTYPE html>
  <html lang="en">
  <head>
    <link rel="apple-touch-icon" sizes="180x180" href="<?= $aset ?>/images/favicon.ico">
    <link rel="icon" type="image/png" sizes="32x32" href="<?= $aset ?>/images/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<?= $aset ?>/images/favicon-16x16.png">
    <link rel="manifest" href="<?= $aset ?>/img/site.webmanifest">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/fav.png">
    <!-- Author Meta -->
    <meta name="author" content="colorlib">
    <!-- Meta Description -->
    <meta name="description" content="">
    <!-- Meta Keyword -->
    <meta name="keywords" content="">
    <!-- meta character set -->
    <meta charset="UTF-8">
    <!-- Site Title -->
     <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
     <link rel="stylesheet" type="text/css" href="<?= $aset ?>semantic/semantic.min.css">
     <script src="<?= $aset ?>vendor/jquery-3.1.1.min.js"></script>
      <link rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Nunito">
     <link rel="stylesheet" type="text/css" href="<?= $aset ?>vendor/aos/dist/aos.css"/>
      <script src="<?= $aset ?>vendor/aos/dist/aos.js"></script>
      <script src="<?= $aset ?>semantic/semantic.min.js" async defer></script>
      <link rel="stylesheet" href="<?= $aset ?>../public/css/nuc.css">
      <link rel="stylesheet" href="<?= $aset ?>vendor/slick/slick.css">
      <link rel="stylesheet" href="<?= $aset ?>vendor/slick/slick-theme.css">
      <link type="text/css" rel="stylesheet" href="<?= $aset ?>vendor/lightgallery/css/lightgallery.css" />
      <title>Nailul Ula Center - Plosokuning</title>

    </head>
    <body>
    <div class="pusher">
        <div class="ui sidebar vertical menu">
            <a class="item logo" style="padding-left: 1rem !important;">
                <img class="ui avatar image" src="<?= $aset ?>images/nuc.png">
                <span class="font-bold">NUC PLOSOKUNING</span>
            </a>

            <div class="item">
                <a href="/" class="link color-blue">
                    Home
                </a>
            </div>
            <div class="item">
                <a href="#artikel" class="link color-blue">
                    Article
                </a>
            </div>
            <div class="item">
                <a href="/#dokumen" class="link color-blue">
                    Gallery
                </a>
            </div>

        </div>
        <div class="bg-menu">
            <!-- Main Header -->
            <?php $this->load->view('template/header.php') ?>
        </div>
        <!-- =============  content view ================= -->
        <?php if(isset($content_view)) $this->load->view($content_view)?>
        <!-- =============  content view ================= -->

        <!--footer-->
        <?php $this->load->view('template/footer.php') ?>

    </div>



  <script src="<?= $aset ?>vendor/slick/slick.min.js"></script>
  <script src="<?= $aset ?>vendor/lightgallery/js/lightgallery.min.js"></script>
    <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
    </body>
  <script>
      $(document).ready(function() {
          AOS.init();
          $("#mobile-item").click(function () {
              $('.ui.sidebar').sidebar('toggle');
          });
          $('.wrapper-slider .ui.container .child').slick({
              dots: true,
              autoplay: true,
              arrow: true,
          });
          lightGallery(document.getElementById('animated-thumbnials'), {
              thumbnail:true,
              animateThumb: false,
              showThumbByDefault: false
          });
      });
  </script>

</html>
