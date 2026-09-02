<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop | Premium Store</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Poppins:wght@600;700;800&display=swap"
          rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <style>

        /* =========================
           GLOBAL
        ========================= */

        :root {
            --bg: #070707;
            --card: #111111;
            --card2: #171717;
            --white: #ffffff;
            --text: #eeeeee;
            --muted: #929292;

            --purple: #8b5cf6;
            --blue: #06b6d4;
            --pink: #ec4899;
            --green: #22c55e;
            --red: #ef4444;

            --gradient: linear-gradient(
                135deg,
                #8b5cf6,
                #06b6d4
            );

            --radius: 20px;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            background:
                radial-gradient(
                    circle at 20% 10%,
                    rgba(139,92,246,.12),
                    transparent 30%
                ),
                radial-gradient(
                    circle at 90% 40%,
                    rgba(6,182,212,.10),
                    transparent 30%
                ),
                var(--bg);

            color: var(--text);

            font-family: Inter, sans-serif;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        button,
        input {
            font-family: inherit;
        }

        .container {
            width: min(1200px, 92%);
            margin: auto;
        }


        /* =========================
           HEADER
        ========================= */

        header {
            position: sticky;
            top: 0;
            z-index: 100;

            background: rgba(7,7,7,.75);

            backdrop-filter: blur(20px);

            border-bottom:
                1px solid rgba(255,255,255,.07);
        }

        .navbar {
            height: 78px;

            display: flex;
            align-items: center;
            justify-content: space-between;

            gap: 30px;
        }

        .logo {
            font-family: Poppins;
            font-size: 25px;
            font-weight: 800;
            letter-spacing: -1px;
        }

        .logo span {
            background: var(--gradient);

            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .nav-links {
            display: flex;
            gap: 28px;
            list-style: none;
        }

        .nav-links a {
            color: #aaa;

            font-size: 14px;
            font-weight: 600;

            transition: .3s;
        }

        .nav-links a:hover {
            color: white;
        }

        .nav-actions {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .nav-icon {
            width: 42px;
            height: 42px;

            border-radius: 50%;

            display: grid;
            place-items: center;

            background: #151515;

            border:
                1px solid rgba(255,255,255,.08);

            cursor: pointer;

            transition: .3s;
        }

        .nav-icon:hover {
            background: #222;

            transform: translateY(-2px);
        }

        .cart {
            position: relative;
        }

        .cart-count {
            position: absolute;

            top: -4px;
            right: -4px;

            width: 19px;
            height: 19px;

            background: var(--pink);

            border-radius: 50%;

            display: grid;
            place-items: center;

            font-size: 10px;
            font-weight: 800;
        }


        /* =========================
           HERO
        ========================= */

        .hero {
            min-height: 650px;

            display: grid;

            grid-template-columns:
                1fr 1fr;

            align-items: center;

            gap: 50px;
        }

        .hero-content {
            padding: 50px 0;
        }

        .eyebrow {
            display: inline-flex;

            align-items: center;
            gap: 8px;

            padding: 8px 14px;

            border-radius: 30px;

            background:
                rgba(139,92,246,.12);

            border:
                1px solid rgba(139,92,246,.25);

            color: #bca5ff;

            font-size: 12px;
            font-weight: 700;

            margin-bottom: 22px;
        }

        .hero h1 {
            font-family: Poppins;

            font-size:
                clamp(45px, 6vw, 78px);

            line-height: 1.02;

            letter-spacing: -4px;

            margin-bottom: 24px;
        }

        .hero h1 span {
            background: var(--gradient);

            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero p {
            max-width: 570px;

            color: var(--muted);

            line-height: 1.8;

            font-size: 16px;

            margin-bottom: 30px;
        }

        .hero-buttons {
            display: flex;
            gap: 14px;

            flex-wrap: wrap;
        }

        .btn {
            border: 0;

            padding: 14px 23px;

            border-radius: 12px;

            font-weight: 700;

            cursor: pointer;

            transition: .3s;
        }

        .btn-primary {
            color: white;

            background: var(--gradient);

            box-shadow:
                0 10px 35px rgba(139,92,246,.25);
        }

        .btn-primary:hover {
            transform: translateY(-3px);

            box-shadow:
                0 15px 45px rgba(139,92,246,.4);
        }

        .btn-dark {
            background: #171717;

            color: white;

            border:
                1px solid rgba(255,255,255,.08);
        }

        .btn-dark:hover {
            background: #222;
        }


        /* =========================
           HERO IMAGE
        ========================= */

        .hero-image {
            position: relative;

            height: 520px;

            border-radius: 35px;

            overflow: hidden;

            background:
                linear-gradient(
                    135deg,
                    rgba(139,92,246,.2),
                    rgba(6,182,212,.15)
                );
        }

        .hero-image img {
            width: 100%;
            height: 100%;

            object-fit: cover;

            transition: 1s;
        }

        .hero-image:hover img {
            transform: scale(1.05);
        }

        .floating-card {
            position: absolute;

            bottom: 25px;
            left: 25px;
            right: 25px;

            padding: 18px;

            display: flex;

            justify-content: space-between;
            align-items: center;

            background:
                rgba(15,15,15,.75);

            backdrop-filter: blur(15px);

            border:
                1px solid rgba(255,255,255,.1);

            border-radius: 16px;
        }

        .floating-card small {
            color: #aaa;
        }

        .floating-card strong {
            display: block;

            margin-top: 5px;

            font-size: 18px;
        }

        .price {
            color: #a78bfa;

            font-weight: 800;
        }


        /* =========================
           CATEGORY
        ========================= */

        section {
            padding: 80px 0;
        }

        .section-heading {
            display: flex;

            justify-content: space-between;
            align-items: end;

            margin-bottom: 35px;
        }

        .section-heading h2 {
            font-family: Poppins;

            font-size: 32px;
        }

        .section-heading p {
            color: var(--muted);

            margin-top: 7px;
        }

        .categories {
            display: grid;

            grid-template-columns:
                repeat(6,1fr);

            gap: 15px;
        }

        .category {
            background:
                linear-gradient(
                    145deg,
                    #151515,
                    #0d0d0d
                );

            border:
                1px solid rgba(255,255,255,.06);

            padding: 25px 15px;

            text-align: center;

            border-radius: 18px;

            cursor: pointer;

            transition: .3s;
        }

        .category:hover {
            transform: translateY(-7px);

            border-color:
                rgba(139,92,246,.4);
        }

        .category i {
            width: 55px;
            height: 55px;

            margin: auto;

            display: grid;
            place-items: center;

            border-radius: 15px;

            background:
                rgba(139,92,246,.12);

            color: #a78bfa;

            font-size: 20px;

            margin-bottom: 15px;
        }

        .category h4 {
            font-size: 13px;
        }


        /* =========================
           PRODUCTS
        ========================= */

        .products {
            display: grid;

            grid-template-columns:
                repeat(4,1fr);

            gap: 20px;
        }

        .product {
            position: relative;

            overflow: hidden;

            background: #111;

            border:
                1px solid rgba(255,255,255,.06);

            border-radius: 20px;

            transition: .3s;
        }

        .product:hover {
            transform: translateY(-8px);

            border-color:
                rgba(139,92,246,.3);

            box-shadow:
                0 20px 50px rgba(0,0,0,.4);
        }

        .product-image {
            height: 250px;

            overflow: hidden;

            position: relative;
        }

        .product-image img {
            width: 100%;
            height: 100%;

            object-fit: cover;

            transition: .5s;
        }

        .product:hover img {
            transform: scale(1.08);
        }

        .badge {
            position: absolute;

            top: 14px;
            left: 14px;

            background: var(--pink);

            padding: 6px 9px;

            border-radius: 7px;

            font-size: 10px;

            font-weight: 800;
        }

        .wishlist {
            position: absolute;

            top: 14px;
            right: 14px;

            width: 36px;
            height: 36px;

            border-radius: 50%;

            background:
                rgba(0,0,0,.65);

            color: white;

            border: 0;

            cursor: pointer;
        }

        .wishlist:hover {
            color: #f43f5e;
        }

        .product-body {
            padding: 18px;
        }

        .category-name {
            color: #888;

            font-size: 11px;

            text-transform: uppercase;

            letter-spacing: 1px;
        }

        .product h3 {
            font-size: 15px;

            margin: 7px 0 10px;
        }

        .rating {
            color: #fbbf24;

            font-size: 12px;
        }

        .rating span {
            color: #777;
        }

        .product-bottom {
            display: flex;

            justify-content: space-between;

            align-items: center;

            margin-top: 18px;
        }

        .product-price {
            font-size: 19px;

            font-weight: 800;
        }

        .add {
            width: 40px;
            height: 40px;

            border: 0;

            border-radius: 10px;

            color: white;

            background: var(--gradient);

            cursor: pointer;

            transition: .3s;
        }

        .add:hover {
            transform: rotate(8deg) scale(1.08);
        }


        /* =========================
           PROMO
        ========================= */

        .promo {
            min-height: 300px;

            border-radius: 30px;

            padding: 55px;

            display: flex;

            align-items: center;

            justify-content: space-between;

            overflow: hidden;

            position: relative;

            background:
                linear-gradient(
                    120deg,
                    #1d1236,
                    #071d23
                );

            border:
                1px solid rgba(255,255,255,.08);
        }

        .promo:before {
            content: "";

            position: absolute;

            width: 400px;
            height: 400px;

            border-radius: 50%;

            background: #8b5cf6;

            filter: blur(120px);

            opacity: .18;

            right: -100px;
        }

        .promo-content {
            position: relative;
            z-index: 2;
        }

        .promo h2 {
            font-family: Poppins;

            font-size: 40px;

            margin-bottom: 12px;
        }

        .promo p {
            color: #aaa;

            margin-bottom: 25px;
        }

        .discount {
            position: relative;
            z-index: 2;

            font-size: 80px;

            font-weight: 800;

            color: white;
        }

        .discount span {
            color: #a78bfa;
        }


        /* =========================
           NEWSLETTER
        ========================= */

        .newsletter {
            text-align: center;

            max-width: 700px;

            margin: auto;
        }

        .newsletter h2 {
            font-family: Poppins;

            font-size: 35px;
        }

        .newsletter p {
            color: #888;

            margin: 10px 0 25px;
        }

        .subscribe {
            display: flex;

            background: #151515;

            padding: 6px;

            border-radius: 14px;

            border:
                1px solid rgba(255,255,255,.08);
        }

        .subscribe input {
            flex: 1;

            border: 0;

            outline: 0;

            background: transparent;

            color: white;

            padding: 14px;
        }


        /* =========================
           FOOTER
        ========================= */

        footer {
            border-top:
                1px solid rgba(255,255,255,.06);

            padding: 40px 0;

            color: #777;
        }

        .footer-inner {
            display: flex;

            justify-content: space-between;

            gap: 30px;

            flex-wrap: wrap;
        }

        .socials {
            display: flex;
            gap: 10px;
        }

        .socials a {
            width: 38px;
            height: 38px;

            border-radius: 10px;

            display: grid;
            place-items: center;

            background: #151515;

            color: #aaa;
        }

        .socials a:hover {
            color: white;
            background: #222;
        }


        /* =========================
           MOBILE
        ========================= */

        .mobile-menu {
            display: none;
        }

        @media(max-width:1000px) {

            .nav-links {
                display: none;
            }

            .hero {
                grid-template-columns: 1fr;
            }

            .hero-image {
                height: 400px;
            }

            .categories {
                grid-template-columns:
                    repeat(3,1fr);
            }

            .products {
                grid-template-columns:
                    repeat(2,1fr);
            }

            .promo {
                padding: 35px;
            }

            .discount {
                font-size: 55px;
            }
        }

        @media(max-width:600px) {

            .navbar {
                height: 68px;
            }

            .hero {
                min-height: auto;

                padding:
                    50px 0;
            }

            .hero h1 {
                letter-spacing: -2px;
            }

            .hero-image {
                height: 330px;
            }

            .categories {
                grid-template-columns:
                    repeat(2,1fr);
            }

            .products {
                grid-template-columns: 1fr;
            }

            .product-image {
                height: 280px;
            }

            .section-heading {
                display: block;
            }

            .promo {
                flex-direction: column;

                align-items: flex-start;

                gap: 30px;
            }

            .discount {
                font-size: 50px;
            }

            .subscribe {
                flex-direction: column;

                background: transparent;

                border: 0;

                gap: 10px;
            }

            .subscribe input {
                background: #151515;

                border-radius: 10px;
            }

            .logo {
                font-size: 21px;
            }

            .nav-actions .nav-icon:first-child {
                display: none;
            }
        }

    </style>
</head>


<body>

<!-- ================= HEADER ================= -->

<header>

    <div class="container navbar">

        <a href="#" class="logo">
            Nexus<span>Shop</span>
        </a>

        <ul class="nav-links">

            <li>
                <a href="#">Home</a>
            </li>

            <li>
                <a href="#categories">Categories</a>
            </li>

            <li>
                <a href="#products">Shop</a>
            </li>

            <li>
                <a href="#deals">Deals</a>
            </li>

            <li>
                <a href="#contact">Contact</a>
            </li>

        </ul>

        <div class="nav-actions">

            <button class="nav-icon">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>

            <button class="nav-icon">
                <i class="fa-regular fa-user"></i>
            </button>

            <button class="nav-icon cart">

                <i class="fa-solid fa-bag-shopping"></i>

                <span class="cart-count" id="cartCount">
                    0
                </span>

            </button>

        </div>

    </div>

</header>


<main>


<!-- ================= HERO ================= -->

<section>

    <div class="container hero">

        <div class="hero-content">

            <div class="eyebrow">

                <i class="fa-solid fa-bolt"></i>

                NEW COLLECTION 2026

            </div>

            <h1>

                Upgrade Your
                <span>Everyday.</span>

            </h1>

            <p>

                Discover premium technology, fashion and accessories
                designed for modern lifestyles. Carefully selected products,
                exceptional quality and unbeatable prices.

            </p>

            <div class="hero-buttons">

                <button
                    class="btn btn-primary"
                    onclick="scrollProducts()">

                    Explore Products

                    <i class="fa-solid fa-arrow-right"></i>

                </button>

                <button
                    class="btn btn-dark"
                    onclick="location.href='#deals'">

                    View Deals

                </button>

            </div>

        </div>


        <div class="hero-image">

            <img
                src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=1000&q=85"
                alt="Premium laptop">

            <div class="floating-card">

                <div>

                    <small>Featured Product</small>

                    <strong>MacBook Pro</strong>

                </div>

                <div class="price">
                    $1,999
                </div>

            </div>

        </div>

    </div>

</section>


<!-- ================= CATEGORIES ================= -->

<section id="categories">

    <div class="container">

        <div class="section-heading">

            <div>

                <h2>Explore Categories</h2>

                <p>
                    Find everything you need in one place.
                </p>

            </div>

        </div>


        <div class="categories">

            <div class="category"
                 onclick="filterProducts('phones')">

                <i class="fa-solid fa-mobile-screen"></i>

                <h4>Phones</h4>

            </div>

            <div class="category"
                 onclick="filterProducts('laptops')">

                <i class="fa-solid fa-laptop"></i>

                <h4>Laptops</h4>

            </div>

            <div class="category"
                 onclick="filterProducts('fashion')">

                <i class="fa-solid fa-shirt"></i>

                <h4>Fashion</h4>

            </div>

            <div class="category"
                 onclick="filterProducts('audio')">

                <i class="fa-solid fa-headphones"></i>

                <h4>Audio</h4>

            </div>

            <div class="category"
                 onclick="filterProducts('shoes')">

                <i class="fa-solid fa-shoe-prints"></i>

                <h4>Shoes</h4>

            </div>

            <div class="category"
                 onclick="filterProducts('watch')">

                <i class="fa-regular fa-clock"></i>

                <h4>Watches</h4>

            </div>

        </div>

    </div>

</section>


<!-- ================= PRODUCTS ================= -->

<section id="products">

    <div class="container">

        <div class="section-heading">

            <div>

                <h2>Trending Products</h2>

                <p>
                    Our most popular products this week.
                </p>

            </div>

            <button
                class="btn btn-dark"
                onclick="showAll()">

                View All

            </button>

        </div>


        <div class="products" id="productGrid"></div>

    </div>

</section>


<!-- ================= PROMO ================= -->

<section id="deals">

    <div class="container">

        <div class="promo">

            <div class="promo-content">

                <div class="eyebrow">

                    <i class="fa-solid fa-fire"></i>

                    LIMITED OFFER

                </div>

                <h2>
                    Weekend Mega Sale
                </h2>

                <p>
                    Upgrade your setup with premium products
                    at incredible prices.
                </p>

                <button
                    class="btn btn-primary"
                    onclick="scrollProducts()">

                    Shop Sale

                </button>

            </div>

            <div class="discount">

                UP TO
                <span>50%</span>

            </div>

        </div>

    </div>

</section>


<!-- ================= NEWSLETTER ================= -->

<section id="contact">

    <div class="container">

        <div class="newsletter">

            <div class="eyebrow">

                <i class="fa-regular fa-envelope"></i>

                NEWSLETTER

            </div>

            <h2>
                Stay ahead of the trends.
            </h2>

            <p>
                Get new product alerts, exclusive offers
                and special discounts.
            </p>

            <form
                class="subscribe"
                onsubmit="subscribe(event)">

                <input
                    id="email"
                    type="email"
                    placeholder="Enter your email address"
                    required>

                <button class="btn btn-primary">

                    Subscribe

                </button>

            </form>

        </div>

    </div>

</section>

</main>


<!-- ================= FOOTER ================= -->

<footer>

    <div class="container footer-inner">

        <div>

            <div class="logo">
                Nexus<span>Shop</span>
            </div>

            <p style="margin-top:8px;">
                Premium products.
                Better lifestyle.
            </p>

        </div>

        <div class="socials">

            <a href="#">
                <i class="fa-brands fa-facebook-f"></i>
            </a>

            <a href="#">
                <i class="fa-brands fa-instagram"></i>
            </a>

            <a href="#">
                <i class="fa-brands fa-x-twitter"></i>
            </a>

            <a href="#">
                <i class="fa-brands fa-github"></i>
            </a>

        </div>

    </div>

    <div
        style="
        text-align:center;
        margin-top:30px;
        font-size:12px;
        ">

        © 2026 NexusShop.
        All rights reserved.

    </div>

</footer>


<script>

/* =========================
   PRODUCT DATA
========================= */

const products = [

    {
        name: "iPhone 15 Pro Max",
        category: "phones",
        price: 1199,
        rating: 5,
        reviews: 342,
        image:
        "https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=700&q=80",
        badge: "NEW"
    },

    {
        name: "MacBook Pro 14",
        category: "laptops",
        price: 1999,
        rating: 5,
        reviews: 218,
        image:
        "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=80",
        badge: "HOT"
    },

    {
        name: "Premium Sneakers",
        category: "shoes",
        price: 149,
        rating: 4,
        reviews: 126,
        image:
        "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80",
        badge: "-25%"
    },

    {
        name: "Wireless Headphones",
        category: "audio",
        price: 299,
        rating: 5,
        reviews: 189,
        image:
        "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=80",
        badge: "BEST"
    },

    {
        name: "Minimalist Watch",
        category: "watch",
        price: 199,
        rating: 4,
        reviews: 94,
        image:
        "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=80"
    },

    {
        name: "Urban Jacket",
        category: "fashion",
        price: 129,
        rating: 5,
        reviews: 76,
        image:
        "https://images.unsplash.com/photo-1551028719-00167b16eac5?auto=format&fit=crop&w=700&q=80",
        badge: "NEW"
    },

    {
        name: "Smartphone Pro",
        category: "phones",
        price: 899,
        rating: 4,
        reviews: 144,
        image:
        "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=700&q=80"
    },

    {
        name: "Designer Backpack",
        category: "fashion",
        price: 89,
        rating: 5,
        reviews: 211,
        image:
        "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=80"
    }

];


/* =========================
   RENDER PRODUCTS
========================= */

const grid =
    document.getElementById("productGrid");


function renderProducts(data) {

    grid.innerHTML = "";

    data.forEach(product => {

        const card =
        document.createElement("div");

        card.className = "product";

        card.innerHTML = `

            <div class="product-image">

                ${product.badge
                ?
                `<div class="badge">
                    ${product.badge}
                </div>`
                :
                ""
                }

                <button class="wishlist"
                        onclick="wishlist(this)">

                    <i class="fa-regular fa-heart"></i>

                </button>

                <img
                    src="${product.image}"
                    alt="${product.name}">

            </div>


            <div class="product-body">

                <div class="category-name">
                    ${product.category}
                </div>

                <h3>
                    ${product.name}
                </h3>

                <div class="rating">

                    ${"★".repeat(product.rating)}

                    <span>
                        (${product.reviews})
                    </span>

                </div>

                <div class="product-bottom">

                    <div class="product-price">
                        $${product.price.toLocaleString()}
                    </div>

                    <button
                        class="add"
                        onclick="addCart(this)">

                        <i class="fa-solid fa-plus"></i>

                    </button>

                </div>

            </div>
        `;

        grid.appendChild(card);

    });

}


/* =========================
   FILTER
========================= */

function filterProducts(category) {

    const filtered =
        products.filter(
            product =>
            product.category === category
        );

    renderProducts(filtered);

    document
        .getElementById("products")
        .scrollIntoView({
            behavior: "smooth"
        });
}


function showAll() {

    renderProducts(products);

}


/* =========================
   CART
========================= */

let cart = 0;

function addCart(button) {

    cart++;

    document
        .getElementById("cartCount")
        .textContent = cart;

    button.innerHTML =
        '<i class="fa-solid fa-check"></i>';

    button.style.background =
        "#22c55e";

    setTimeout(() => {

        button.innerHTML =
            '<i class="fa-solid fa-plus"></i>';

        button.style.background =
            "";

    }, 1000);

}


/* =========================
   WISHLIST
========================= */

function wishlist(button) {

    const icon =
        button.querySelector("i");

    icon.classList.toggle(
        "fa-regular"
    );

    icon.classList.toggle(
        "fa-solid"
    );

    icon.style.color =
        icon.classList.contains("fa-solid")
        ? "#ec4899"
        : "";

}


/* =========================
   SCROLL PRODUCTS
========================= */

function scrollProducts() {

    document
        .getElementById("products")
        .scrollIntoView({
            behavior: "smooth"
        });

}


/* =========================
   NEWSLETTER
========================= */

function subscribe(event) {

    event.preventDefault();

    const email =
        document.getElementById("email");

    alert(
        "Thanks for subscribing! 🎉"
    );

    email.value = "";

}


/* =========================
   INITIAL LOAD
========================= */

renderProducts(products);

</script>

</body>
</html>
