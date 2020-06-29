<?php $aset = base_url().'assets/'?>

<section class="header-banner vertical center aligned">
    <div class="ui container">
        <div class="ui grid">
            <div class="sixteen wide column">
                <div class="ui divider hidden"></div>
                <div class="ui breadcrumb">
                    <a href="<?= base_url('') ?>" class="section">Home</a>
                    <div class="divider"> / </div>
                    <div class="active section">Artikel</div>
                    <div class="divider"> / </div>
                    <div class="active section">Detail Artikel</div>
                </div>
            </div>
            <div class="sixteen wide column">
                <div class="img-banner" style="background-image: url('<?= base_url('public/blog_file/'.$blog['file']) ?>')"></div>
                <div class="text-absolute">
                    <div class="title-company"><?= $blog['judul'] ?></div>
                    <div><?= $blog['tgl'] ?></div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="ui grid container center aligned mar-custom">
    <div class="ten wide tablet twelve wide computer sixteen wide mobile column justified">
        <p class="text">
            <?= strip_tags($blog['deskripsi'],'<pre />') ?>
        </p>
    </div>
    
</section>

<section class="related ui container">
    <div class="sixteen wide column">
        <span class="title-section">Related Article</span>
    </div>
    <br>
    <div class="ui four stackable cards">
        <?php foreach ($related as $key => $value ) { ?>
        <div class="card">
            <a class="image img-related" href="<?= base_url('/article/details/'.$value['id']) ?>"
               style="background-image: url('<?= base_url('public/blog_file/'.$value['file']) ?>'), url('<?= $aset ?>images/no-result.png')">
            </a>
            <div class="content">
                <a class="header title-related" href="#"><?= $value['judul'] ?></a>
                <div class="meta content-related">
                    <a><?= substr(strip_tags($value['deskripsi'],'<pre />'),100); ?></a>
                </div>
            </div>
        </div>
        <?php } ?>
    </div>
</section>
<script type='text/javascript' src='https://platform-api.sharethis.com/js/sharethis.js#property=5e645be58b2dd8001192a977&product=sticky-share-buttons&cms=sop' async='async'></script>
