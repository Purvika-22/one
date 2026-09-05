<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Modern MY E-Commerce</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Manrope:wght@600;700;800&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* =========================
   GLOBAL
========================= */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: "DM Sans", sans-serif;
    color: #171717;
    background: #ffffff;
    line-height: 1.5;
}

button,
input {
    font: inherit;
}

button {
    cursor: pointer;
    border: none;
}

a {
    text-decoration: none;
    color: inherit;
}

img {
    max-width: 100%;
    display: block;
}

.container {
    width: min(1240px, calc(100% - 40px));
    margin: auto;
}


/* =========================
   TOP BAR
========================= */

.topbar {
    background: #171717;
    color: white;
    font-size: 12px;
    padding: 8px 0;
}

.topbar .container {
    display: flex;
    justify-content: space-between;
}


/* =========================
   HEADER
========================= */

header {
    position: sticky;
    top: 0;
    z-index: 100;
    background: rgba(255,255,255,.96);
    backdrop-filter: blur(12px);
    border-bottom: 1px solid #e8e8e4;
}

.header {
    height: 74px;
    display: flex;
    align-items: center;
    gap: 28px;
}

.logo {
    display: flex;
    align-items: center;
    gap: 9px;
    font-family: Manrope, sans-serif;
    font-size: 22px;
    font-weight: 800;
}

.logo-mark {
    width: 38px;
    height: 38px;
    border-radius: 11px;
    background: #ff5a36;
    color: white;
    display: grid;
    place-items: center;
}

.logo em {
    color: #ff5a36;
    font-style: normal;
}

.nav {
    display: flex;
    gap: 5px;
    flex: 1;
}

.nav a {
    padding: 9px 13px;
    border-radius: 10px;
    color: #555;
    font-size: 14px;
    font-weight: 600;
}

.nav a:hover,
.nav a.active {
    background: #f6f6f3;
    color: #171717;
}


/* =========================
   SEARCH
========================= */

.header-right {
    display: flex;
    align-items: center;
    gap: 9px;
}

.search {
    width: 250px;
    height: 42px;

    display: flex;
    align-items: center;
    gap: 8px;

    padding: 0 12px;

    background: #f6f6f3;
    border-radius: 12px;
}

.search input {
    width: 100%;
    border: none;
    outline: none;
    background: transparent;
    font-size: 13px;
}

.icon-btn {
    width: 42px;
    height: 42px;

    border: 1px solid #e8e8e4;
    border-radius: 12px;

    display: grid;
    place-items: center;

    background: white;
    position: relative;
}

.icon-btn:hover {
    background: #f6f6f3;
}

.badge-count {
    position: absolute;

    right: -5px;
    top: -5px;

    min-width: 19px;
    height: 19px;

    padding: 0 5px;

    border-radius: 50px;

    background: #ff5a36;
    color: white;

    font-size: 10px;
    font-weight: bold;

    display: grid;
    place-items: center;
}


/* =========================
   HERO
========================= */

.hero {
    margin-top: 24px;

    min-height: 480px;

    border-radius: 24px;

    overflow: hidden;

    position: relative;

    display: flex;
    align-items: center;

    background: #171717;
}

.hero-bg {
    position: absolute;
    inset: 0;

    background:
        url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85")
        center / cover;
}

.hero::after {
    content: "";

    position: absolute;
    inset: 0;

    background:
        linear-gradient(
            90deg,
            rgba(10,10,10,.9),
            rgba(10,10,10,.65),
            rgba(10,10,10,.1)
        );
}

.hero-content {
    position: relative;
    z-index: 2;

    color: white;

    max-width: 650px;

    padding: 70px 0;
}

.eyebrow {
    display: inline-flex;

    padding: 7px 12px;

    border-radius: 50px;

    background: rgba(255,90,54,.16);
    border: 1px solid rgba(255,90,54,.4);

    color: #ffb6a5;

    font-size: 12px;
    font-weight: bold;
}

.hero h1 {
    font-family: Manrope, sans-serif;

    font-size: clamp(42px, 6vw, 72px);

    line-height: 1.02;

    letter-spacing: -2.5px;

    margin: 20px 0;
}

.hero p {
    color: #d5d5d5;

    font-size: 17px;

    max-width: 530px;
}

