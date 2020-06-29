<?php 
function debug($e='debug mode'){
  echo "<pre>";
  print_r ($e);
  echo "</pre>";
  exit;
}
function base_url($url=null){ 
  $url_path = "http://".$_SERVER['SERVER_NAME']."/abp1";
  if ($url) $url_path .= '/'.$url;
  return $url_path;
   }

$t_data = array(
  'src'   => base_url().'/',
  'title' => 'ABP'
  );

$place = "https://unsplash.it/";
$place1 = "https://placehold.it/";

$content = 'home.php';
if (isset($_GET['id']))   $content = $_GET['id'].".php";

?>

<!DOCTYPE html>
<html>
<head>
<title><?=$t_data['title']?></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="<?=$t_data['src']?>css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,500,700" rel="stylesheet"> 
<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Raleway" />

<link href="<?= base_url() ?>/font-awesome-4.6.2/css/font-awesome.min.css" rel="stylesheet">
<link href="<?=$t_data['src']?>owl-carousel/owl.carousel.css" rel="stylesheet">
<link href="<?=$t_data['src']?>owl-carousel/owl.theme.css" rel="stylesheet">
<link href="<?=$t_data['src']?>css/jasny-bootstrap.min.css" rel="stylesheet" media="screen">

<link href="<?=$t_data['src']?>css/style.css" rel="stylesheet">
<!-- <style>
  ul.navi {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    padding: 0 5%;
    overflow-x: auto;
    -webkit-overflow-scrolling: touch;
    width: 100%;
    padding : 0 10px;
    height: 45px;
  }
  ul.navi li {
    flex-shrink: 0;
  }
</style> -->

</head>
<body>
<header class="main__header">
    <div class="container">
      <div class="navmenu navmenu-default navmenu-fixed-left offcanvas-sm pull-right">
        <!-- <a class="navmenu-brand" href="#"><img src="<?=$template?>images/logo.png" alt=""></a> -->
      <!--   <div data-toggle="offcanvas" data-target=".navmenu" class="row nav-tombol">
          Main Menu<span ></span>
        </div> -->
        <ul class="nav navbar-nav ">
          <li><a class="active" href="index.php">Home</a></li>
        <?php 
         $menus = array('Tentang ABP','Fasilitas','Berita','Tenant','Tim & Partner', 'Galeri', 'Testimoni','Kontak');
          foreach ($menus as $key => $value) echo "<li><a href='#$key'>$value</a></li>";
        ?>
          <li class="dropdown"> 
            <a href="index.php" class="dropdown-toggle" data-toggle="dropdown">More <i class="caret"></i></a>
            <ul class="dropdown-menu">
              <li><a href="">page</a></li>
              <li><a href="">page</a></li>
            </ul>
          </li>
        </ul> 
      </div>
    </div>

  <div class="container">

    <nav class="navbar navbar-default" role="navigation"> 
      <div class="navbar-header">
        <h1 class="navbar-brand">
          <a href="<?=base_url()?>">
            <img src="<?=base_url('images/Logo.png')?>" alt="logo">  
          </a>
        </h1>
          <button type="button" class="navbar-toggle" data-toggle="offcanvas" data-target=".navmenu">
            <span class="fa fa-align-justify fa-lg"></span>
          </button>
        <!-- <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1,#bs-example-navbar-collapse-2"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button> -->
      </div>
      <div class="navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav navi">
          <li><a class="active" href="index.php">Home</a></li>
        <?php 
         $menus = array('Tentang ABP','Fasilitas','Berita','Tenant','Tim & Partner', 'Galeri', 'Testimoni','Kontak');
          foreach ($menus as $key => $value) echo "<li><a href='#$key'>$value</a></li>";
        ?>
          <li class="dropdown"> 
            <a href="index.php" class="dropdown-toggle" data-toggle="dropdown">More <i class="caret"></i></a>
            <ul class="dropdown-menu">
              <li>  
            <a href="index.php" class="dropdown-toggle" data-toggle="dropdown">More <i class="caret"></i></a>
              <!-- <a href="">page</a> -->
                  <ul class="dropdown-menu">
                    <li><a href="">page</a></li>
                    <li><a href="">page</a></li>
                  </ul>
              </li>
              <li><a href="">page</a></li>
            </ul>
          </li>
        </ul>
      </div>
      <!-- /.navbar-collapse --> 
    </nav>
  </div>
