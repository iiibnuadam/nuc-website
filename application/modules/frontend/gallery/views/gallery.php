  <section class="banner-area relative about-banner" id="home"> 
        <div class="overlay overlay-bg"></div>
        <div class="container">       
          <div class="row d-flex align-items-center justify-content-center">
            <div class="about-content col-lg-12">
              <h1 class="text-white">
                Project Gallery        
              </h1> 
              <p class="text-white link-nav"><a href="index.html">Home </a> <span class="lnr lnr-arrow-right"></span>  <a href="about.html"> Project Gallery</a></p>
            </div>  
          </div>
        </div>
      </section>
      <!-- End banner Area -->

      <!-- Start image-gallery Area -->
      <section class="image-gallery-area section-gap" id="gallery">
        <div class="container">
          <div class="row section-title">
            <h1>Project Gallery</h1>
          </div>          
          <div class="row">
            <?php foreach ($gallery as $value): ?>
              
            <div class="col-lg-4 single-gallery">
              <a href="<?= img_src($value['file'],'public/gallery/'.$value['album'])?>" class="img-gal"><img class="img-fluid"  src="<?= img_src('crop_'.$value['file'],'public/gallery/'.$value['album'].'/thumb')?>" alt="<?=$value['album']?>"></a>
            </div>  
                   
            <?php endforeach ?>
          </div>
          <div class="col-lg-12 text-center">
            <?php 
            echo $this->pagination->create_links();
            ?>
          </div>
        </div>  
      </section>
      <!-- End image-gallery Area -->