.hero-actions {
    display: flex;
    gap: 12px;

    margin-top: 28px;
}


/* =========================
   BUTTONS
========================= */

.btn {
    min-height: 46px;

    padding: 0 20px;

    border-radius: 12px;

    display: inline-flex;
    align-items: center;
    justify-content: center;

    gap: 8px;

    font-size: 14px;
    font-weight: 700;

    transition: .2s;
}

.btn-primary {
    background: #ff5a36;
    color: white;
}

.btn-primary:hover {
    background: #e44726;
    transform: translateY(-2px);
}

.btn-light {
    background: white;
    color: #171717;
}

.btn-light:hover {
    background: #f1f1ef;
}


/* =========================
   TRUST
========================= */

.trust {
    display: grid;

    grid-template-columns: repeat(4,1fr);

    margin-top: 24px;

    border: 1px solid #e8e8e4;

    border-radius: 16px;
}

.trust-item {
    display: flex;

    align-items: center;

    gap: 12px;

    padding: 18px 20px;

    border-right: 1px solid #e8e8e4;
}

.trust-item:last-child {
    border-right: none;
}

.trust-icon {
    width: 38px;
    height: 38px;

    border-radius: 10px;

    background: #fff8f3;

    color: #ff5a36;

    display: grid;
    place-items: center;
}

.trust strong {
    display: block;
    font-size: 13px;
}

.trust small {
    color: #777;
    font-size: 11px;
}


/* =========================
   SECTION
========================= */

.section {
    padding-top: 70px;
}

.section-head {
    display: flex;

    justify-content: space-between;

    align-items: end;

    margin-bottom: 26px;
}

.section-head h2 {
    font-family: Manrope, sans-serif;

    font-size: 30px;

    letter-spacing: -1px;
}

.section-head p {
    color: #777;

    font-size: 14px;
}


/* =========================
   CATEGORIES
========================= */

.categories {
    display: grid;

    grid-template-columns: repeat(6,1fr);

    gap: 13px;
}

.category {
    background: white;

    border: 1px solid #e8e8e4;

    border-radius: 16px;

    padding: 21px 10px;

    text-align: center;

    transition: .2s;
}

.category:hover {
    transform: translateY(-4px);

    border-color: #ffb3a3;

    box-shadow: 0 10px 35px rgba(0,0,0,.07);
}

.category-icon {
    width: 52px;
    height: 52px;

    margin: auto;
    margin-bottom: 12px;

    border-radius: 15px;

    background: #f6f6f3;

    display: grid;
    place-items: center;

    font-size: 20px;
}

.category h3 {
    font-size: 13px;
}

.category p {
    color: #999;
    font-size: 11px;
}


/* =========================
   PRODUCTS
========================= */

.products {
    display: grid;

    grid-template-columns: repeat(4,1fr);

    gap: 18px;
}

.product {
    border: 1px solid #e8e8e4;

    border-radius: 18px;

    overflow: hidden;

    background: white;

    transition: .2s;
}

.product:hover {
    transform: translateY(-4px);

    box-shadow: 0 20px 55px rgba(0,0,0,.12);
}

.product-img {
    aspect-ratio: 1/1;

    position: relative;

    background: #f6f6f3;

    overflow: hidden;
}

.product-img img {
    width: 100%;
    height: 100%;

    object-fit: cover;

    transition: .3s;
}

.product:hover img {
    transform: scale(1.05);
}

.product-badge {
    position: absolute;

    top: 12px;
    left: 12px;

    padding: 5px 9px;

    border-radius: 8px;

    background: #ff5a36;

    color: white;

    font-size: 10px;

    font-weight: bold;
}

.wish {
    position: absolute;

    top: 12px;
    right: 12px;

    width: 36px;
    height: 36px;

    border-radius: 50%;

    background: white;

    display: grid;
    place-items: center;
}

.product-body {
    padding: 15px 16px 16px;
}

.product-cat {
    color: #999;

    font-size: 10px;

    text-transform: uppercase;

    letter-spacing: .7px;
}

.product h3 {
    font-size: 14px;

    margin: 5px 0 9px;
}

.price-line {
    display: flex;

    align-items: center;

    gap: 8px;
}

.price {
    font-size: 18px;

    font-weight: 800;
}

