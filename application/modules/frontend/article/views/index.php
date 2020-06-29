<?php $aset = base_url().'assets/' ?>

<section class="header-blacklist" style="background-image: url(<?= base_url('assets/images/bg-list-article.svg') ?>)">
    <div class="ui grid" style="height: 120px; margin-top: 0px;">
        <div class="sixteen wide column middle aligned center aligned">
            <h2>Daftar Artikel</h2>
        </div>
    </div>
</section>

<section class="list-article" style="background: #f9f9f9;">
    <div class="ui container">
        <div class="ui grid stackable">
            <div class="sixteen wide column">
                <div class="ui divider hidden"></div>
                <div class="ui breadcrumb">
                    <a href="<?= base_url('') ?>" class="section">Home</a>
                    <div class="divider"> / </div>
                    <div class="active section">Artikel</div>
                    <input type="hidden" id="offset" class="offset" value="0" >
                    <input type="hidden" id="limit" class="limit" value="4" >
                </div>
            </div>
            <div class="sixteen wide column">
            </div>
            <div class="ten wide column content-wrapper-article" style="padding-top: 1rem;">
                <div class="ui one column grid artikelku margin-zero">
                    <?php foreach ($blog as $value) { ?>
                    <div class='column ui card '>
                        <div class='ui grid'>
                            <div class='four wide column padding-zero img-list'
                                 style="background-image: url('<?= base_url('public/blog_file/'.$value['file']) ?>'), url('<?= $aset ?>images/no-result.png')">
                                <div class="ui divider hidden"></div>
                             </div>
                            <div class='twelve wide column left aligned'>
                                <a href="<?= base_url('articles/details/'.$value['id']) ?>}">
                                    <div class='date'><?= $value['tgl'] ?></div>
                                    <div class='title-article'><?= $value['judul'] ?></div>
                                    <div class='desc'><?= substr($value['deskripsi'],100) ?></div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                </div>
            </div>
            <div class="six wide column">
                <div class="sixteen wide column">
                    <div class="ui icon input width-full">
                        <i class="search icon"></i>
                        <input type="text" placeholder="Search...">
                    </div>
                </div>

                <div class="column">
                    <div class="title-sidebar f-24">Artikel Populer</div>
                </div>
                <?php foreach ($populer as $value) { ?>
                <div class="column wrapper-sidebar" style="padding-bottom: 2rem;">
                    <a href="<?= base_url('articles/details/'.$value['id']) ?>}" class="ui grid">
                        <div class="three wide column img-sidebar"
                             style="background-image: url('<?= base_url('public/blog_file/'.$value['file']) ?>'), url('<?= $aset ?>images/no-result.png')">
                        </div>
                        <div class="thirteen wide column pad-t-zero">
                            <div class="title-content-sidebar">
                                <div><?= $value['judul'] ?></div>
                            </div>
                        </div>
                    </a>
                </div>
                <?php } ?>
            </div>
        </div>
        <div class="ui two column grid stackable">
            <div class="ui right aligned eleven wide column wrapper-component-pagination">
                <?php
                echo $this->pagination->create_links();
                ?>
            </div>
        </div>
    </div>
</section>