</header>

<?php include $content; ?>

<footer >
  <div class="container" >
    <div class="row" >      
      <h3 class="page__title">kontak kami</h3>
      <span class="sep"></span>
    
      <div class="col-lg-3 col-md-5">
          <div class="footer-img pull-left"> 
            <img class="img-responsive" src="<?=base_url('images/logo_footer.png')?>" alt="ABP">
          </div>
      </div>
    
      <div class="col-lg-5 col-md-7">
        <ul class="list-unstyled">
          <li><b>Amikom Business Park</b></li>
          <li>Gedung Unit V Lantai Basement UNIVERSITAS AMIKOM YOGYAKARTA</li>
          <li class="space" style="padding: 5px"></li>
          <li>Jl. Ring Road Utara, Condong Catur, Sleman</li>
          <li>Daerah Istimewa Yogyakarta</li>
          <li>Indonesia</li>
          <li>55283</li>
        </ul>
      </div>
    
      

      <div class="col-lg-4 col-md-12">
        <p><strong>Kontak Resmi Kami</strong></p>
  
        <table class="kontak">
          <tr>
            <td class="center"><span class="fa fa-phone"></span></td>
            <td>
              <a href="">(0274)1357</a>
            </td>
          </tr>
          <tr>
            <td  class="center"><span class="fa fa-envelope-o"></span></td>
            <td>
              <a href="">incubator@amikom.ac.id</a>
            </td>
          </tr>
          <tr>
            <td  class="center"><span class="fa  fa-paper-plane-o"></span></td>
            <td>
              <a href="">Buka Petunjuk Lokasi</a>
            </td>
          </tr>
        </table>

      </div>

        

    </div>
  </div>
      
  <div class="footer-icon">
    <div class="container">
      <div class="col-md-9">
        Copyright©2017. Amikom Business Park Startup Incubator Development Team. 
   
      </div>
      <div class="social_icons col-md-3"> 
        <?php 
        $icons = array('facebook','twitter','linkedin-square','google-plus','instagram');
        foreach ($icons as $icon) {
          echo " <a href='#' class='fa fa-$icon'></a> ";
        }
      ?>
      </div>
    </div>
   </div>
</footer>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script type="text/javascript" src="<?=$t_data['src']?>js/jquery.min.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="<?=$t_data['src']?>js/own.js"></script> 
<script src="<?=$t_data['src']?>js/bootstrap.min.js"></script> 
<script src="<?=$t_data['src']?>js/jasny-bootstrap.min.js"></script>

<script src="<?=$t_data['src']?>js/jquery.mixitup.min.js"></script> 

<script src="<?=$t_data['src']?>owl-carousel/owl.carousel.js"></script>

<?php if (isset($js_script)) {
  echo $js_script;
} ?>

<script>
$(document).ready(function() {

<?php if (isset($js_ready)) {
  echo $js_ready;
} ?>

  
    $('.navbar-nav a.dropdown-toggle').on('click', function(e) {
      var $el = $(this);
      var $parent = $(this).offsetParent(".dropdown-menu");
      $(this).parent("li").toggleClass('open');

      if(!$parent.parent().hasClass('nav')) {
        var left = $parent.outerWidth() - 4;
        $el.next().css('position','relative');
      }

      $('.nav li.open').not($(this).parents("li")).removeClass("open");

      return false;
    });

  $("#testimoni").owlCarousel({

  navigation : false,
  slideSpeed : 300,
  paginationSpeed : 400,
  singleItem : true,
  autoPlay:false
  });

$('.carousel').carousel({
  interval: 3500, // in milliseconds
  pause: 'none' // set to 'true' to pause slider on mouse hover
})

$('#Grid').mixitup();
    

});
</script>
</body>
</html>