.old {
    color: #aaa;

    font-size: 12px;

    text-decoration: line-through;
}

.rating {
    color: #e7a628;

    font-size: 11px;

    margin-top: 7px;
}

.rating span {
    color: #888;
}

.add {
    width: 100%;

    height: 40px;

    margin-top: 14px;

    border-radius: 10px;

    background: #171717;

    color: white;

    font-size: 12px;

    font-weight: bold;
}

.add:hover {
    background: #ff5a36;
}


/* =========================
   DEAL
========================= */

.deal {
    display: grid;

    grid-template-columns: 1.1fr 1fr;

    overflow: hidden;

    border-radius: 22px;

    background: #fff8f3;

    border: 1px solid #f4ddd3;
}

.deal-img {
    min-height: 380px;
}

.deal-img img {
    width: 100%;
    height: 100%;

    object-fit: cover;
}

.deal-content {
    padding: 48px;

    display: flex;

    flex-direction: column;

    justify-content: center;
}

.deal-label {
    align-self: flex-start;

    background: #ff5a36;

    color: white;

    padding: 6px 10px;

    border-radius: 8px;

    font-size: 10px;

    font-weight: bold;
}

.deal h2 {
    font-family: Manrope, sans-serif;

    font-size: 34px;

    margin: 15px 0 7px;
}

.deal-desc {
    color: #777;

    font-size: 14px;
}

.deal-price {
    font-size: 32px;

    font-weight: 800;

    margin-top: 18px;
}

.deal-price del {
    color: #999;

    font-size: 15px;

    margin-left: 8px;
}

.timer {
    display: flex;

    gap: 9px;

    margin: 20px 0;
}

.time {
    min-width: 66px;

    padding: 9px;

    text-align: center;

    border-radius: 11px;

    background: #171717;

    color: white;
}

.time strong {
    display: block;

    font-size: 20px;
}

.time span {
    color: #aaa;

    font-size: 9px;
}


/* =========================
   REVIEWS
========================= */

.reviews {
    display: grid;

    grid-template-columns: repeat(4,1fr);

    gap: 14px;
}

.review {
    border: 1px solid #e8e8e4;

    border-radius: 16px;

    padding: 20px;
}

.review-stars {
    color: #e7a628;
}

.review blockquote {
    font-size: 13px;

    line-height: 1.65;

    margin: 12px 0 18px;
}

.reviewer {
    display: flex;

    align-items: center;

    gap: 10px;
}

.reviewer img {
    width: 38px;
    height: 38px;

    border-radius: 50%;

    object-fit: cover;
}

.reviewer strong {
    display: block;

    font-size: 12px;
}

.reviewer small {
    color: #999;

    font-size: 10px;
}


/* =========================
   NEWSLETTER
========================= */

.newsletter {
    margin-top: 70px;

    padding: 40px;

    border-radius: 22px;

    background: #171717;

    color: white;

    display: flex;

    align-items: center;

    justify-content: space-between;

    gap: 30px;
}

.newsletter h2 {
    font-family: Manrope, sans-serif;

    font-size: 25px;
}

.newsletter p {
    color: #aaa;

    font-size: 13px;
}

.news-form {
    display: flex;

    gap: 8px;
}

.news-form input {
    height: 46px;

    width: 280px;

    border-radius: 11px;

    border: 1px solid #444;

    background: #242424;

    color: white;

    padding: 0 14px;

    outline: none;
}


/* =========================
   FOOTER
========================= */

footer {
    margin-top: 70px;

    border-top: 1px solid #e8e8e4;

    padding: 45px 0 25px;
}

.footer-grid {
    display: grid;

    grid-template-columns: 2fr 1fr 1fr 1fr;

    gap: 40px;
}

.footer-brand p {
    max-width: 310px;

    margin-top: 10px;

    color: #777;

    font-size: 13px;
}

.footer h4 {
    margin-bottom: 13px;

    font-size: 12px;

    text-transform: uppercase;
}

.footer ul {
    list-style: none;

    display: grid;

    gap: 8px;
}

.footer li a {
    color: #777;

    font-size: 13px;
}

.footer li a:hover {
    color: #ff5a36;
}

.footer-bottom {
    border-top: 1px solid #e8e8e4;

    margin-top: 35px;

    padding-top: 18px;

    text-align: center;

    color: #aaa;

    font-size: 11px;
}


