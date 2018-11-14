<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?></title>
    <base href="<?php echo $base; ?>"/>
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; if (isset($_GET['page'])) { echo " -
    ". ((int) $_GET['page'])." ".$text_page;} ?>" /><?php } ?><?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>
    <meta property="og:title" content="<?php echo $title; if (isset($_GET['page'])) { echo " -
    ". ((int) $_GET['page'])." ".$text_page;} ?>" />
    <meta property="og:type" content="website"/>
    <meta property="og:url" content="<?php echo $og_url; ?>"/>
    <?php if ($og_image) { ?>
    <meta property="og:image" content="<?php echo $og_image; ?>"/>
    <?php } else { ?>
    <meta property="og:image" content="<?php echo $logo; ?>"/>
    <?php } ?>
    <meta property="og:site_name" content="<?php echo $name; ?>"/>
    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>

    <!--СТИЛИ-->
    <link rel="stylesheet" href="catalog/view/theme/yaroslavna/stylesheet/bootstrap.css">
    <link rel="stylesheet" href="catalog/view/theme/yaroslavna/stylesheet/header.css">
    <link rel="stylesheet" href="catalog/view/theme/yaroslavna/stylesheet/main.css">
    <link rel="stylesheet" href="catalog/view/theme/yaroslavna/stylesheet/content.css?<?=time()?>">
    <link rel="stylesheet" href="catalog/view/theme/yaroslavna/stylesheet/footer.css">
    <link rel="stylesheet" href="catalog/view/theme/yaroslavna/stylesheet/mobile.css">
    <link rel="stylesheet" href="catalog/view/javascript/jquery/magnific/magnific-popup.css">
    <link href="https://fonts.googleapis.com/css?family=Fira+Sans+Extra+Condensed:300,400,500,600,700,800&amp;subset=cyrillic-ext" rel="stylesheet">
    <!--СТИЛИ КОНЕЦ-->

    <!--JS-->
    <script type="text/javascript" src="catalog/view/theme/yaroslavna/js/svg.js"></script>
    <script type="text/javascript" src="catalog/view/javascript/jquery/magnific/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="catalog/view/theme/yaroslavna/js/main.js?<?=time()?>"></script>
    <script type="text/javascript" src="catalog/view/theme/yaroslavna/js/send.js?<?=time()?>"></script>
    <!--JS КОНЕЦ-->

    <?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>"/>
    <?php } ?>
    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>"/>
    <?php } ?><?php foreach ($scripts as $script) { ?>
    <script src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?><?php foreach ($analytics as $analytic) { ?><?php echo $analytic; ?><?php } ?>

    <script type="text/javascript">!function(){var t=document.createElement("script");t.type="text/javascript",t.async=!0,t.src="https://vk.com/js/api/openapi.js?159",t.onload=function(){VK.Retargeting.Init("VK-RTRG-296107-aNdwQ"),VK.Retargeting.Hit()},document.head.appendChild(t)}();</script><noscript><img src="https://vk.com/rtrg?p=VK-RTRG-296107-aNdwQ" style="position:fixed; left:-999px;" alt=""/></noscript>
</head>
<body class="<?php echo $class; ?>">
<div class="wrapper">
    <section class="header">
        <div class="header-top hidden-xs hidden-sm">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 descriptor">
                        <p>
                            Иконописная мастерская &laquo;Ярославна&raquo;<br> Изготовление рукописных икон и иконостасов
                        </p>
                    </div>
                    <div class="col-md-4">
                        <a href="/" class="header__logo">
                            <img src="catalog/view/theme/yaroslavna/images/logo.svg">
                        </a>
                    </div>
                    <div class="col-md-4 text-right js-mgnf-wrap">
                        <a href="tel:+79106653117" class="header-top__phone">+7 (910) 665-31-17</a>
                        <p class="header-top__txt">Мы можем вам перезвонить</p>
                        <a href="#call" class="btn btn--green header-top__btn js-mgnf">Заказать звонок</a>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar " role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle hidden-lg hidden-md visible-sm visible-xs" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="col-xs-6 hidden-lg hidden-md ">
                        <a href="/" class="header__logo ">
                            <img src="catalog/view/theme/yaroslavna/images/logo.svg" class="img-responsive">
                        </a>
                    </div>

                    <div class="collapse navbar-collapse visible-lg visible-md hidden-sm hidden-xs" id="bs-example-navbar-collapse-1">
                        <div class="row">
                            <div class="menu">
                                <a class="menu__btn" href="/">Главная
                                </a>
                                <a class="menu__btn" href="/products/">
                                    Каталог
                                </a>
                                <a class="menu__btn" href="/about/">
                                    О компании
                                </a>
                                <a class="menu__btn ralign" href="/delivery_payment/">
                                    Доставка
                                </a>
                                <a class="menu__btn ralign" href="/workshop/">
                                    Мастерская
                                </a>
                                <a class="menu__btn" href="/contacts/">
                                    Контакты
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </section>
    <section class="content">
        <div class="container">
            <div class="row">
                <div class="col-md-12">



