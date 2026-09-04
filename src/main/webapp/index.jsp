<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="description" content="NexusShop modern e-commerce storefront">
<title>NexusShop — Shop Smarter</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Manrope:wght@600;700;800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
:root {
  --ink:#171717; --muted:#6f6f6f; --soft:#f6f6f3; --line:#e8e8e4;
  --card:#fff; --brand:#ff5a36; --brand-dark:#e44726; --cream:#fff8f3;
  --green:#16866f; --yellow:#f5b83d; --radius:18px;
  --shadow:0 10px 35px rgba(20,20,20,.07); --shadow-lg:0 20px 55px rgba(20,20,20,.12);
  --max:1240px;
}
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth;scroll-padding-top:90px}
body{font-family:"DM Sans",sans-serif;background:#fff;color:var(--ink);line-height:1.5}
button,input{font:inherit} button{border:0;background:none;cursor:pointer} a{color:inherit;text-decoration:none}
img{display:block;max-width:100%}
.container{width:min(var(--max),calc(100% - 40px));margin:auto}
.sr-only{position:absolute;width:1px;height:1px;overflow:hidden;clip:rect(0,0,0,0)}

.topbar{background:var(--ink);color:#fff;font-size:12px;padding:8px 0}
.topbar .container{display:flex;justify-content:space-between;gap:16px;align-items:center}
.topbar span{opacity:.85}

header{position:sticky;top:0;z-index:50;background:rgba(255,255,255,.96);backdrop-filter:blur(14px);border-bottom:1px solid var(--line)}
.header{height:74px;display:flex;align-items:center;gap:28px}
.logo{display:flex;align-items:center;gap:9px;font-family:Manrope,sans-serif;font-size:22px;font-weight:800;white-space:nowrap}
.logo-mark{width:38px;height:38px;border-radius:11px;background:var(--brand);color:#fff;display:grid;place-items:center}
.logo em{font-style:normal;color:var(--brand)}
.nav{display:flex;align-items:center;gap:5px;flex:1}
.nav a{padding:9px 13px;border-radius:10px;color:#555;font-size:14px;font-weight:600}
.nav a:hover,.nav a.active{background:var(--soft);color:var(--ink)}

.header-right{display:flex;align-items:center;gap:9px}
.search{height:42px;width:250px;display:flex;align-items:center;gap:9px;background:var(--soft);border:1px solid transparent;border-radius:12px;padding:0 12px;color:#777}
.search:focus-within{background:#fff;border-color:#d8d8d2;box-shadow:0 0 0 4px rgba(255,90,54,.08)}
.search input{width:100%;border:0;outline:0;background:transparent;font-size:13px}
.icon-btn{width:42px;height:42px;border:1px solid var(--line);border-radius:12px;display:grid;place-items:center;color:#444;position:relative;background:#fff}
.icon-btn:hover{border-color:#cfcfc8;background:var(--soft)}
.badge-count{position:absolute;right:-5px;top:-5px;min-width:19px;height:19px;padding:0 5px;border-radius:99px;background:var(--brand);color:#fff;font-size:10px;font-weight:800;display:grid;place-items:center;border:2px solid #fff}
.menu-btn{display:none}

.hero{margin:24px 0 0;background:var(--ink);border-radius:24px;min-height:480px;overflow:hidden;position:relative;display:flex;align-items:center}
.hero::after{content:"";position:absolute;inset:0;background:linear-gradient(90deg,rgba(10,10,10,.9) 0%,rgba(10,10,10,.68) 48%,rgba(10,10,10,.12) 100%)}
.hero-bg{position:absolute;inset:0;background:url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85") center/cover}
.hero-content{position:relative;z-index:2;max-width:640px;padding:70px 0;color:#fff}
.eyebrow{display:inline-flex;align-items:center;gap:8px;padding:7px 12px;border-radius:99px;background:rgba(255,90,54,.16);border:1px solid rgba(255,90,54,.4);color:#ffb6a5;font-size:12px;font-weight:700;text-transform:uppercase;letter-spacing:.5px}
.hero h1{font-family:Manrope,sans-serif;font-size:clamp(42px,6vw,72px);line-height:1.02;letter-spacing:-2.5px;margin:20px 0 18px}
.hero p{max-width:530px;color:#d5d5d5;font-size:17px;line-height:1.7}
.hero-actions{display:flex;gap:12px;flex-wrap:wrap;margin-top:28px}
.btn{display:inline-flex;align-items:center;justify-content:center;gap:8px;min-height:46px;padding:0 20px;border-radius:12px;font-size:14px;font-weight:700;transition:.2s ease}
.btn-primary{background:var(--brand);color:#fff}
.btn-primary:hover{background:var(--brand-dark);transform:translateY(-1px)}
.btn-light{background:#fff;color:var(--ink)}
.btn-light:hover{background:#f1f1ef;transform:translateY(-1px)}
.btn-outline{background:#fff;border:1px solid var(--line);color:var(--ink)}
.btn-outline:hover{background:var(--soft)}

.trust{display:grid;grid-template-columns:repeat(4,1fr);border:1px solid var(--line);border-radius:16px;margin:24px 0 0;background:#fff}
.trust-item{display:flex;align-items:center;gap:12px;padding:18px 20px;border-right:1px solid var(--line)}
.trust-item:last-child{border-right:0}
.trust-icon{width:38px;height:38px;border-radius:10px;background:var(--cream);color:var(--brand);display:grid;place-items:center}
.trust strong{display:block;font-size:13px} .trust small{color:var(--muted);font-size:11px}

.section{padding:70px 0 0}
.section-head{display:flex;justify-content:space-between;align-items:end;gap:20px;margin-bottom:26px}
.section-head h2{font-family:Manrope,sans-serif;font-size:30px;letter-spacing:-1px}
.section-head p{color:var(--muted);font-size:14px;margin-top:4px}
.view-all{color:var(--brand);font-weight:700;font-size:13px;display:flex;gap:7px;align-items:center}
.view-all:hover{gap:10px}

.categories{display:grid;grid-template-columns:repeat(6,1fr);gap:13px}
.category{border:1px solid var(--line);border-radius:16px;background:#fff;padding:21px 10px;text-align:center;transition:.2s;cursor:pointer}
.category:hover{border-color:#ffb3a3;box-shadow:var(--shadow);transform:translateY(-3px)}
.category-icon{width:52px;height:52px;margin:0 auto 12px;border-radius:15px;background:var(--soft);display:grid;place-items:center;color:#444;font-size:20px}
.category:hover .category-icon{background:var(--cream);color:var(--brand)}
.category h3{font-size:13px;font-weight:700} .category p{font-size:11px;color:#999;margin-top:2px}

.toolbar{display:flex;justify-content:space-between;align-items:center;gap:12px;margin-bottom:16px}
.result-info{font-size:13px;color:var(--muted)}
.filters{display:flex;gap:8px}
.filter{padding:9px 12px;border:1px solid var(--line);border-radius:10px;background:#fff;font-size:12px;font-weight:600}
.filter:hover{background:var(--soft)}

.products{display:grid;grid-template-columns:repeat(4,1fr);gap:18px}
.product{border:1px solid var(--line);border-radius:18px;background:#fff;overflow:hidden;transition:.22s;position:relative}
.product:hover{box-shadow:var(--shadow-lg);transform:translateY(-4px);border-color:#ddd}
.product-img{aspect-ratio:1/1;background:var(--soft);position:relative;overflow:hidden}
.product-img img{width:100%;height:100%;object-fit:cover;transition:.35s}
.product:hover .product-img img{transform:scale(1.045)}
.product-badge{position:absolute;left:12px;top:12px;background:var(--brand);color:#fff;padding:5px 9px;border-radius:8px;font-size:10px;font-weight:800}
.product-badge.sale{background:var(--yellow);color:var(--ink)}
.wish{position:absolute;right:12px;top:12px;width:36px;height:36px;border-radius:50%;background:rgba(255,255,255,.94);display:grid;place-items:center;color:#555}
.wish.active{color:var(--brand);background:var(--cream)}
.product-body{padding:15px 16px 16px}
.product-cat{font-size:10px;text-transform:uppercase;letter-spacing:.7px;color:#999;font-weight:800}
.product h3{font-size:14px;line-height:1.35;margin:5px 0 9px;min-height:38px}
.price-line{display:flex;align-items:center;gap:8px}
.price{font-size:18px;font-weight:800} .old{font-size:12px;color:#aaa;text-decoration:line-through}
.rating{font-size:11px;color:#e7a628;margin-top:7px} .rating span{color:#888;margin-left:4px}
.add{width:100%;height:40px;margin-top:14px;border-radius:10px;background:var(--ink);color:#fff;font-size:12px;font-weight:700}
.add:hover{background:var(--brand)} .add.added{background:var(--green)}

.deal{margin-top:24px;background:var(--cream);border:1px solid #f4ddd3;border-radius:22px;overflow:hidden;display:grid;grid-template-columns:1.1fr 1fr}
.deal-img{min-height:380px;background:#eee}
.deal-img img{width:100%;height:100%;object-fit:cover}
.deal-content{padding:48px;display:flex;flex-direction:column;justify-content:center}
.deal-label{display:inline-flex;align-self:flex-start;background:var(--brand);color:#fff;padding:6px 10px;border-radius:8px;font-size:10px;font-weight:800;text-transform:uppercase}
.deal h2{font-family:Manrope,sans-serif;font-size:34px;letter-spacing:-1.2px;margin:15px 0 7px}
.deal-desc{color:var(--muted);font-size:14px;max-width:450px}
.deal-price{font-size:32px;font-weight:800;margin-top:18px}
.deal-price del{font-size:15px;color:#999;font-weight:500;margin-left:8px}
.stock{font-size:12px;color:var(--muted);margin-top:5px} .stock b{color:var(--brand)}
.timer{display:flex;gap:9px;margin:20px 0}
.time{background:var(--ink);color:#fff;border-radius:11px;min-width:66px;text-align:center;padding:9px 8px}
.time strong{font-size:20px;display:block} .time span{font-size:9px;text-transform:uppercase;color:#aaa}

.reviews{display:grid;grid-template-columns:repeat(4,1fr);gap:14px}
.review{border:1px solid var(--line);border-radius:16px;padding:20px;background:#fff}
.review-stars{color:#e7a628;font-size:13px;letter-spacing:1px}
.review blockquote{font-size:13px;line-height:1.65;margin:12px 0 18px;color:#333}
.reviewer{display:flex;align-items:center;gap:10px}
.reviewer img{width:38px;height:38px;border-radius:50%;object-fit:cover}
.reviewer strong{display:block;font-size:12px} .reviewer small{color:#999;font-size:10px}

.newsletter{margin:70px 0 0;background:var(--ink);border-radius:22px;padding:40px;display:flex;align-items:center;justify-content:space-between;gap:30px;color:#fff}
.newsletter h2{font-family:Manrope,sans-serif;font-size:25px;letter-spacing:-.7px}
.newsletter p{font-size:13px;color:#aaa;margin-top:4px}
.news-form{display:flex;gap:8px;min-width:min(100%,440px)}
.news-form input{height:46px;flex:1;min-width:0;border:1px solid #444;background:#242424;color:#fff;border-radius:11px;padding:0 14px;outline:0}
.news-form input:focus{border-color:var(--brand)}
#newsletterMsg{font-size:12px;margin-top:7px;color:#9de2cf}

footer{margin-top:70px;border-top:1px solid var(--line);padding:45px 0 25px}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:40px}
.footer-brand p{color:var(--muted);font-size:13px;max-width:310px;margin-top:10px}
.footer h4{font-size:12px;text-transform:uppercase;letter-spacing:.7px;margin-bottom:13px}
.footer ul{list-style:none;display:grid;gap:8px} .footer li a{font-size:13px;color:var(--muted)} .footer li a:hover{color:var(--brand)}
.socials{display:flex;gap:8px;margin-top:16px} .socials a{width:34px;height:34px;border:1px solid var(--line);border-radius:9px;display:grid;place-items:center;color:#666}
.socials a:hover{color:var(--brand);border-color:#ffb3a3}
.footer-bottom{border-top:1px solid var(--line);margin-top:35px;padding-top:18px;text-align:center;color:#aaa;font-size:11px}

.toast{position:fixed;right:22px;bottom:22px;z-index:100;background:var(--ink);color:#fff;padding:12px 16px;border-radius:12px;box-shadow:var(--shadow-lg);font-size:12px;opacity:0;transform:translateY(15px);pointer-events:none;transition:.25s}
.toast.show{opacity:1;transform:translateY(0)}

@media(max-width:1050px){
  .nav{display:none} .menu-btn{display:grid} .header{justify-content:space-between}
  .categories{grid-template-columns:repeat(3,1fr)} .products{grid-template-columns:repeat(3,1fr)}
  .reviews{grid-template-columns:repeat(2,1fr)} .trust{grid-template-columns:repeat(2,1fr)}
  .trust-item:nth-child(2){border-right:0} .trust-item:nth-child(-n+2){border-bottom:1px solid var(--line)}
}
@media(max-width:720px){
  .container{width:min(var(--max),calc(100% - 24px))}
  .topbar{display:none} .header{height:64px;gap:8px}
  .logo{font-size:18px} .logo-mark{width:34px;height:34px}
  .header-right{margin-left:auto} .search{width:42px;padding:0;justify-content:center} .search input{display:none}
  .search button{padding:0} .icon-btn{width:38px;height:38px} .menu-btn{width:38px;height:38px}
  .mobile-nav{display:none;background:#fff;border-top:1px solid var(--line);padding:8px 0 14px}
  .mobile-nav.open{display:block} .mobile-nav a{display:block;padding:11px 4px;font-size:14px;font-weight:600}
  .hero{margin-top:12px;min-height:520px;border-radius:18px} .hero-content{padding:50px 0}
  .hero h1{font-size:44px;letter-spacing:-1.8px} .hero p{font-size:15px}
  .trust{grid-template-columns:1fr 1fr} .trust-item{padding:14px 12px} .trust-item:nth-child(3){border-bottom:0}
  .section{padding-top:52px} .section-head h2{font-size:24px}
  .categories{grid-template-columns:repeat(2,1fr)} .products{grid-template-columns:repeat(2,1fr);gap:10px}
  .product-body{padding:12px} .product h3{font-size:12px} .price{font-size:16px}
  .deal{grid-template-columns:1fr} .deal-img{min-height:230px} .deal-content{padding:28px 22px}
  .deal h2{font-size:27px} .reviews{grid-template-columns:1fr}
  .newsletter{margin-top:52px;padding:28px 20px;display:block} .news-form{margin-top:20px;min-width:0}
  .footer-grid{grid-template-columns:1fr 1fr;gap:28px}
}
@media(max-width:430px){
  .hero h1{font-size:37px} .hero-actions .btn{width:100%}
  .trust{grid-template-columns:1fr} .trust-item{border-right:0!important;border-bottom:1px solid var(--line)} .trust-item:last-child{border-bottom:0}
  .toolbar{align-items:flex-start;flex-direction:column} .filters{width:100%} .filter{flex:1}
  .footer-grid{grid-template-columns:1fr}
}
</style>
</head>

<body>
<div class="topbar">
  <div class="container">
    <span><i class="fa-solid fa-truck-fast"></i> Free shipping on orders over $50</span>
    <span>Secure checkout · Easy returns · 24/7 support</span>
  </div>
</div>

<header>
  <div class="container header">
    <button class="icon-btn menu-btn" id="menuBtn" aria-label="Open menu"><i class="fa-solid fa-bars"></i></button>
    <a class="logo" href="#" aria-label="NexusShop home">
      <span class="logo-mark"><i class="fa-solid fa-bag-shopping"></i></span>
      <span>Nexus<em>Shop</em></span>
    </a>
    <nav class="nav" aria-label="Primary navigation">
      <a class="active" href="#">Home</a>
      <a href="#categories">Categories</a>
      <a href="#products">Shop</a>
      <a href="#deals">Deals</a>
      <a href="#reviews">Reviews</a>
    </nav>
    <div class="header-right">
      <div class="search" role="search">
        <input id="searchInput" type="search" placeholder="Search products..." aria-label="Search products">
        <button id="searchBtn" aria-label="Search"><i class="fa-solid fa-magnifying-glass"></i></button>
      </div>
      <button class="icon-btn" id="accountBtn" aria-label="Account"><i class="fa-regular fa-user"></i></button>
      <button class="icon-btn" id="wishlistBtn" aria-label="Wishlist"><i class="fa-regular fa-heart"></i><span class="badge-count" id="wishCount">0</span></button>
      <button class="icon-btn" id="cartBtn" aria-label="Shopping cart"><i class="fa-solid fa-bag-shopping"></i><span class="badge-count" id="cartCount">0</span></button>
    </div>
  </div>
  <div class="mobile-nav" id="mobileNav">
    <div class="container">
      <a href="#">Home</a><a href="#categories">Categories</a><a href="#products">Shop</a><a href="#deals">Deals</a><a href="#reviews">Reviews</a>
    </div>
  </div>
</header>

<main class="container">
  <section class="hero">
    <div class="hero-bg"></div>
    <div class="container hero-content">
      <span class="eyebrow"><i class="fa-solid fa-sparkles"></i> New season · 2026</span>
      <h1>Everything you want. In one place.</h1>
      <p>Discover curated tech, fashion and everyday essentials with simple shopping, transparent pricing and fast delivery.</p>
      <div class="hero-actions">
        <button class="btn btn-primary" id="shopNow">Shop trending <i class="fa-solid fa-arrow-right"></i></button>
        <button class="btn btn-light" id="exploreDeals"><i class="fa-solid fa-bolt"></i> Today's deals</button>
      </div>
    </div>
  </section>

  <section class="trust" aria-label="Shopping benefits">
    <div class="trust-item"><span class="trust-icon"><i class="fa-solid fa-truck-fast"></i></span><div><strong>Fast delivery</strong><small>On eligible orders</small></div></div>
    <div class="trust-item"><span class="trust-icon"><i class="fa-solid fa-rotate-left"></i></span><div><strong>Easy returns</strong><small>30-day return window</small></div></div>
    <div class="trust-item"><span class="trust-icon"><i class="fa-solid fa-shield-halved"></i></span><div><strong>Secure payments</strong><small>Your data stays protected</small></div></div>
    <div class="trust-item"><span class="trust-icon"><i class="fa-solid fa-headset"></i></span><div><strong>Human support</strong><small>We're here when you need us</small></div></div>
  </section>

  <section class="section" id="categories">
    <div class="section-head">
      <div><h2>Shop by category</h2><p>Start with what you're looking for.</p></div>
      <a class="view-all" href="#products">View products <i class="fa-solid fa-arrow-right"></i></a>
    </div>
    <div class="categories" id="categoriesGrid"></div>
  </section>

  <section class="section" id="products">
    <div class="section-head">
      <div><h2>Trending right now</h2><p>Popular picks customers are loving.</p></div>
      <span class="result-info" id="resultInfo"></span>
    </div>
    <div class="toolbar">
      <span class="result-info" id="searchStatus">Showing all products</span>
      <div class="filters">
        <button class="filter" data-sort="featured">Featured</button>
        <button class="filter" data-sort="price-low">Price: Low → High</button>
        <button class="filter" data-sort="rating">Top rated</button>
      </div>
    </div>
    <div class="products" id="productsGrid"></div>
  </section>

  <section class="section" id="deals">
    <div class="section-head">
      <div><h2>Deal of the day</h2><p>A better price, for a limited time.</p></div>
    </div>
    <div class="deal">
      <div class="deal-img"><img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85" alt="MacBook Air laptop"></div>
      <div class="deal-content">
        <span class="deal-label"><i class="fa-solid fa-bolt"></i>&nbsp; Limited offer</span>
        <h2>MacBook Air M2</h2>
        <p class="deal-desc">Thin, light and powerful enough for work, study and everything between.</p>
        <div class="deal-price">$999 <del>$1,199</del></div>
        <p class="stock">Only <b>12</b> left at this price.</p>
        <div class="timer" id="dealTimer">
          <div class="time"><strong id="dealDays">0</strong><span>Days</span></div>
          <div class="time"><strong id="dealHours">00</strong><span>Hours</span></div>
          <div class="time"><strong id="dealMinutes">00</strong><span>Mins</span></div>
          <div class="time"><strong id="dealSeconds">00</strong><span>Secs</span></div>
        </div>
        <button class="btn btn-primary" id="buyDeal"><i class="fa-solid fa-bag-shopping"></i> Add deal to cart</button>
      </div>
    </div>
  </section>

  <section class="section" id="reviews">
    <div class="section-head">
      <div><h2>What shoppers say</h2><p>Real feedback from our community.</p></div>
    </div>
    <div class="reviews" id="testimonialsList"></div>
  </section>

  <section class="newsletter">
    <div>
      <h2>Get the good stuff in your inbox.</h2>
      <p>New arrivals, useful offers and occasional surprises. No spam.</p>
    </div>
    <div>
      <form class="news-form" id="newsletterForm">
        <label class="sr-only" for="newsletterEmail">Email address</label>
        <input id="newsletterEmail" type="email" placeholder="Your email address" required>
        <button class="btn btn-primary" type="submit"><i class="fa-solid fa-paper-plane"></i> Subscribe</button>
      </form>
      <div id="newsletterMsg" aria-live="polite"></div>
    </div>
  </section>
</main>

<footer class="footer">
  <div class="container">
    <div class="footer-grid">
      <div class="footer-brand">
        <div class="logo"><span class="logo-mark"><i class="fa-solid fa-bag-shopping"></i></span><span>Nexus<em>Shop</em></span></div>
        <p>A cleaner, friendlier e-commerce experience built around easy discovery and simple checkout.</p>
        <div class="socials"><a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a><a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a><a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a></div>
      </div>
      <div><h4>Shop</h4><ul><li><a href="#categories">Categories</a></li><li><a href="#products">Trending</a></li><li><a href="#deals">Deals</a></li></ul></div>
      <div><h4>Help</h4><ul><li><a href="#">Help center</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li><li><a href="#">Contact</a></li></ul></div>
      <div><h4>Company</h4><ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li></ul></div>
    </div>
    <div class="footer-bottom">© <span id="year"></span> NexusShop. All rights reserved.</div>
  </div>
</footer>

<div class="toast" id="toast" role="status" aria-live="polite"></div>

<script>
const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
            { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
        ];
const PRODUCTS = [
            { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'Smartphones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '',
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'Laptops' },
            { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '',
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'Footwear' },
            { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New',
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' },
            { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '',
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale',
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'Accessories' },
            { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '',
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'Gadgets' }
        ];
const TESTIMONIALS = [];

let cartCount = 0;
let wishCount = 0;
let activeList = [...PRODUCTS];
const $ = id => document.getElementById(id);

function escapeHtml(text) {
  return String(text).replace(/[&<>"']/g, s => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[s]));
}

function showToast(message) {
  const t = $('toast'); t.textContent = message; t.classList.add('show');
  clearTimeout(window.toastTimer); window.toastTimer = setTimeout(() => t.classList.remove('show'), 2200);
}

function updateCounts() {
  $('cartCount').textContent = cartCount;
  $('wishCount').textContent = wishCount;
}

function renderCategories() {
  const icons = {phones:'fa-mobile-screen-button',laptops:'fa-laptop',clothing:'fa-shirt',gadgets:'fa-headphones',footwear:'fa-shoe-prints',accessories:'fa-gem'};
  $('categoriesGrid').innerHTML = CATEGORIES.map(c => `
    <button class="category" data-category="${escapeHtml(c.name)}">
      <div class="category-icon"><i class="fa-solid ${icons[c.id] || 'fa-box'}"></i></div>
      <h3>${escapeHtml(c.name)}</h3><p>${c.count} items</p>
    </button>`).join('');
  document.querySelectorAll('.category').forEach(el => el.addEventListener('click', () => {
    $('searchInput').value = el.dataset.category;
    filterProducts(el.dataset.category);
    $('products').scrollIntoView({behavior:'smooth'});
  }));
}

function renderProducts(list) {
  activeList = list;
  $('resultInfo').textContent = `${list.length} product${list.length !== 1 ? 's' : ''}`;
  $('productsGrid').innerHTML = list.length ? list.map(p => {
    const badge = p.badge ? `<span class="product-badge ${p.badge === 'Sale' ? 'sale' : ''}">${escapeHtml(p.badge)}</span>` : '';
    const old = p.oldPrice ? `<span class="old">$${p.oldPrice.toLocaleString()}</span>` : '';
    const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
    return `<article class="product">
      <div class="product-img">
        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
        ${badge}
        <button class="wish" data-wish="${p.id}" aria-label="Add ${escapeHtml(p.title)} to wishlist"><i class="fa-regular fa-heart"></i></button>
      </div>
      <div class="product-body">
        <div class="product-cat">${escapeHtml(p.category)}</div>
        <h3>${escapeHtml(p.title)}</h3>
        <div class="price-line"><span class="price">$${p.price.toLocaleString()}</span>${old}</div>
        <div class="rating">${stars} <span>(${p.reviews})</span></div>
        <button class="add" data-add="${p.id}"><i class="fa-solid fa-plus"></i> Add to cart</button>
      </div>
    </article>`;
  }).join('') : `<div style="grid-column:1/-1;text-align:center;padding:55px 20px;border:1px dashed #ddd;border-radius:16px;color:#777">
      <i class="fa-solid fa-magnifying-glass" style="font-size:24px;margin-bottom:10px"></i><br>No products match your search.
    </div>`;

  document.querySelectorAll('[data-add]').forEach(btn => btn.addEventListener('click', () => {
    cartCount++; updateCounts(); btn.classList.add('added'); btn.innerHTML = '<i class="fa-solid fa-check"></i> Added'; showToast('Added to your cart');
    setTimeout(() => { btn.classList.remove('added'); btn.innerHTML = '<i class="fa-solid fa-plus"></i> Add to cart'; }, 1300);
  }));
  document.querySelectorAll('[data-wish]').forEach(btn => btn.addEventListener('click', () => {
    const active = btn.classList.toggle('active');
    btn.innerHTML = active ? '<i class="fa-solid fa-heart"></i>' : '<i class="fa-regular fa-heart"></i>';
    wishCount += active ? 1 : -1; updateCounts(); showToast(active ? 'Saved to wishlist' : 'Removed from wishlist');
  }));
}

function filterProducts(query) {
  const q = String(query || '').trim().toLowerCase();
  activeList = !q ? [...PRODUCTS] : PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
  $('searchStatus').textContent = q ? `Search results for "${query}"` : 'Showing all products';
  renderProducts(activeList);
}

$('searchBtn').addEventListener('click', () => filterProducts($('searchInput').value));
$('searchInput').addEventListener('keydown', e => { if (e.key === 'Enter') filterProducts(e.target.value); });

document.querySelectorAll('.filter').forEach(btn => btn.addEventListener('click', () => {
  let list = [...activeList];
  if (btn.dataset.sort === 'price-low') list.sort((a,b) => a.price-b.price);
  if (btn.dataset.sort === 'rating') list.sort((a,b) => b.rating-a.rating || b.reviews-a.reviews);
  if (btn.dataset.sort === 'featured') list.sort((a,b) => (b.rating*b.reviews)-(a.rating*a.reviews));
  renderProducts(list);
}));

$('shopNow').addEventListener('click', () => $('products').scrollIntoView({behavior:'smooth'}));
$('exploreDeals').addEventListener('click', () => $('deals').scrollIntoView({behavior:'smooth'}));
$('cartBtn').addEventListener('click', () => showToast(cartCount ? `Your cart has ${cartCount} item${cartCount === 1 ? '' : 's'}` : 'Your cart is empty'));
$('wishlistBtn').addEventListener('click', () => showToast(wishCount ? `You saved ${wishCount} item${wishCount === 1 ? '' : 's'}` : 'Your wishlist is empty'));
$('accountBtn').addEventListener('click', () => showToast('Account area is ready for integration'));

$('menuBtn').addEventListener('click', () => {
  $('mobileNav').classList.toggle('open');
  $('menuBtn').innerHTML = $('mobileNav').classList.contains('open') ? '<i class="fa-solid fa-xmark"></i>' : '<i class="fa-solid fa-bars"></i>';
});
document.querySelectorAll('.mobile-nav a').forEach(a => a.addEventListener('click', () => $('mobileNav').classList.remove('open')));

$('newsletterForm').addEventListener('submit', e => {
  e.preventDefault();
  const email = $('newsletterEmail').value.trim();
  if (!email.includes('@')) { $('newsletterMsg').textContent = 'Please enter a valid email.'; return; }
  $('newsletterMsg').textContent = '✓ You are subscribed. Welcome to the club!';
  $('newsletterEmail').value = '';
});

$('buyDeal').addEventListener('click', () => {
  cartCount++; updateCounts(); showToast('MacBook Air deal added to your cart');
});

(function setupTimer() {
  const target = Date.now() + (24 * 60 + 36) * 60 * 1000;
  function tick() {
    const d = Math.max(0, target - Date.now());
    const days = Math.floor(d / 86400000), hours = Math.floor(d % 86400000 / 3600000);
    const mins = Math.floor(d % 3600000 / 60000), secs = Math.floor(d % 60000 / 1000);
    $('dealDays').textContent = days; $('dealHours').textContent = String(hours).padStart(2,'0');
    $('dealMinutes').textContent = String(mins).padStart(2,'0'); $('dealSeconds').textContent = String(secs).padStart(2,'0');
  }
  tick(); setInterval(tick,1000);
})();

$('year').textContent = new Date().getFullYear();
renderCategories(); renderProducts(PRODUCTS); updateCounts();
</script>
</body>
</html>
