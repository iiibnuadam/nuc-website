<?php $aset = base_url().'assets/' ?>
<style>
    .section-one{
        background-image: url("<?=$aset?>/images/sectionOne.svg");
        background-size: 70%;
        background-repeat: no-repeat;
        background-position: bottom right;
    }
</style>

<section class="wrapper-slider">
    <div class="ui container">
        <div class="child">
            <div class="table">
                <div class="cell" style="background-image: url('<?= $aset ?>images/muslim.svg')" >
                    <div class="header">NAILUL ULA CENTER PLOSOKUNING</div>
                    <div class="sub-header">Membentuk Mahasantri Yang Bersih, Suci, Fungsional dan Indah</div>
                    <div class="ui divider hidden"></div>
                </div>
            </div>
            <div class="table">
                <div class="cell" style="background-image: url('<?= $aset ?>images/abah.svg'); background-size: contain;">
                    <div class="header">BERILMU <span class="font-bold">AMALIYAH</span>, BERAMAL <span class="font-bold">ILMIYAH</span></div>
                    <div class="sub-header">ALMAGHFURLAH KH. ALI AS'AD</div>
                    <div class="ui divider hidden"></div>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="ui divider hidden"></div>
<div class="ui divider hidden"></div>

<div class="section-one">
<section class="about ui container">
    <div class="ui grid stackable">
        <div class="eight wide column middle aligned">
            <div class="title-section">NAILUL ULA CENTER</div>
            <div class="desc-about">
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium adipisci itaque reprehenderit? Animi
                aspernatur at beatae consequatur culpa ex explicabo fuga harum iure nesciunt pariatur rerum, sed suscipit veritatis voluptatibus.
            </div>
            <div>
                <div class="ui divider hidden"></div>
                <a href="" class="ui button btn-monev radius-25">Details</a>
            </div>
        </div>
        <div class="eight wide column center aligned">
            <lottie-player
                    src="https://assets7.lottiefiles.com/packages/lf20_2SvqX2.json"  background="transparent" style="width: 100%"  speed="1" loop autoplay >
            </lottie-player>
        </div>
    </div>
</section>
<section class="content-new" id="artikel" data-aos="fade-up" data-aos-duration="1200">
    <div class="ui container">
        <div class="ui grid" >
            <div class="sixteen wide column">
                <span class="title-section">Article</span>
            </div>
        </div>
        <div class="ui two column grid stackable">
            <?php foreach ($blog as $key => $value ) { ?>
                <?php if($key==0) { ?>
                    <div class="seven wide column img-content-landing"
                         style="background-image: url('<?= base_url('public/blog_file/'.$value['file']) ?>'), url('<?= $aset ?>images/no-result.png')">
                        <a href="<?= base_url('/article/details/'.$value['id']) ?>" style="color: unset;">
                            <div class="text-absolute">
                                <h2><?= $value['judul'] ?></h2>
                                <span><?= $value['tgl'] ?></span>
                            </div>
                        </a>
                    </div>
            <?php } ?>
            <?php } ?>
            <div class="nine wide column" style="margin-left: 2rem;margin-right: -2rem;">
                <div class="ui one column grid" style="padding-right: 1rem;">
                    <?php foreach ($blog as $key => $value ) { ?>
                    <?php if($key!=0) { ?>
                    <div class="column">
                        <a href="<?= base_url('/article/details/'.$value['id']) ?>" style="color: unset;">
                            <div class="ui grid">
                                <div class="four wide column img-content-small"
                                     style="background-image: url('<?= base_url('public/blog_file/'.$value['file']) ?>'), url('<?= $aset ?>images/no-result.png')">
                                </div>
                                <div class="twelve wide column">
                                    <div class="contact-title">
                                        <?= $value['judul'] ?>
                                    </div>
                                    <div class="desc-content">
                                        <?= $value['tgl'] ?>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                        <?php } ?>
                    <?php } ?>
                </div>
            </div>
        </div>
        <div class="ui grid">
            <div class="ui divider hidden"></div>
            <div class="sixteen wide column right aligned">
                <a href="" class="ui button circular btn-monev" >See More</a>
            </div>
        </div>
        <div class="ui divider hidden"></div>
        <div class="ui divider hidden"></div>
        <div class="ui divider hidden"></div>
    </div>
</section>
</div>
<section class="gallery" id="gallery" data-aos="fade-up" data-aos-duration="1200">
    <div class="ui container">
        <div class="ui grid">
            <div class="sixteen wide column">
                <span class="title-section">Gallery</span>
                <div class="ui divider hidden"></div>
            </div>
        </div>
        <div class="ui five column grid doubling" id="animated-thumbnials">
            <a class="column" href="<?= $aset ?>images/foto1.jpg">
                <img src="<?= $aset ?>images/foto1.jpg" alt=""  class="ui image fluid">
            </a>
            <a class="column" href="<?= $aset ?>images/foto2.jpg">
                <img src="<?= $aset ?>images/foto2.jpg" alt=""  class="ui image fluid">
            </a>
            <a class="column" href="<?= $aset ?>images/foto3.jpg">
                <img src="<?= $aset ?>images/foto3.jpg" alt=""  class="ui image fluid">
            </a>
            <a class="column" href="<?= $aset ?>images/foto4.jpg">
                <img src="<?= $aset ?>images/foto4.jpg" alt=""  class="ui image fluid">
            </a>
            <a class="column" href="<?= $aset ?>images/foto5.jpg">
                <img src="<?= $aset ?>images/foto5.jpg" alt=""  class="ui image fluid">
            </a>
            <a class="column" href="<?= $aset ?>images/foto6.jpg">
                <img src="<?= $aset ?>images/foto6.jpg" alt=""  class="ui image fluid">
            </a>
            <a class="column" href="<?= $aset ?>images/foto7.jpg">
                <img src="<?= $aset ?>images/foto7.jpg" alt=""  class="ui image fluid">
            </a>
            <a class="column" href="<?= $aset ?>images/foto8.jpg">
                <img src="<?= $aset ?>images/foto8.jpg" alt=""  class="ui image fluid">
            </a>
            <a class="column" href="<?= $aset ?>images/foto9.jpg">
                <img src="<?= $aset ?>images/foto9.jpg" alt=""  class="ui image fluid">
            </a>
            <a class="column" href="<?= $aset ?>images/foto10.jpg">
                <img src="<?= $aset ?>images/foto10.jpg" alt=""  class="ui image fluid">
            </a>

        </div>
    </div>
    <div class="ui divider hidden"></div>
    <div class="ui divider hidden"></div>
    <div class="ui divider hidden"></div>
</section>

<section class="ui container" data-aos="fade-up" data-aos-duration="1200">
    <div class="ui grid">
        <div class="sixteen wide column">
            <span class="title-section">Lembaga Kami</span>
        </div>
    </div>
    <div class="ui grid stackable">
        <div class="eight wide column">
            <div class="ui grid four column">
                <div class="column">
                    <img src="<?= $aset ?>images/nuc.png" class="ui image circular" alt="">
                </div>
                <div class="column">
                    <img src="<?= $aset ?>images/lpq.jpeg" class="ui image circular" alt="">
                </div>
                <div class="column">
                    <img src="<?= $aset ?>images/square-image.png" class="ui image circular" alt="">
                </div>
                <div class="column">
                    <img src="<?= $aset ?>images/square-image.png" class="ui image circular" alt="">
                </div>
            </div>
        </div>
    </div>
    <div class="ui divider hidden"></div>
    <div class="ui divider hidden"></div>
    <div class="ui divider hidden"></div>
</section>