/* =========================
   MOBILE
========================= */

.menu-btn {
    display: none;
}

@media(max-width:1050px) {

    .nav {
        display: none;
    }

    .menu-btn {
        display: grid;
    }

    .categories {
        grid-template-columns: repeat(3,1fr);
    }

    .products {
        grid-template-columns: repeat(3,1fr);
    }

    .reviews {
        grid-template-columns: repeat(2,1fr);
    }

    .trust {
        grid-template-columns: repeat(2,1fr);
    }
}

@media(max-width:720px) {

    .container {
        width: calc(100% - 24px);
    }

    .topbar {
        display: none;
    }

    .header {
        height: 64px;
    }

    .search {
        width: 42px;
        padding: 0;

        justify-content: center;
    }

    .search input {
        display: none;
    }

    .hero {
        margin-top: 12px;

        min-height: 520px;

        border-radius: 18px;
    }

    .hero h1 {
        font-size: 42px;
    }

    .categories {
        grid-template-columns: repeat(2,1fr);
    }

    .products {
        grid-template-columns: repeat(2,1fr);

        gap: 10px;
    }

    .deal {
        grid-template-columns: 1fr;
    }

    .deal-img {
        min-height: 240px;
    }

    .deal-content {
        padding: 28px 22px;
    }

    .reviews {
        grid-template-columns: 1fr;
    }

    .newsletter {
        display: block;

        padding: 28px 20px;
    }

    .news-form {
        margin-top: 20px;
    }

    .news-form input {
        width: 100%;
    }

    .footer-grid {
        grid-template-columns: 1fr 1fr;
    }
}

@media(max-width:450px) {

    .trust {
        grid-template-columns: 1fr;
    }

    .trust-item {
        border-right: none;
        border-bottom: 1px solid #e8e8e4;
    }

    .trust-item:last-child {
        border-bottom: none;
    }

    .newsletter {
        padding: 25px 18px;
    }

    .news-form {
        flex-direction: column;
    }

    .footer-grid {
        grid-template-columns: 1fr;
    }

}

</style>
</head>


<body>


<!-- =========================
     TOP BAR
========================= -->

<div class="topbar">

    <div class="container">

        <span>
            <i class="fa-solid fa-truck-fast"></i>
            Free shipping on orders over $50
        </span>

        <span>
            Secure checkout · Easy returns · 24/7 support
        </span>

    </div>

</div>


<!-- =========================
     HEADER
========================= -->

<header>

<div class="container header">


<button class="icon-btn menu-btn">
    <i class="fa-solid fa-bars"></i>
</button>


<a href="#" class="logo">

    <span class="logo-mark">
        <i class="fa-solid fa-bag-shopping"></i>
    </span>

    <span>
        Nexus<em>Shop</em>
    </span>

</a>


<nav class="nav">

    <a href="#" class="active">Home</a>

    <a href="#categories">
        Categories
    </a>

    <a href="#products">
        Shop
    </a>

    <a href="#deals">
        Deals
    </a>

    <a href="#reviews">
        Reviews
    </a>

</nav>


<div class="header-right">


<div class="search">

    <input
        type="text"
        placeholder="Search products..."
        id="searchInput"
    >

    <button id="searchBtn">

        <i class="fa-solid fa-magnifying-glass"></i>

    </button>

</div>


<button class="icon-btn">

    <i class="fa-regular fa-user"></i>

</button>


<button class="icon-btn">

    <i class="fa-regular fa-heart"></i>

    <span class="badge-count">
        0
    </span>

</button>


<button class="icon-btn">

    <i class="fa-solid fa-bag-shopping"></i>

    <span class="badge-count" id="cartCount">
        0
    </span>

</button>


</div>

</div>

</header>


<main class="container">


<!-- =========================
     HERO
========================= -->

<section class="hero">

<div class="hero-bg"></div>

<div class="container hero-content">

<span class="eyebrow">

    <i class="fa-solid fa-sparkles"></i>

    New Season · 2026

</span>


<h1>
    Everything you want.
    In one place.
</h1>


<p>

Discover curated tech, fashion and everyday
essentials with simple shopping,
transparent pricing and fast delivery.

</p>


<div class="hero-actions">

