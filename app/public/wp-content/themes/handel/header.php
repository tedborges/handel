<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title><?php bloginfo('name') ?> <?php wp_title(' | '); ?></title>
  <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>

<?php

    $img_url = get_stylesheet_directory_uri() . '/img';

    $cart_count = WC()->cart->get_cart_contents_count();

?>

<header class="header container">
    <a href="/"> 
        <img src="<?= $img_url ?>/handel.svg" alt="Handel" />
    </a>

    <div class="search-class">
        <form action="<?php bloginfo('url'); ?>/loja/" method="get">
            <input type="text" name="s" id="s" placeholder="Search" value="<?php the_search_query(); ?>" />
            <input type="text" name="post_type" value="product" class="hidden" />
            <input type="submit" id="searchbutton" value="Search" />
        </form>
    </div>

    <nav class="account">
        <a href="/minha-conta" class="my-account">Minha Conta</a>
        <a href="/carrinho" class="my-cart">Carrinho
            <?php if($cart_count) { ?>

            <span class="cart-count"><?= $cart_count; ?></span>

            <?php } ?>
        </a>
    </nav>
</header>