  <section class="banner-area relative about-banner" id="home"> 
        <div class="overlay overlay-bg"></div>
        <div class="container">       
          <div class="row d-flex align-items-center justify-content-center">
            <div class="about-content col-lg-12">
              <h1 class="text-white">
                About Us        
              </h1> 
              <p class="text-white link-nav"><a href="index.html">Home </a> <span class="lnr lnr-arrow-right"></span>  <a href="about.html"> About Us</a> <span class="lnr lnr-arrow-right"></span>  <a href="about.html"> Profil</a></p>
            </div>  
          </div>
        </div>
      </section>
      <!-- End banner Area -->

    <!-- Start home-about Area -->
      <section class="home-about-area section-gap">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-lg-4 about-left">
              <img class="img-fluid" src="<?=img_src($set['about_us_img'],'public/profil')?>" alt="">
            </div>
            <div class="col-lg-8 about-right">
              <h1>Our Profile</h1>
              <p><?= $set['about_us'] ?></p>
            </div>
          </div>
        </div>  
      </section>
      <!-- End home-about Area -->