<button class="btn btn-primary">

    Shop Trending

    <i class="fa-solid fa-arrow-right"></i>

</button>


<button class="btn btn-light">

    <i class="fa-solid fa-bolt"></i>

    Today's Deals

</button>

</div>

</div>

</section>



<!-- =========================
     TRUST
========================= -->

<section class="trust">


<div class="trust-item">

<span class="trust-icon">

<i class="fa-solid fa-truck-fast"></i>

</span>

<div>

<strong>Fast Delivery</strong>

<small>
    On eligible orders
</small>

</div>

</div>



<div class="trust-item">

<span class="trust-icon">

<i class="fa-solid fa-rotate-left"></i>

</span>

<div>

<strong>Easy Returns</strong>

<small>
    30-day return window
</small>

</div>

</div>



<div class="trust-item">

<span class="trust-icon">

<i class="fa-solid fa-shield-halved"></i>

</span>

<div>

<strong>Secure Payments</strong>

<small>
    Your data stays protected
</small>

</div>

</div>



<div class="trust-item">

<span class="trust-icon">

<i class="fa-solid fa-headset"></i>

</span>

<div>

<strong>Human Support</strong>

<small>
    We're here when you need us
</small>

</div>

</div>


</section>



<!-- =========================
     CATEGORIES
========================= -->

<section class="section" id="categories">

<div class="section-head">

<div>

<h2>
    Shop by Category
</h2>

<p>
    Start with what you're looking for.
</p>

</div>

</div>


<div class="categories">


<button class="category">

<div class="category-icon">

<i class="fa-solid fa-mobile-screen-button"></i>

</div>

<h3>
    Phones
</h3>

<p>
    120 items
</p>

</button>



<button class="category">

<div class="category-icon">

<i class="fa-solid fa-laptop"></i>

</div>

<h3>
    Laptops
</h3>

<p>
    80 items
</p>

</button>



<button class="category">

<div class="category-icon">

<i class="fa-solid fa-shirt"></i>

</div>

<h3>
    Clothing
</h3>

<p>
    250 items
</p>

</button>



<button class="category">

<div class="category-icon">

<i class="fa-solid fa-headphones"></i>

</div>

<h3>
    Gadgets
</h3>

<p>
    95 items
</p>

</button>



<button class="category">

<div class="category-icon">

<i class="fa-solid fa-shoe-prints"></i>

</div>

<h3>
    Footwear
</h3>

<p>
    180 items
</p>

</button>



<button class="category">

<div class="category-icon">

<i class="fa-solid fa-gem"></i>

</div>

<h3>
    Accessories
</h3>

<p>
    150 items
</p>

</button>


</div>

</section>



<!-- =========================
     PRODUCTS
========================= -->

<section class="section" id="products">


<div class="section-head">

<div>

<h2>
    Trending Right Now
</h2>

<p>
    Popular picks customers are loving.
</p>

</div>

</div>



<div class="products">


<!-- PRODUCT 1 -->

<article class="product">

<div class="product-img">

<img
src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=80"
alt="Smart Watch"
>

<span class="product-badge">
    Popular
</span>

<button class="wish">

<i class="fa-regular fa-heart"></i>

</button>

</div>


<div class="product-body">

<div class="product-cat">
    Electronics
</div>

<h3>
    Premium Smart Watch
</h3>

<div class="price-line">

<span class="price">
    $129
</span>

<span class="old">
    $169
</span>

</div>

<div class="rating">
    ★★★★★
    <span>
        (124)
    </span>
</div>

<button class="add">
    <i class="fa-solid fa-plus"></i>
    Add to Cart
</button>

</div>

</article>



<!-- PRODUCT 2 -->

<article class="product">

<div class="product-img">

<img
src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80"
alt="Running Shoes"
>

<span class="product-badge">
    New
</span>

<button class="wish">

<i class="fa-regular fa-heart"></i>

</button>

</div>


<div class="product-body">

<div class="product-cat">
    Footwear
</div>

<h3>
    Urban Running Shoes
</h3>

<div class="price-line">

<span class="price">
    $89
</span>

<span class="old">
    $120
</span>

</div>

<div class="rating">
    ★★★★★
    <span>
        (98)
    </span>
</div>

<button class="add">
    <i class="fa-solid fa-plus"></i>
    Add to Cart
