<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NexusShop | Premium Shopping Experience</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Manrope:wght@500;600;700;800&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>

/* =========================================================
   ROOT
========================================================= */

:root{
    --bg:#f5f7fb;
    --surface:#ffffff;
    --surface-2:#f8f9fc;

    --dark:#111827;
    --dark-2:#1f2937;

    --text:#111827;
    --muted:#6b7280;
    --muted-2:#9ca3af;

    --primary:#635bff;
    --primary-dark:#5148e5;
    --primary-soft:#eeecff;

    --pink:#ec4899;
    --green:#10b981;
    --orange:#f59e0b;
    --red:#ef4444;

    --border:#e8ebf2;

    --shadow-sm:0 4px 20px rgba(17,24,39,.05);
    --shadow:0 15px 45px rgba(17,24,39,.08);
    --shadow-lg:0 25px 70px rgba(17,24,39,.13);

    --radius:22px;
    --radius-sm:14px;

    --transition:.3s cubic-bezier(.4,0,.2,1);

    --container:1380px;
}

/* =========================================================
   RESET
========================================================= */

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

html{
    scroll-behavior:smooth;
}

body{
    font-family:'DM Sans',sans-serif;
    background:var(--bg);
    color:var(--text);
    line-height:1.5;
    overflow-x:hidden;
}

button,
input{
    font-family:inherit;
}

button{
    border:0;
    cursor:pointer;
}

a{
    color:inherit;
    text-decoration:none;
}

img{
    max-width:100%;
    display:block;
}

.container{
    width:min(100% - 40px,var(--container));
    margin:auto;
}

/* =========================================================
   TOP BAR
========================================================= */

.topbar{
    background:#111827;
    color:#fff;
    height:38px;
    display:flex;
    align-items:center;
    justify-content:center;
    font-size:12px;
    letter-spacing:.2px;
}

.topbar span{
    color:#c7c3ff;
    font-weight:700;
}

/* =========================================================
   HEADER
========================================================= */

.header{
    position:sticky;
    top:0;
    z-index:999;
    background:rgba(255,255,255,.86);
    backdrop-filter:blur(22px);
    border-bottom:1px solid rgba(17,24,39,.06);
}

.header-inner{
    height:82px;
    display:flex;
    align-items:center;
    gap:35px;
}

/* LOGO */

.logo{
    display:flex;
    align-items:center;
    gap:11px;
    font-family:'Manrope';
    font-weight:800;
    font-size:23px;
    white-space:nowrap;
}

