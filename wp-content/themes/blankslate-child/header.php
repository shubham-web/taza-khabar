<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><?php bloginfo('name'); ?></title>
    <link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri(); ?>/assets/css/style.css" />
    <?php /* wp_head(); */ ?>
</head>

<body>
    <header class="header">
        <div class="logo">
            <?php echo get_custom_logo(); ?>
        </div>
        <div class="navigation">
            <?php wp_nav_menu(["theme_location" => "header-menu"]) ?>
        </div>
        <div class="search">
            <input type="search" placeholder="खोजें" />
        </div>
    </header>