</button>

</div>

</article>



<!-- PRODUCT 3 -->

<article class="product">

<div class="product-img">

<img
src="https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=700&q=80"
alt="White T Shirt"
>

<button class="wish">

<i class="fa-regular fa-heart"></i>

</button>

</div>


<div class="product-body">

<div class="product-cat">
    Clothing
</div>

<h3>
    Premium Cotton T-Shirt
</h3>

<div class="price-line">

<span class="price">
    $39
</span>

</div>

<div class="rating">
    ★★★★☆
    <span>
        (76)
    </span>
</div>

<button class="add">
    <i class="fa-solid fa-plus"></i>
    Add to Cart
</button>

</div>

</article>



<!-- PRODUCT 4 -->

<article class="product">

<div class="product-img">

<img
src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=80"
alt="Headphones"
>

<span class="product-badge">
    Sale
</span>

<button class="wish">

<i class="fa-regular fa-heart"></i>

</button>

</div>


<div class="product-body">

<div class="product-cat">
    Gadgets
</div>

<h3>
    Wireless Noise Cancelling Headphones
</h3>

<div class="price-line">

<span class="price">
    $149
</span>

<span class="old">
    $199
</span>

</div>

<div class="rating">
    ★★★★★
    <span>
        (211)
    </span>
</div>

<button class="add">
    <i class="fa-solid fa-plus"></i>
    Add to Cart
</button>

</div>

</article>


</div>

</section>



<!-- =========================
     DEAL
========================= -->

<section class="section" id="deals">

<div class="section-head">

<div>

<h2>
    Deal of the Day
</h2>

<p>
    A better price, for a limited time.
</p>

</div>

</div>


<div class="deal">


<div class="deal-img">

<img
src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85"
alt="MacBook Air"
>

</div>


<div class="deal-content">


<span class="deal-label">

<i class="fa-solid fa-bolt"></i>

Limited Offer

</span>


<h2>
    MacBook Air M2
</h2>


<p class="deal-desc">

Thin, light and powerful enough for work,
study and everything between.

</p>


<div class="deal-price">

$999

<del>
    $1,199
</del>

</div>


<div class="timer">

<div class="time">

<strong>
    01
</strong>

<span>
    Days
</span>

</div>


<div class="time">

<strong>
    12
</strong>

<span>
    Hours
</span>

</div>


<div class="time">

<strong>
    36
</strong>

<span>
    Minutes
</span>

</div>


<div class="time">

<strong>
    42
</strong>

<span>
    Seconds
</span>

</div>

</div>


<button class="btn btn-primary">

<i class="fa-solid fa-bag-shopping"></i>

Add Deal to Cart

</button>


</div>

</div>

</section>



<!-- =========================
     REVIEWS
========================= -->

<section class="section" id="reviews">


<div class="section-head">

<div>

<h2>
    What Shoppers Say
</h2>

<p>
    Real feedback from our community.
</p>

</div>

</div>


<div class="reviews">


<div class="review">

<div class="review-stars">
    ★★★★★
</div>

<blockquote>

"Super clean website and the checkout
experience was incredibly easy."

</blockquote>

<div class="reviewer">

<img
src="https://i.pravatar.cc/100?img=12"
alt="Customer"
>

<div>

<strong>
    Sarah Johnson
</strong>

<small>
    Verified Customer
</small>

</div>

</div>

</div>



<div class="review">

<div class="review-stars">
    ★★★★★
</div>

<blockquote>

"Great prices and my order arrived
much faster than expected."

</blockquote>

<div class="reviewer">

<img
src="https://i.pravatar.cc/100?img=32"
alt="Customer"
>

<div>

<strong>
    Michael Lee
</strong>

<small>
    Verified Customer
</small>

</div>

</div>

</div>



<div class="review">

<div class="review-stars">
    ★★★★★
</div>

<blockquote>

"Finding products is really easy.
The category layout makes sense."

</blockquote>

<div class="reviewer">

<img
src="https://i.pravatar.cc/100?img=47"
alt="Customer"
>

<div>

<strong>
    Emma Wilson
</strong>

<small>
    Verified Customer
</small>

</div>

</div>

</div>



<div class="review">

<div class="review-stars">
    ★★★★★
</div>