.logo-mark{
    width:42px;
    height:42px;
    border-radius:13px;
    background:linear-gradient(135deg,#635bff,#9b8cff);
    color:#fff;
    display:grid;
    place-items:center;
    box-shadow:0 10px 25px rgba(99,91,255,.25);
}

.logo span{
    color:var(--primary);
}

/* NAV */

.nav{
    display:flex;
    align-items:center;
    gap:5px;
    flex:1;
}

.nav a{
    padding:10px 15px;
    border-radius:10px;
    color:#64748b;
    font-size:14px;
    font-weight:600;
    transition:var(--transition);
}

.nav a:hover,
.nav a.active{
    background:var(--primary-soft);
    color:var(--primary);
}

/* SEARCH */

.search{
    width:260px;
    height:44px;
    display:flex;
    align-items:center;
    gap:10px;
    background:#f3f4f8;
    border:1px solid transparent;
    padding:0 15px;
    border-radius:13px;
    transition:var(--transition);
}

.search:focus-within{
    background:#fff;
    border-color:#c9c5ff;
    box-shadow:0 0 0 4px rgba(99,91,255,.08);
}

.search i{
    color:#9ca3af;
}

.search input{
    width:100%;
    border:0;
    outline:0;
    background:transparent;
    font-size:13px;
}

/* HEADER ACTIONS */

.header-actions{
    display:flex;
    align-items:center;
    gap:8px;
}

.icon-btn{
    width:42px;
    height:42px;
    border-radius:12px;
    background:transparent;
    color:#64748b;
    position:relative;
    transition:var(--transition);
}

.icon-btn:hover{
    background:#f1f3f8;
    color:var(--primary);
}

.count{
    position:absolute;
    top:-3px;
    right:-3px;
    min-width:18px;
    height:18px;
    border-radius:50%;
    padding:0 4px;
    background:var(--pink);
    color:#fff;
    font-size:10px;
    font-weight:800;
    display:grid;
    place-items:center;
    border:2px solid white;
}

.avatar{
    width:40px;
    height:40px;
    border-radius:12px;
    overflow:hidden;
    cursor:pointer;
    margin-left:4px;
}

.avatar img{
    width:100%;
    height:100%;
    object-fit:cover;
}

/* MOBILE MENU */

.mobile-menu{
    display:none;
    padding:15px 0 20px;
    border-top:1px solid var(--border);
}

.mobile-menu a{
    display:block;
    padding:13px;
    border-radius:10px;
    font-weight:600;
    color:#64748b;
}

.mobile-menu a:hover{
    background:var(--primary-soft);
    color:var(--primary);
}

/* =========================================================
   HERO
========================================================= */

.hero{
    padding:35px 0 10px;
}

.hero-box{
    min-height:510px;
    border-radius:30px;
    overflow:hidden;
    position:relative;
    background:
        radial-gradient(circle at 80% 20%,rgba(139,92,246,.5),transparent 35%),
        linear-gradient(120deg,#111827,#29224c 60%,#4c1d95);
    box-shadow:var(--shadow-lg);
}

.hero-box::before{
    content:"";
    position:absolute;
    width:600px;
    height:600px;
    border-radius:50%;
    background:rgba(99,91,255,.16);
    right:-180px;
    bottom:-280px;
    filter:blur(5px);
}

.hero-content{
    position:relative;
    z-index:2;
    padding:75px 65px;
    max-width:720px;
}

.hero-label{
    display:inline-flex;
    align-items:center;
    gap:8px;
    padding:8px 13px;
    border-radius:999px;
    background:rgba(255,255,255,.1);
    border:1px solid rgba(255,255,255,.13);
    color:#ddd8ff;
    font-size:12px;
    font-weight:700;
    margin-bottom:20px;
}

.hero-label i{
    color:#a78bfa;
}

.hero h1{
    font-family:'Manrope';
    color:#fff;
    font-size:58px;
    line-height:1.08;
    letter-spacing:-2px;
    margin-bottom:20px;
}

.hero h1 span{
    color:#a78bfa;
}

.hero p{
    color:#cbd5e1;
    max-width:550px;
    font-size:16px;
    line-height:1.8;
    margin-bottom:30px;
}

.hero-buttons{
    display:flex;
    gap:12px;
    flex-wrap:wrap;
}

.btn{
    height:48px;
    padding:0 22px;
    border-radius:12px;
    display:inline-flex;
    align-items:center;
    justify-content:center;
    gap:9px;
    font-weight:700;
    font-size:14px;
    transition:var(--transition);
}

.btn-primary{
    background:var(--primary);
    color:#fff;
    box-shadow:0 10px 25px rgba(99,91,255,.3);
}

.btn-primary:hover{
    background:#756dff;
    transform:translateY(-2px);
    box-shadow:0 15px 30px rgba(99,91,255,.4);
}

.btn-light{
    background:rgba(255,255,255,.1);
    border:1px solid rgba(255,255,255,.18);
    color:#fff;
}

.btn-light:hover{
    background:#fff;
    color:#111827;
}

/* HERO PRODUCT */

.hero-product{
    position:absolute;
    right:55px;
    bottom:0;
    width:440px;
    z-index:2;
}

.hero-product img{
    width:100%;
    filter:drop-shadow(0 30px 40px rgba(0,0,0,.35));
    transform:rotate(-5deg);
    transition:1s ease;
}

.hero-box:hover .hero-product img{
    transform:rotate(0deg) translateY(-10px) scale(1.03);
}

.floating-card{
    position:absolute;
    z-index:4;
    background:rgba(255,255,255,.95);
    backdrop-filter:blur(10px);
    border-radius:16px;
    padding:13px 16px;
    box-shadow:var(--shadow);
}

.floating-card.small{
    right:410px;
    bottom:80px;
}

.floating-card .mini{
    font-size:10px;
    color:#9ca3af;
}

.floating-card strong{
    display:block;
    font-size:14px;
}

/* =========================================================
   TRUST STRIP
========================================================= */

.trust{
    padding:20px 0;
}

.trust-grid{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    background:#fff;
    border:1px solid var(--border);
    border-radius:18px;
    box-shadow:var(--shadow-sm);
}

.trust-item{
    display:flex;
    align-items:center;
    gap:13px;
    padding:20px 25px;
    border-right:1px solid var(--border);
}

.trust-item:last-child{
    border:0;
}

.trust-icon{
    width:42px;
    height:42px;
    border-radius:12px;
    background:var(--primary-soft);
    color:var(--primary);
    display:grid;
    place-items:center;
}

.trust-item strong{
    display:block;
    font-size:13px;
}

.trust-item span{
    color:var(--muted);
    font-size:11px;
}

/* =========================================================
   SECTION
========================================================= */

.section{
    padding:65px 0;
}

.section-head{
    display:flex;
    align-items:flex-end;
    justify-content:space-between;
    margin-bottom:25px;
}

.section-head h2{
    font-family:'Manrope';
    font-size:29px;
    letter-spacing:-.8px;
}

.section-head p{
    color:var(--muted);
    font-size:14px;
    margin-top:5px;
}

.view-all{
    color:var(--primary);
    font-weight:700;
    font-size:13px;
}

/* =========================================================
   CATEGORY
========================================================= */

.category-list{
    display:flex;
    gap:14px;
    overflow-x:auto;
    padding-bottom:8px;
}

.category-list::-webkit-scrollbar{
    display:none;
}

.category{
    min-width:145px;
    background:#fff;
    border:1px solid var(--border);
    border-radius:18px;
    padding:20px 15px;
    text-align:center;
    transition:var(--transition);
    cursor:pointer;
}

.category:hover{
    transform:translateY(-5px);
    border-color:#c9c5ff;
    box-shadow:var(--shadow);
}

.category-icon{
    width:52px;
    height:52px;
    border-radius:16px;
    display:grid;
    place-items:center;
    margin:0 auto 11px;
    font-size:20px;
}

.c1{background:#ede9fe;color:#7c3aed}
.c2{background:#dbeafe;color:#2563eb}
.c3{background:#fce7f3;color:#db2777}
.c4{background:#dcfce7;color:#16a34a}
.c5{background:#fef3c7;color:#d97706}
.c6{background:#e0f2fe;color:#0284c7}

.category strong{
    display:block;
    font-size:13px;
}

.category span{
    color:#9ca3af;
    font-size:11px;
}

/* =========================================================
   PRODUCT GRID
========================================================= */

.products{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:20px;
}

.product{
    background:#fff;
    border:1px solid var(--border);
    border-radius:20px;
    overflow:hidden;
    transition:var(--transition);
    position:relative;
}

.product:hover{
    transform:translateY(-7px);
    box-shadow:var(--shadow);
    border-color:#d8d5ff;
}

.product-image{
    height:260px;
    background:#f7f8fb;
    position:relative;
    overflow:hidden;
}

.product-image img{
    width:100%;
    height:100%;
    object-fit:cover;
    transition:.6s ease;
}

.product:hover .product-image img{
    transform:scale(1.07);
}

.product-badge{
    position:absolute;
    top:14px;
    left:14px;
    padding:6px 10px;
    border-radius:8px;
    background:#111827;
    color:#fff;
    font-size:10px;
    font-weight:800;
}

.product-badge.sale{
    background:#fee2e2;
    color:#dc2626;
}

.product-actions{
    position:absolute;
    top:12px;
    right:12px;
    display:flex;
    flex-direction:column;
    gap:7px;
}

.product-actions button{
    width:36px;
    height:36px;
    border-radius:10px;
    background:rgba(255,255,255,.95);
    color:#64748b;
    box-shadow:0 5px 15px rgba(0,0,0,.08);
    transition:var(--transition);
}

.product-actions button:hover{
    color:var(--primary);
    transform:scale(1.08);
}

.product-body{
    padding:18px;
}

.product-category{
    font-size:10px;
    text-transform:uppercase;
    letter-spacing:.7px;
    color:#9ca3af;
    font-weight:800;
}

.product-title{
    font-size:14px;
    font-weight:700;
    margin:5px 0 9px;
}

.rating{
    display:flex;
    align-items:center;
    gap:4px;
    font-size:11px;
    color:#f59e0b;
}

.rating span{
    color:#9ca3af;
}

.price-row{
    display:flex;
    align-items:center;
    justify-content:space-between;
    margin-top:15px;
}

.price{
    font-family:'Manrope';
    font-weight:800;
    font-size:18px;
}

.old-price{
    font-size:11px;
    color:#9ca3af;
    text-decoration:line-through;
    margin-left:6px;
}

.add-cart{
    width:38px;
    height:38px;
    border-radius:11px;
    background:#111827;
    color:#fff;
    transition:var(--transition);
}

.add-cart:hover{
    background:var(--primary);
    transform:scale(1.05);
}

/* =========================================================
   DEAL SECTION
========================================================= */

.deal{
    position:relative;
    overflow:hidden;
    background:linear-gradient(120deg,#fff,#f4f2ff);
    border:1px solid #e3e0ff;
    border-radius:25px;
    min-height:330px;
    display:flex;
    align-items:center;
}

.deal-content{
    padding:45px;
    position:relative;
    z-index:2;
    width:55%;
}

.deal-tag{
    color:#dc2626;
    background:#fee2e2;
    padding:7px 12px;
    border-radius:8px;
    font-size:10px;
    font-weight:800;
    display:inline-block;
    margin-bottom:13px;
}

.deal h2{
    font-family:'Manrope';
    font-size:34px;
    margin-bottom:8px;
}

.deal p{
    color:var(--muted);
    max-width:500px;
    font-size:14px;
}

.timer{
    display:flex;
    gap:9px;
    margin:22px 0;
}

.time-box{
    width:65px;
    height:65px;
    border-radius:13px;
    background:#111827;
    color:#fff;
    display:grid;
    place-items:center;
    align-content:center;
}

.time-box strong{
    font-size:19px;
}

.time-box span{
    font-size:9px;
    color:#9ca3af;
}

.deal-image{
    position:absolute;
    right:0;
    top:0;
    width:48%;
    height:100%;
}

.deal-image img{
    width:100%;
    height:100%;
    object-fit:cover;
}

/* =========================================================
   MINI STATS
========================================================= */

.stats{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:20px;
}

.stat{
    background:#fff;
    border:1px solid var(--border);
    border-radius:18px;
    padding:24px;
    display:flex;
    align-items:center;
    gap:16px;
}

.stat-icon{
    width:48px;
    height:48px;
    border-radius:14px;
    background:var(--primary-soft);
    color:var(--primary);
    display:grid;
    place-items:center;
}

.stat strong{
    display:block;
    font-family:'Manrope';
    font-size:22px;
}

.stat span{
    color:var(--muted);
    font-size:11px;
}

/* =========================================================
   TESTIMONIALS
========================================================= */

.reviews{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:20px;
}

.review{
    background:#fff;
    border:1px solid var(--border);
    border-radius:20px;
    padding:25px;
}

.review-stars{
    color:#f59e0b;
    font-size:13px;
    margin-bottom:15px;
}

.review p{
    color:#4b5563;
    font-size:13px;
    line-height:1.8;
    margin-bottom:20px;
}

.review-user{
    display:flex;
    align-items:center;
    gap:11px;
}

.review-user img{
    width:38px;
    height:38px;
    border-radius:50%;
    object-fit:cover;
}

.review-user strong{
    display:block;
    font-size:12px;
}

.review-user span{
    color:#9ca3af;
    font-size:10px;
}

/* =========================================================
   NEWSLETTER
========================================================= */

.newsletter{
    background:#111827;
    border-radius:25px;
    padding:45px;
    display:flex;
    justify-content:space-between;
    align-items:center;
    gap:30px;
}

.newsletter h2{
    color:#fff;
    font-family:'Manrope';
    font-size:27px;
}

.newsletter p{
    color:#9ca3af;
    font-size:13px;
    margin-top:5px;
}

.subscribe{
    display:flex;
    background:#fff;
    padding:5px;
    border-radius:13px;
    width:420px;
}

.subscribe input{
    border:0;
    outline:0;
    flex:1;
    padding:0 14px;
    font-size:13px;
}

.subscribe button{
    height:42px;
    padding:0 18px;
    border-radius:9px;
    background:var(--primary);
    color:#fff;
    font-weight:700;
}

/* =========================================================
   FOOTER
========================================================= */

.footer{
    margin-top:70px;
    background:#fff;
    border-top:1px solid var(--border);
    padding:55px 0 25px;
}

.footer-grid{
    display:grid;
    grid-template-columns:2fr 1fr 1fr 1fr;
    gap:50px;
}

.footer-brand p{
    color:#6b7280;
    font-size:13px;
    max-width:300px;
    margin-top:13px;
    line-height:1.7;
}

.footer h4{
    font-size:13px;
    margin-bottom:15px;
}

.footer ul{
    list-style:none;
}

.footer li{
    margin-bottom:9px;
}

.footer li a{
    color:#6b7280;
    font-size:12px;
}

.footer li a:hover{
    color:var(--primary);
}

.socials{
    display:flex;
    gap:8px;
    margin-top:18px;
}

.socials a{
    width:35px;
    height:35px;
    border-radius:10px;
    background:#f3f4f8;
    display:grid;
    place-items:center;
    color:#64748b;
    transition:var(--transition);
}

.socials a:hover{
    background:var(--primary);
    color:#fff;
}

.footer-bottom{
    margin-top:40px;
    padding-top:20px;
    border-top:1px solid var(--border);
    text-align:center;
    color:#9ca3af;
    font-size:11px;
}

/* =========================================================
   TOAST
========================================================= */

.toast{
    position:fixed;
    right:25px;
    bottom:25px;
    z-index:2000;
    background:#111827;
    color:#fff;
    padding:14px 18px;
    border-radius:13px;
    box-shadow:var(--shadow-lg);
    display:flex;
    align-items:center;
    gap:10px;
    transform:translateY(100px);
    opacity:0;
    pointer-events:none;
    transition:.35s ease;
    font-size:13px;
}

.toast.show{
    transform:translateY(0);
    opacity:1;
}

.toast i{
    color:#34d399;
}

/* =========================================================
   RESPONSIVE
========================================================= */

@media(max-width:1150px){

    .nav{
        display:none;
    }

    .mobile-menu{
        display:block;
    }

    .hero-product{
        width:360px;
        right:20px;
    }

    .hero h1{
        font-size:48px;
    }

    .products{
        grid-template-columns:repeat(3,1fr);
    }

}

@media(max-width:900px){

    .header-inner{
        gap:15px;
    }

    .search{
        flex:1;
        width:auto;
    }

    .trust-grid{
        grid-template-columns:repeat(2,1fr);
    }

    .trust-item:nth-child(2){
        border-right:0;
    }

    .hero-product{
        opacity:.3;
        width:400px;
    }

    .hero-content{
        padding:55px 40px;
    }

    .deal-content{
        width:100%;
    }

    .deal-image{
        opacity:.25;
        width:100%;
    }

    .reviews{
        grid-template-columns:1fr 1fr;
    }

    .footer-grid{
        grid-template-columns:1fr 1fr;
    }

}

@media(max-width:650px){

    .container{
        width:min(100% - 24px,var(--container));
    }

    .topbar{
        font-size:10px;
    }

    .header-inner{
        height:68px;
    }

    .logo{
        font-size:18px;
    }

    .logo-mark{
        width:36px;
        height:36px;
    }

    .search{
        display:none;
    }

    .avatar{
        display:none;
    }

    .hero{
        padding-top:15px;
    }

    .hero-box{
        min-height:510px;
        border-radius:22px;
    }

    .hero-content{
        padding:45px 25px;
    }

    .hero h1{
        font-size:38px;
        letter-spacing:-1.5px;
    }

    .hero p{
        font-size:14px;
    }

    .hero-product{
        width:300px;
        right:-50px;
        bottom:-20px;
        opacity:.3;
    }

    .trust-grid{
        grid-template-columns:1fr 1fr;
    }

    .trust-item{
        padding:15px;
    }

    .trust-item strong{
        font-size:11px;
    }

    .trust-item span{
        display:none;
    }

    .section{
        padding:45px 0;
    }

    .section-head h2{
        font-size:23px;
    }

    .products{
        grid-template-columns:1fr 1fr;
        gap:12px;
    }

    .product-image{
        height:180px;
    }

    .product-body{
        padding:13px;
    }

    .product-title{
        font-size:12px;
    }

    .price{
        font-size:15px;
    }

    .add-cart{
        width:34px;
        height:34px;
    }

    .deal{
        min-height:430px;
    }

    .deal-content{
        padding:28px;
    }

    .deal h2{
        font-size:26px;
    }

    .reviews{
        grid-template-columns:1fr;
    }

    .stats{
        grid-template-columns:1fr;
    }

    .newsletter{
        padding:30px 22px;
        flex-direction:column;
        align-items:flex-start;
    }

    .subscribe{
        width:100%;
    }

    .footer-grid{
        grid-template-columns:1fr;
        gap:25px;
    }

}

</style>
</head>

<body>

<!-- =====================================================
     TOP BAR
===================================================== -->

<div class="topbar">
    <span>FREE SHIPPING</span>&nbsp; on orders over $75
    &nbsp;&nbsp; • &nbsp;&nbsp;
    Secure checkout &nbsp; • &nbsp; Easy returns
</div>


<!-- =====================================================
     HEADER
===================================================== -->

<header class="header">

<div class="container header-inner">

    <a href="#" class="logo">

        <div class="logo-mark">
            <i class="fa-solid fa-bag-shopping"></i>
        </div>

        Nexus<span>Shop</span>

    </a>


    <nav class="nav">

        <a href="#" class="active">Home</a>
        <a href="#categories">Categories</a>
        <a href="#products">Shop</a>
        <a href="#deals">Deals</a>
        <a href="#reviews">Reviews</a>

    </nav>


    <div class="search">

        <i class="fa-solid fa-magnifying-glass"></i>

        <input
            type="text"
            id="searchInput"
            placeholder="Search products...">

    </div>


    <div class="header-actions">

        <button class="icon-btn"
                onclick="showToast('Wishlist opened')">

            <i class="fa-regular fa-heart"></i>

            <span class="count" id="wishlistCount">3</span>

        </button>


        <button class="icon-btn"
                onclick="showToast('Shopping cart opened')">

            <i class="fa-solid fa-bag-shopping"></i>

            <span class="count" id="cartCount">0</span>

        </button>


        <div class="avatar">

            <img
                src="https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?auto=format&fit=crop&w=100&q=80">

        </div>

    </div>

</div>

<div class="container mobile-menu">

    <a href="#">Home</a>
    <a href="#categories">Categories</a>
    <a href="#products">Shop</a>
    <a href="#deals">Deals</a>
    <a href="#reviews">Reviews</a>

</div>

</header>


<main>


<!-- =====================================================
     HERO
===================================================== -->

<section class="hero">

<div class="container">

<div class="hero-box">

    <div class="hero-content">

        <div class="hero-label">
            <i class="fa-solid fa-sparkles"></i>
            NEW SEASON 2026
        </div>


        <h1>
            Upgrade your
            <span>everyday.</span>
        </h1>


        <p>
            Discover thoughtfully selected technology, fashion
            and lifestyle essentials designed for modern living.
        </p>


        <div class="hero-buttons">

            <a href="#products" class="btn btn-primary">

                Shop Collection
                <i class="fa-solid fa-arrow-right"></i>

            </a>


            <a href="#deals" class="btn btn-light">

                View Offers

            </a>

        </div>

    </div>


    <div class="hero-product">

        <img
            src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=900&q=90">

    </div>


    <div class="floating-card small">

        <div class="mini">
            TRENDING NOW
        </div>

        <strong>Premium Sneakers</strong>

        <div style="color:#f59e0b;font-size:11px;">
            ★★★★★
        </div>

    </div>

</div>

</div>

</section>


<!-- =====================================================
     TRUST
===================================================== -->

<section class="trust">

<div class="container">

<div class="trust-grid">

    <div class="trust-item">

        <div class="trust-icon">
            <i class="fa-solid fa-truck-fast"></i>
        </div>

        <div>
            <strong>Free Delivery</strong>
            <span>Orders above $75</span>
        </div>

    </div>


    <div class="trust-item">

        <div class="trust-icon">
            <i class="fa-solid fa-shield-halved"></i>
        </div>

        <div>
            <strong>Secure Payment</strong>
            <span>100% protected</span>
        </div>

    </div>


    <div class="trust-item">

        <div class="trust-icon">
            <i class="fa-solid fa-rotate-left"></i>
        </div>

        <div>
            <strong>Easy Returns</strong>
            <span>30-day returns</span>
        </div>

    </div>


    <div class="trust-item">

        <div class="trust-icon">
            <i class="fa-solid fa-headset"></i>
        </div>

        <div>
            <strong>24/7 Support</strong>
            <span>We're here to help</span>
        </div>

    </div>

</div>

</div>

</section>


<!-- =====================================================
     CATEGORIES
===================================================== -->

<section class="section" id="categories">

<div class="container">

<div class="section-head">

    <div>
        <h2>Explore categories</h2>
        <p>Everything you need, all in one place.</p>
    </div>

    <a href="#" class="view-all">
        View all →
    </a>

</div>


<div class="category-list">

    <div class="category">

        <div class="category-icon c1">
            <i class="fa-solid fa-mobile-screen-button"></i>
        </div>

        <strong>Smartphones</strong>
        <span>124 products</span>

    </div>


    <div class="category">

        <div class="category-icon c2">
            <i class="fa-solid fa-laptop"></i>
        </div>

        <strong>Laptops</strong>
        <span>86 products</span>

    </div>


    <div class="category">

        <div class="category-icon c3">
            <i class="fa-solid fa-shirt"></i>
        </div>

        <strong>Fashion</strong>
        <span>248 products</span>

    </div>


    <div class="category">

        <div class="category-icon c4">
            <i class="fa-solid fa-headphones"></i>
        </div>

        <strong>Audio</strong>
        <span>72 products</span>

    </div>


    <div class="category">

        <div class="category-icon c5">
            <i class="fa-solid fa-shoe-prints"></i>
        </div>

        <strong>Footwear</strong>
        <span>136 products</span>

    </div>


    <div class="category">

        <div class="category-icon c6">
            <i class="fa-solid fa-camera"></i>
        </div>

        <strong>Cameras</strong>
        <span>54 products</span>

    </div>

</div>

</div>

</section>


<!-- =====================================================
     PRODUCTS
===================================================== -->

<section class="section" id="products">

<div class="container">

<div class="section-head">

    <div>
        <h2>Trending products</h2>
        <p>Popular picks our customers love right now.</p>
    </div>

    <a href="#" class="view-all">
        Explore all →
    </a>

</div>


<div class="products" id="productGrid">


<!-- PRODUCT 1 -->

<article class="product"
data-name="Apple iPhone 15 Pro">

    <div class="product-image">

        <img
        src="https://images.unsplash.com/photo-1592286927505-3e4b9d0a7b4d?auto=format&fit=crop&w=700&q=85">

        <span class="product-badge">
            NEW
        </span>


        <div class="product-actions">

            <button onclick="wishlist(this)">
                <i class="fa-regular fa-heart"></i>
            </button>

            <button onclick="showToast('Quick view opened')">
                <i class="fa-solid fa-eye"></i>
            </button>

        </div>

    </div>


    <div class="product-body">

        <div class="product-category">
            Smartphones
        </div>

        <div class="product-title">
            Apple iPhone 15 Pro
        </div>

        <div class="rating">
            ★★★★★
            <span>(328)</span>
        </div>


        <div class="price-row">

            <div>
                <span class="price">$999</span>
                <span class="old-price">$1,099</span>
            </div>

            <button
                class="add-cart"
                onclick="addCart('Apple iPhone 15 Pro')">

                <i class="fa-solid fa-plus"></i>

            </button>

        </div>

    </div>

</article>


<!-- PRODUCT 2 -->

<article class="product"
data-name="MacBook Pro M3">

    <div class="product-image">

        <img
        src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=85">

        <span class="product-badge">
            BESTSELLER
        </span>


        <div class="product-actions">

            <button onclick="wishlist(this)">
                <i class="fa-regular fa-heart"></i>
            </button>

            <button onclick="showToast('Quick view opened')">
                <i class="fa-solid fa-eye"></i>
            </button>

        </div>

    </div>


    <div class="product-body">

        <div class="product-category">
            Laptops
        </div>

        <div class="product-title">
            MacBook Pro M3
        </div>

        <div class="rating">
            ★★★★★
            <span>(214)</span>
        </div>


        <div class="price-row">

            <div>
                <span class="price">$1,899</span>
            </div>

            <button
                class="add-cart"
                onclick="addCart('MacBook Pro M3')">

                <i class="fa-solid fa-plus"></i>

            </button>

        </div>

    </div>

</article>


<!-- PRODUCT 3 -->

<article class="product"
data-name="Sony WH 1000XM5">

    <div class="product-image">

        <img
        src="https://images.unsplash.com/photo-1546435770-a3e426bf472b?auto=format&fit=crop&w=700&q=85">

        <span class="product-badge sale">
            -20%
        </span>


        <div class="product-actions">

            <button onclick="wishlist(this)">
                <i class="fa-regular fa-heart"></i>
            </button>

            <button onclick="showToast('Quick view opened')">
                <i class="fa-solid fa-eye"></i>
            </button>

        </div>

    </div>


    <div class="product-body">

        <div class="product-category">
            Audio
        </div>

        <div class="product-title">
            Sony WH-1000XM5
        </div>

        <div class="rating">
            ★★★★★
            <span>(489)</span>
        </div>


        <div class="price-row">

            <div>
                <span class="price">$319</span>
                <span class="old-price">$399</span>
            </div>

            <button
                class="add-cart"
                onclick="addCart('Sony WH-1000XM5')">

                <i class="fa-solid fa-plus"></i>

            </button>

        </div>

    </div>

</article>


<!-- PRODUCT 4 -->

<article class="product"
data-name="Nike Air Max">

    <div class="product-image">

        <img
        src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85">

        <span class="product-badge">
            TRENDING
        </span>


        <div class="product-actions">

            <button onclick="wishlist(this)">
                <i class="fa-regular fa-heart"></i>
            </button>

            <button onclick="showToast('Quick view opened')">
                <i class="fa-solid fa-eye"></i>
            </button>

        </div>

    </div>


    <div class="product-body">

        <div class="product-category">
            Footwear
        </div>

        <div class="product-title">
            Nike Air Max
        </div>

        <div class="rating">
            ★★★★☆
            <span>(167)</span>
        </div>


        <div class="price-row">

            <div>
                <span class="price">$149</span>
                <span class="old-price">$179</span>
            </div>

            <button
                class="add-cart"
                onclick="addCart('Nike Air Max')">

                <i class="fa-solid fa-plus"></i>

            </button>

        </div>

    </div>

</article>


</div>

</div>

</section>


<!-- =====================================================
     DEAL
===================================================== -->

<section class="section" id="deals">

<div class="container">

<div class="section-head">

    <div>
        <h2>Limited-time deal</h2>
        <p>Premium products. Exceptional prices.</p>
    </div>

</div>


<div class="deal">

    <div class="deal-content">

        <span class="deal-tag">
            ⚡ FLASH SALE
        </span>

        <h2>
            Sony WH-1000XM5
        </h2>

        <p>
            Experience industry-leading noise cancellation,
            premium sound and all-day comfort.
        </p>


        <div class="timer">

            <div class="time-box">
                <strong id="days">02</strong>
                <span>DAYS</span>
            </div>

            <div class="time-box">
                <strong id="hours">12</strong>
                <span>HOURS</span>
            </div>

            <div class="time-box">
                <strong id="minutes">45</strong>
                <span>MIN</span>
            </div>

            <div class="time-box">
                <strong id="seconds">20</strong>
                <span>SEC</span>
            </div>

        </div>


        <button
            class="btn btn-primary"
            onclick="addCart('Sony WH-1000XM5 Flash Deal')">

            Grab the deal
            <i class="fa-solid fa-arrow-right"></i>

        </button>

    </div>


    <div class="deal-image">

        <img
        src="https://images.unsplash.com/photo-1546435770-a3e426bf472b?auto=format&fit=crop&w=1000&q=90">

    </div>

</div>

</div>

</section>


<!-- =====================================================
     STATS
===================================================== -->

<section class="section">

<div class="container">

<div class="stats">

    <div class="stat">

        <div class="stat-icon">
            <i class="fa-solid fa-users"></i>
        </div>

        <div>
            <strong>250K+</strong>
            <span>Happy customers</span>
        </div>

    </div>


    <div class="stat">

        <div class="stat-icon">
            <i class="fa-solid fa-box-open"></i>
        </div>

        <div>
            <strong>12K+</strong>
            <span>Products available</span>
        </div>

    </div>


    <div class="stat">

        <div class="stat-icon">
            <i class="fa-solid fa-star"></i>
        </div>

        <div>
            <strong>4.9/5</strong>
            <span>Average rating</span>
        </div>

    </div>

</div>

</div>

</section>


<!-- =====================================================
     REVIEWS
===================================================== -->

<section class="section" id="reviews">

<div class="container">

<div class="section-head">

    <div>
        <h2>Loved by shoppers</h2>
        <p>See why customers keep coming back.</p>
    </div>

</div>


<div class="reviews">


    <div class="review">

        <div class="review-stars">
            ★★★★★
        </div>

        <p>
            "The interface is beautiful and checkout was
            incredibly smooth. My order arrived earlier
            than expected."
        </p>

        <div class="review-user">

            <img src="https://i.pravatar.cc/100?img=47">

            <div>
                <strong>Sarah Mitchell</strong>
                <span>Verified customer</span>
            </div>

        </div>

    </div>


    <div class="review">

        <div class="review-stars">
            ★★★★★
        </div>

        <p>
            "Fantastic product selection and really competitive
            pricing. I've already recommended NexusShop to my
            friends."
        </p>

        <div class="review-user">

            <img src="https://i.pravatar.cc/100?img=12">

            <div>
                <strong>Daniel Cooper</strong>
                <span>Verified customer</span>
            </div>

        </div>

    </div>


    <div class="review">

        <div class="review-stars">
            ★★★★★
        </div>

        <p>
            "Customer support was excellent. The whole shopping
            experience feels much more premium than most stores."
        </p>

        <div class="review-user">

            <img src="https://i.pravatar.cc/100?img=32">

            <div>
                <strong>Emily Watson</strong>
                <span>Verified customer</span>
            </div>

        </div>

    </div>


</div>

</div>

</section>


<!-- =====================================================
     NEWSLETTER
===================================================== -->

<section class="section">

<div class="container">

<div class="newsletter">

    <div>

        <h2>
            Get the best deals first.
        </h2>

        <p>
            Join our newsletter for exclusive offers and new arrivals.
        </p>

    </div>


    <form
        class="subscribe"
        onsubmit="subscribe(event)">

        <input
            type="email"
            id="email"
            placeholder="Your email address"
            required>

        <button>
            Subscribe
        </button>

    </form>

</div>

</div>

</section>


</main>


<!-- =====================================================
     FOOTER
===================================================== -->

<footer class="footer">

<div class="container">

<div class="footer-grid">


    <div class="footer-brand">

        <div class="logo">

            <div class="logo-mark">
                <i class="fa-solid fa-bag-shopping"></i>
            </div>

            Nexus<span>Shop</span>

        </div>

        <p>
            A modern shopping destination built around
            quality products, simple discovery and a
            premium customer experience.
        </p>


        <div class="socials">

            <a href="#">
                <i class="fa-brands fa-instagram"></i>
            </a>

            <a href="#">
                <i class="fa-brands fa-facebook-f"></i>
            </a>

            <a href="#">
                <i class="fa-brands fa-x-twitter"></i>
            </a>

            <a href="#">
                <i class="fa-brands fa-youtube"></i>
            </a>

        </div>

    </div>


    <div>

        <h4>Shop</h4>

        <ul>
            <li><a href="#">All Products</a></li>
            <li><a href="#">New Arrivals</a></li>
            <li><a href="#">Best Sellers</a></li>
            <li><a href="#">Deals</a></li>
        </ul>

    </div>


    <div>

        <h4>Company</h4>

        <ul>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Careers</a></li>
            <li><a href="#">Our Story</a></li>
            <li><a href="#">Contact</a></li>
        </ul>

    </div>


    <div>

        <h4>Support</h4>

        <ul>
            <li><a href="#">Help Center</a></li>
            <li><a href="#">Shipping</a></li>
            <li><a href="#">Returns</a></li>
            <li><a href="#">Privacy</a></li>
        </ul>

    </div>


</div>


<div class="footer-bottom">

    © <span id="year"></span> NexusShop. All rights reserved.

</div>

</div>

</footer>


<!-- =====================================================
     TOAST
===================================================== -->

<div class="toast" id="toast">

    <i class="fa-solid fa-circle-check"></i>

    <span id="toastText">
        Added to cart
    </span>

</div>


<script>

/* =========================================================
   CART
========================================================= */

let cart = 0;

function addCart(product){

    cart++;

    document.getElementById("cartCount").textContent = cart;

    showToast(product + " added to cart");

}


/* =========================================================
   WISHLIST
========================================================= */

let wishlistCount = 3;

function wishlist(button){

    const icon = button.querySelector("i");

    if(icon.classList.contains("fa-regular")){

        icon.classList.remove("fa-regular");
        icon.classList.add("fa-solid");

        wishlistCount++;

    }else{

        icon.classList.remove("fa-solid");
        icon.classList.add("fa-regular");

        wishlistCount--;

    }

    document.getElementById("wishlistCount").textContent =
        wishlistCount;

}


/* =========================================================
   TOAST
========================================================= */

let toastTimer;

function showToast(message){

    const toast = document.getElementById("toast");
    const text = document.getElementById("toastText");

    text.textContent = message;

    toast.classList.add("show");

    clearTimeout(toastTimer);

    toastTimer = setTimeout(function(){

        toast.classList.remove("show");

    },2500);

}


/* =========================================================
   NEWSLETTER
========================================================= */

function subscribe(event){

    event.preventDefault();

    const email =
        document.getElementById("email").value.trim();

    if(!email){
        return;
    }

    showToast("You're subscribed successfully!");

    document.getElementById("email").value = "";

}


/* =========================================================
   SEARCH
========================================================= */

document
.getElementById("searchInput")
.addEventListener("input",function(){

    const query =
        this.value.toLowerCase().trim();

    const products =
        document.querySelectorAll(".product");

    products.forEach(function(product){

        const name =
            product.dataset.name.toLowerCase();

        if(name.includes(query)){

            product.style.display = "";

        }else{

            product.style.display = "none";

        }

    });

});


/* =========================================================
   FLASH TIMER
========================================================= */

let dealTime =
    (2 * 24 * 60 * 60) +
    (12 * 60 * 60) +
    (45 * 60) +
    20;


function updateTimer(){

    if(dealTime <= 0){
        dealTime = 0;
    }

    const days =
        Math.floor(dealTime / 86400);

    const hours =
        Math.floor((dealTime % 86400) / 3600);

    const minutes =
        Math.floor((dealTime % 3600) / 60);

    const seconds =
        dealTime % 60;


    document.getElementById("days").textContent =
        String(days).padStart(2,"0");

    document.getElementById("hours").textContent =
        String(hours).padStart(2,"0");

    document.getElementById("minutes").textContent =
        String(minutes).padStart(2,"0");

    document.getElementById("seconds").textContent =
        String(seconds).padStart(2,"0");


    dealTime--;

}


setInterval(updateTimer,1000);

updateTimer();


/* =========================================================
   YEAR
========================================================= */

document.getElementById("year").textContent =
    new Date().getFullYear();

</script>

</body>
</html>
