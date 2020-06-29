<?php $aset = base_url().'assets/' ?>
<div class="ui sidebar vertical menu">
    <a class="item logo" style="padding-left: 1rem !important;">
        <img class="ui avatar image" src="<?= $aset ?>/images/nuc.png">
        <span class="font-bold">MONEV NG</span>
    </a>

    <div class="item">
        <a href="<?= base_url('') ?>" class="link color-blue">
            Beranda
        </a>
    </div>
    <div class="item">
        <a href="<?= base_url('/') ?>#artikel" class="link color-blue">
            Artikel
        </a>
    </div>
    <div class="item">
        <a href="<?= base_url('') ?>/#dokumen" class="link color-blue">
            Dokumen
        </a>
    </div>
    <div class="menu-bottom width-full">
        <div class="item bg-blue-monev btn-modal-login" data-toggle="modal">
            <div class="link">
                <i class="sign in alternate icon"></i>login
            </div>
        </div>
    </div>
</div>
<section class="ui container">
    <div class="ui secondary menu middle aligned menu-top">
        <a href="<?= base_url('') ?>" class="item logo">
            <img src="<?= $aset ?>images/nuc.png" class="logo mini ui image" alt="monev-ng">
            <span class="logo-top"><span class="color-blue">NUC PLOSOKUNING</span></span>
        </a>
        <div class="mobile only item bars-menu right">
            <a id="mobile-item" class="item"><i class="large bars icon color-blue"></i></a>
        </div>
        <div class="right menu right-menu mobile hidden">
            <div class="item">
                <a href="<?= base_url('') ?>" class="link">
                    Home
                </a>
            </div>
            <div class="item">
                <a href="<?= base_url('/') ?>#artikel" class="link">
                    Article
                </a>
            </div>

            <div class="item">
                <a href="<?= base_url('/') ?>#gallery" class="link">
                    Galery
                </a>
            </div>
            <div class="item pad-l-r-zero">
                <a class="ui button btn-blue btn-modal-login" href="<?= base_url('/backend') ?>" data-toggle="modal">
                    LOGIN
                </a>
            </div>
        </div>
    </div>
</section>