<blockquote>

"Good product quality and excellent
customer support."

</blockquote>

<div class="reviewer">

<img
src="https://i.pravatar.cc/100?img=52"
alt="Customer"
>

<div>

<strong>
    David Miller
</strong>

<small>
    Verified Customer
</small>

</div>

</div>

</div>


</div>

</section>



<!-- =========================
     NEWSLETTER
========================= -->

<section class="newsletter">

<div>

<h2>
    Get the good stuff in your inbox.
</h2>

<p>
    New arrivals, useful offers and occasional surprises.
</p>

</div>


<form class="news-form">

<input
type="email"
placeholder="Your email address"
required
>

<button class="btn btn-primary">
    Subscribe
</button>

</form>

</section>


</main>



<!-- =========================
     FOOTER
========================= -->

<footer>

<div class="container">


<div class="footer-grid">


<div class="footer-brand">

<div class="logo">

<span class="logo-mark">

<i class="fa-solid fa-bag-shopping"></i>

</span>

<span>
Nexus<em>Shop</em>
</span>

</div>


<p>

A cleaner, friendlier e-commerce experience
built around easy discovery and simple checkout.

</p>

</div>



<div>

<h4>
    Shop
</h4>

<ul>

<li>
<a href="#categories">
    Categories
</a>
</li>

<li>
<a href="#products">
    Trending
</a>
</li>

<li>
<a href="#deals">
    Deals
</a>
</li>

</ul>

</div>



<div>

<h4>
    Help
</h4>

<ul>

<li>
<a href="#">
    Help Center
</a>
</li>

<li>
<a href="#">
    Shipping
</a>
</li>

<li>
<a href="#">
    Returns
</a>
</li>

<li>
<a href="#">
    Contact
</a>
</li>

</ul>

</div>



<div>

<h4>
    Company
</h4>

<ul>

<li>
<a href="#">
    About
</a>
</li>

<li>
<a href="#">
    Careers
</a>
</li>

<li>
<a href="#">
    Privacy
</a>
</li>

<li>
<a href="#">
    Terms
</a>
</li>

</ul>

</div>


</div>


<div class="footer-bottom">

© 2026 NexusShop. All rights reserved.

</div>


</div>

</footer>



<!-- =========================
     JAVASCRIPT
========================= -->

<script>


/* =========================
   CART
========================= */

let cartCount = 0;

const cartButtons =
document.querySelectorAll(".add");

const cartCounter =
document.getElementById("cartCount");


cartButtons.forEach(button => {

button.addEventListener("click", () => {

cartCount++;

cartCounter.textContent =
cartCount;

button.innerHTML =
'<i class="fa-solid fa-check"></i> Added';

button.style.background =
"#16866f";

setTimeout(() => {

button.innerHTML =
'<i class="fa-solid fa-plus"></i> Add to Cart';

button.style.background =
"";

}, 1200);

});

});



/* =========================
   WISHLIST
========================= */

const wishlistButtons =
document.querySelectorAll(".wish");


wishlistButtons.forEach(button => {

button.addEventListener("click", () => {

button.classList.toggle("active");

if(button.classList.contains("active")) {

button.innerHTML =
'<i class="fa-solid fa-heart"></i>';

button.style.color =
"#ff5a36";

} else {

button.innerHTML =
'<i class="fa-regular fa-heart"></i>';

button.style.color =
"";

}

});

});



/* =========================
   SEARCH
========================= */

const searchInput =
document.getElementById("searchInput");

const products =
document.querySelectorAll(".product");


searchInput.addEventListener("input", () => {

const query =
searchInput.value.toLowerCase();


products.forEach(product => {

const text =
product.innerText.toLowerCase();


if(text.includes(query)) {

product.style.display =
"block";

} else {

product.style.display =
"none";

}

});

});


/* =========================
   SHOP BUTTON
========================= */

document
.querySelector(".hero .btn-primary")
.addEventListener("click", () => {

document
.getElementById("products")
.scrollIntoView({
behavior: "smooth"
});

});


/* =========================
   DEAL BUTTON
========================= */

document
.querySelector(".hero .btn-light")
.addEventListener("click", () => {

document
.getElementById("deals")
.scrollIntoView({
behavior: "smooth"
});

});


</script>


</body>
</html>
