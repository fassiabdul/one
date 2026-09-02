<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop | Premium Shopping</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@500;600;700;800&display=swap"
        rel="stylesheet">

    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <style>

        /* =========================================
           VARIABLES
        ========================================= */

        :root {
            --primary: #111827;
            --primary-light: #1f2937;

            --accent: #6366f1;
            --accent-2: #8b5cf6;

            --text: #111827;
            --muted: #6b7280;

            --background: #f8fafc;
            --surface: #ffffff;
            --surface-2: #f1f5f9;

            --border: #e5e7eb;

            --success: #10b981;
            --danger: #ef4444;
            --warning: #f59e0b;

            --radius: 18px;

            --shadow:
                0 10px 40px rgba(15, 23, 42, 0.08);

            --container: 1250px;
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
            font-family: Inter, sans-serif;
            background: var(--background);
            color: var(--text);
            line-height: 1.6;
        }

        body.dark {
            --text: #f8fafc;
            --muted: #94a3b8;

            --background: #0f172a;
            --surface: #111827;
            --surface-2: #1e293b;

            --border: #334155;

            --primary: #f8fafc;
            --primary-light: #e2e8f0;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        button,
        input {
            font: inherit;
        }

        button {
            cursor: pointer;
        }

        img {
            max-width: 100%;
            display: block;
        }

        .container {
            width: min(100% - 40px, var(--container));
            margin: auto;
        }


        /* =========================================
           HEADER
        ========================================= */

        header {
            position: sticky;
            top: 0;
            z-index: 1000;

            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(20px);

            border-bottom: 1px solid var(--border);
        }

        body.dark header {
            background: rgba(15, 23, 42, 0.85);
        }

        .header {
            height: 76px;

            display: flex;
            align-items: center;
            justify-content: space-between;

            gap: 25px;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px;

            font-family: Poppins;
            font-size: 22px;
            font-weight: 800;
        }

        .logo-icon {
            width: 40px;
            height: 40px;

            display: grid;
            place-items: center;

            border-radius: 12px;

            background: linear-gradient(
                135deg,
                var(--accent),
                var(--accent-2)
            );

            color: white;
        }

        .logo span {
            color: var(--accent);
        }

        .nav {
            display: flex;
            align-items: center;
            gap: 28px;
        }

        .nav a {
            color: var(--muted);
            font-weight: 600;
            font-size: 14px;

            transition: .2s;
        }

        .nav a:hover {
            color: var(--accent);
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .icon-button {
            width: 42px;
            height: 42px;

            display: grid;
            place-items: center;

            border: 1px solid var(--border);
            border-radius: 12px;

            background: var(--surface);
            color: var(--text);

            transition: .2s;
        }

        .icon-button:hover {
            color: white;
            background: var(--accent);
            border-color: var(--accent);
            transform: translateY(-2px);
        }

        .cart-button {
            position: relative;
        }

        .cart-count {
            position: absolute;

            top: -5px;
            right: -5px;

            width: 20px;
            height: 20px;

            display: grid;
            place-items: center;

            background: var(--danger);
            color: white;

            border-radius: 50%;

            font-size: 11px;
            font-weight: 700;
        }

        .mobile-menu-btn {
            display: none;
        }


        /* =========================================
           HERO
        ========================================= */

        .hero {
            padding: 70px 0;
        }

        .hero-box {
            min-height: 520px;

            display: grid;
            grid-template-columns: 1fr 1fr;

            overflow: hidden;

            border-radius: 30px;

            background:
                radial-gradient(
                    circle at 80% 20%,
                    rgba(139, 92, 246, .7),
                    transparent 35%
                ),
                linear-gradient(
                    135deg,
                    #111827,
                    #312e81
                );

            color: white;
        }

        .hero-content {
            padding: 70px;

            display: flex;
            flex-direction: column;
            justify-content: center;

            position: relative;
            z-index: 2;
        }

        .hero-badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;

            width: fit-content;

            padding: 8px 14px;

            border-radius: 999px;

            background: rgba(255,255,255,.12);
            border: 1px solid rgba(255,255,255,.15);

            font-size: 13px;
            font-weight: 600;

            margin-bottom: 25px;
        }

        .hero h1 {
            font-family: Poppins;
            font-size: clamp(40px, 5vw, 70px);

            line-height: 1.05;

            margin-bottom: 22px;

            letter-spacing: -2px;
        }

        .gradient-text {
            background: linear-gradient(
                90deg,
                #67e8f9,
                #c084fc
            );

            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .hero p {
            max-width: 550px;

            color: #cbd5e1;

            font-size: 17px;

            margin-bottom: 30px;
        }

        .hero-buttons {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        .btn {
            border: 0;

            padding: 14px 22px;

            border-radius: 12px;

            font-weight: 700;

            display: inline-flex;
            align-items: center;
            gap: 9px;

            transition: .2s;
        }

        .btn-primary {
            background: white;
            color: #111827;
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 30px rgba(0,0,0,.2);
        }

        .btn-outline {
            background: transparent;

            color: white;

            border: 1px solid rgba(255,255,255,.25);
        }

        .btn-outline:hover {
            background: rgba(255,255,255,.1);
        }

        .hero-image {
            position: relative;

            display: flex;
            align-items: center;
            justify-content: center;
        }

        .hero-image img {
            width: 90%;
            height: 90%;

            object-fit: cover;

            border-radius: 25px;

            transform: rotate(3deg);

            box-shadow:
                0 30px 70px rgba(0,0,0,.35);
        }


        /* =========================================
           SECTION
        ========================================= */

        .section {
            padding: 70px 0;
        }

        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: end;

            margin-bottom: 30px;
        }

        .section-header h2 {
            font-family: Poppins;
            font-size: 32px;

            letter-spacing: -.8px;
        }

        .section-header p {
            color: var(--muted);
            margin-top: 5px;
        }

        .view-all {
            color: var(--accent);
            font-weight: 700;
            font-size: 14px;
        }


        /* =========================================
           CATEGORIES
        ========================================= */

        .categories {
            display: grid;

            grid-template-columns:
                repeat(6, 1fr);

            gap: 18px;
        }

        .category {
            background: var(--surface);

            border: 1px solid var(--border);

            border-radius: var(--radius);

            padding: 20px;

            text-align: center;

            transition: .25s;
        }

        .category:hover {
            transform: translateY(-7px);

            border-color: var(--accent);

            box-shadow: var(--shadow);
        }

        .category-image {
            width: 90px;
            height: 90px;

            margin: auto;

            border-radius: 50%;

            overflow: hidden;

            margin-bottom: 15px;
        }

        .category-image img {
            width: 100%;
            height: 100%;

            object-fit: cover;

            transition: .3s;
        }

        .category:hover img {
            transform: scale(1.1);
        }

        .category h3 {
            font-size: 14px;
        }

        .category p {
            font-size: 12px;
            color: var(--muted);
        }


        /* =========================================
           PRODUCTS
        ========================================= */

        .products {
            display: grid;

            grid-template-columns:
                repeat(4, 1fr);

            gap: 22px;
        }

        .product {
            position: relative;

            background: var(--surface);

            border: 1px solid var(--border);

            border-radius: var(--radius);

            overflow: hidden;

            transition: .25s;
        }

        .product:hover {
            transform: translateY(-8px);

            box-shadow: var(--shadow);
        }

        .product-image {
            height: 250px;

            background: var(--surface-2);

            position: relative;

            overflow: hidden;
        }

        .product-image img {
            width: 100%;
            height: 100%;

            object-fit: cover;

            transition: .4s;
        }

        .product:hover .product-image img {
            transform: scale(1.07);
        }

        .product-badge {
            position: absolute;

            top: 14px;
            left: 14px;

            padding: 6px 10px;

            background: var(--danger);

            color: white;

            border-radius: 8px;

            font-size: 11px;
            font-weight: 700;

            z-index: 2;
        }

        .wishlist {
            position: absolute;

            top: 14px;
            right: 14px;

            width: 38px;
            height: 38px;

            border: 0;

            border-radius: 50%;

            background: rgba(255,255,255,.9);

            display: grid;
            place-items: center;

            color: #374151;

            z-index: 2;

            transition: .2s;
        }

        .wishlist:hover {
            background: var(--danger);
            color: white;
        }

        .product-body {
            padding: 18px;
        }

        .product-category {
            color: var(--accent);

            font-size: 12px;
            font-weight: 700;

            text-transform: uppercase;
        }

        .product-title {
            font-size: 16px;
            font-weight: 700;

            margin: 5px 0;

            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .rating {
            color: #fbbf24;

            font-size: 13px;
        }

        .rating span {
            color: var(--muted);
        }

        .product-bottom {
            display: flex;

            align-items: center;
            justify-content: space-between;

            margin-top: 15px;
        }

        .price {
            font-size: 19px;
            font-weight: 800;
        }

        .old-price {
            font-size: 12px;

            color: var(--muted);

            text-decoration: line-through;

            margin-left: 5px;
        }

        .add-cart {
            width: 40px;
            height: 40px;

            border: 0;

            border-radius: 10px;

            background: var(--primary);

            color: white;

            transition: .2s;
        }

        .add-cart:hover {
            background: var(--accent);

            transform: scale(1.05);
        }


        /* =========================================
           SALE
        ========================================= */

        .sale {
            background:
                linear-gradient(
                    135deg,
                    #312e81,
                    #7c3aed
                );

            color: white;

            border-radius: 25px;

            padding: 45px;

            display: grid;

            grid-template-columns: 1fr 1fr;

            align-items: center;

            overflow: hidden;
        }

        .sale-content h2 {
            font-family: Poppins;

            font-size: 40px;

            margin-bottom: 10px;
        }

        .sale-content p {
            color: #ddd6fe;
        }

        .timer {
            display: flex;
            gap: 10px;

            margin: 25px 0;
        }

        .timer-box {
            width: 70px;

            padding: 10px;

            text-align: center;

            background: rgba(255,255,255,.12);

            border-radius: 10px;

            backdrop-filter: blur(10px);
        }

        .timer-box strong {
            display: block;

            font-size: 22px;
        }

        .timer-box small {
            color: #ddd6fe;
            font-size: 10px;
        }

        .sale-image {
            display: flex;
            justify-content: center;
        }

        .sale-image img {
            width: 85%;
            max-height: 300px;

            object-fit: cover;

            border-radius: 20px;

            transform: rotate(-3deg);
        }


        /* =========================================
           TESTIMONIALS
        ========================================= */

        .testimonials {
            display: grid;

            grid-template-columns:
                repeat(3, 1fr);

            gap: 20px;
        }

        .testimonial {
            background: var(--surface);

            border: 1px solid var(--border);

            border-radius: var(--radius);

            padding: 25px;
        }

        .testimonial-stars {
            color: #fbbf24;

            margin-bottom: 15px;
        }

        .testimonial p {
            color: var(--muted);

            font-size: 14px;

            margin-bottom: 20px;
        }

        .customer {
            display: flex;

            align-items: center;

            gap: 12px;
        }

        .customer img {
            width: 45px;
            height: 45px;

            border-radius: 50%;

            object-fit: cover;
        }

        .customer strong {
            display: block;
            font-size: 14px;
        }

        .customer span {
            color: var(--muted);
            font-size: 12px;
        }


        /* =========================================
           NEWSLETTER
        ========================================= */

        .newsletter {
            padding: 55px;

            text-align: center;

            border-radius: 25px;

            background:
                linear-gradient(
                    135deg,
                    #eef2ff,
                    #f5f3ff
                );
        }

        body.dark .newsletter {
            background: #1e293b;
        }

        .newsletter h2 {
            font-family: Poppins;
            font-size: 32px;
        }

        .newsletter p {
            color: var(--muted);

            margin: 8px 0 25px;
        }

        .newsletter-form {
            display: flex;

            max-width: 550px;

            margin: auto;

            background: var(--surface);

            padding: 6px;

            border-radius: 14px;

            border: 1px solid var(--border);
        }

        .newsletter-form input {
            flex: 1;

            border: 0;

            outline: 0;

            background: transparent;

            padding: 12px;
        }

        .newsletter-form button {
            border: 0;

            background: var(--accent);

            color: white;

            padding: 12px 20px;

            border-radius: 10px;

            font-weight: 700;
        }


        /* =========================================
           FOOTER
        ========================================= */

        footer {
            background: #0f172a;

            color: white;

            margin-top: 70px;

            padding: 60px 0 25px;
        }

        .footer-grid {
            display: grid;

            grid-template-columns:
                2fr 1fr 1fr 1fr;

            gap: 40px;

            margin-bottom: 50px;
        }

        .footer-logo {
            font-family: Poppins;

            font-size: 22px;

            font-weight: 800;

            margin-bottom: 12px;
        }

        footer p {
            color: #94a3b8;

            font-size: 14px;
        }

        .footer-column h3 {
            font-size: 15px;

            margin-bottom: 15px;
        }

        .footer-column a {
            display: block;

            color: #94a3b8;

            font-size: 13px;

            margin-bottom: 10px;
        }

        .footer-column a:hover {
            color: white;
        }

        .copyright {
            padding-top: 20px;

            border-top: 1px solid #1e293b;

            text-align: center;

            color: #64748b;

            font-size: 12px;
        }


        /* =========================================
           CART DRAWER
        ========================================= */

        .overlay {
            position: fixed;

            inset: 0;

            background: rgba(0,0,0,.45);

            z-index: 2000;

            opacity: 0;

            pointer-events: none;

            transition: .3s;
        }

        .overlay.active {
            opacity: 1;

            pointer-events: auto;
        }

        .cart-drawer {
            position: fixed;

            top: 0;
            right: -420px;

            width: 400px;
            max-width: 90%;

            height: 100vh;

            background: var(--surface);

            z-index: 2100;

            padding: 25px;

            transition: .35s;

            display: flex;

            flex-direction: column;
        }

        .cart-drawer.active {
            right: 0;
        }

        .cart-header {
            display: flex;

            align-items: center;

            justify-content: space-between;

            padding-bottom: 20px;

            border-bottom: 1px solid var(--border);
        }

        .cart-items {
            flex: 1;

            overflow-y: auto;

            padding: 20px 0;
        }

        .empty-cart {
            text-align: center;

            color: var(--muted);

            padding: 50px 10px;
        }

        .cart-footer {
            border-top: 1px solid var(--border);

            padding-top: 20px;
        }

        .checkout {
            width: 100%;

            padding: 14px;

            border: 0;

            border-radius: 12px;

            background: var(--accent);

            color: white;

            font-weight: 700;

            margin-top: 15px;
        }


        /* =========================================
           TOAST
        ========================================= */

        .toast {
            position: fixed;

            bottom: 25px;
            left: 50%;

            transform:
                translate(-50%, 100px);

            background: #111827;

            color: white;

            padding: 13px 20px;

            border-radius: 10px;

            z-index: 5000;

            opacity: 0;

            transition: .3s;
        }

        .toast.show {
            opacity: 1;

            transform:
                translate(-50%, 0);
        }


        /* =========================================
           RESPONSIVE
        ========================================= */

        @media(max-width:1100px) {

            .categories {
                grid-template-columns:
                    repeat(3, 1fr);
            }

            .products {
                grid-template-columns:
                    repeat(3, 1fr);
            }

        }

        @media(max-width:900px) {

            .nav {
                display: none;
            }

            .mobile-menu-btn {
                display: grid;
            }

            .hero-box {
                grid-template-columns: 1fr;
            }

            .hero-image {
                display: none;
            }

            .hero-content {
                padding: 50px;
            }

            .sale {
                grid-template-columns: 1fr;
            }

            .sale-image {
                display: none;
            }

            .testimonials {
                grid-template-columns: 1fr;
            }

            .footer-grid {
                grid-template-columns:
                    repeat(2, 1fr);
            }

        }

        @media(max-width:600px) {

            .container {
                width: min(100% - 25px, var(--container));
            }

            .header {
                height: 65px;
            }

            .header-actions .account,
            .header-actions .wishlist {
                display: none;
            }

            .hero {
                padding: 20px 0 40px;
            }

            .hero-box {
                border-radius: 20px;
            }

            .hero-content {
                padding: 40px 25px;
            }

            .hero h1 {
                font-size: 42px;
            }

            .categories {
                grid-template-columns:
                    repeat(2, 1fr);
            }

            .products {
                grid-template-columns: 1fr;
            }

            .section {
                padding: 45px 0;
            }

            .section-header h2 {
                font-size: 26px;
            }

            .section-header {
                align-items: start;
            }

            .view-all {
                display: none;
            }

            .sale {
                padding: 30px 20px;
            }

            .sale-content h2 {
                font-size: 30px;
            }

            .timer-box {
                width: 60px;
            }

            .newsletter {
                padding: 35px 20px;
            }

            .newsletter h2 {
                font-size: 25px;
            }

            .footer-grid {
                grid-template-columns: 1fr;
            }

        }

    </style>
</head>


<body>

<!-- =========================================
     HEADER
========================================= -->

<header>

    <div class="container header">

        <button
            class="icon-button mobile-menu-btn"
            id="mobileMenuBtn">

            <i class="fas fa-bars"></i>

        </button>

        <a href="#" class="logo">

            <div class="logo-icon">
                <i class="fas fa-bag-shopping"></i>
            </div>

            Nexus<span>Shop</span>

        </a>


        <nav class="nav">

            <a href="#">Home</a>

            <a href="#categories">
                Categories
            </a>

            <a href="#products">
                Products
            </a>

            <a href="#deals">
                Deals
            </a>

            <a href="#reviews">
                Reviews
            </a>

        </nav>


        <div class="header-actions">

            <button
                class="icon-button"
                id="themeBtn"
                title="Toggle theme">

                <i class="fas fa-moon"></i>

            </button>

            <button
                class="icon-button account">

                <i class="far fa-user"></i>

            </button>

            <button
                class="icon-button wishlist">

                <i class="far fa-heart"></i>

            </button>

            <button
                class="icon-button cart-button"
                id="cartBtn">

                <i class="fas fa-bag-shopping"></i>

                <span
                    class="cart-count"
                    id="cartCount">
                    0
                </span>

            </button>

        </div>

    </div>

</header>


<!-- =========================================
     HERO
========================================= -->

<main>

<section class="hero">

    <div class="container">

        <div class="hero-box">

            <div class="hero-content">

                <div class="hero-badge">

                    <i class="fas fa-sparkles"></i>

                    New Collection 2026

                </div>

                <h1>

                    Shop smarter.
                    <br>

                    <span class="gradient-text">
                        Live better.
                    </span>

                </h1>

                <p>

                    Discover premium products, exclusive deals
                    and trending essentials — all in one place.

                </p>

                <div class="hero-buttons">

                    <button
                        class="btn btn-primary"
                        onclick="scrollToProducts()">

                        Explore Collection

                        <i class="fas fa-arrow-right"></i>

                    </button>

                    <button
                        class="btn btn-outline"
                        onclick="scrollToDeals()">

                        View Deals

                    </button>

                </div>

            </div>


            <div class="hero-image">

                <img
                    src="https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1000&q=85"
                    alt="Shopping">

            </div>

        </div>

    </div>

</section>


<!-- =========================================
     CATEGORIES
========================================= -->

<section
    class="section"
    id="categories">

    <div class="container">

        <div class="section-header">

            <div>

                <h2>
                    Shop by category
                </h2>

                <p>
                    Find exactly what you're looking for.
                </p>

            </div>

            <a href="#" class="view-all">
                View all →
            </a>

        </div>


        <div
            class="categories"
            id="categoriesGrid">

        </div>

    </div>

</section>


<!-- =========================================
     PRODUCTS
========================================= -->

<section
    class="section"
    id="products">

    <div class="container">

        <div class="section-header">

            <div>

                <h2>
                    Trending products
                </h2>

                <p>
                    Popular products customers love.
                </p>

            </div>

            <a href="#" class="view-all">
                View all →
            </a>

        </div>


        <div
            class="products"
            id="productsGrid">

        </div>

    </div>

</section>


<!-- =========================================
     FLASH SALE
========================================= -->

<section
    class="section"
    id="deals">

    <div class="container">

        <div class="sale">

            <div class="sale-content">

                <span
                    style="
                    color:#c4b5fd;
                    font-weight:700;
                    font-size:13px;
                    ">
                    LIMITED TIME OFFER
                </span>

                <h2>
                    Big tech.
                    <br>
                    Small price.
                </h2>

                <p>
                    Save up to 40% on selected premium electronics.
                </p>


                <div class="timer">

                    <div class="timer-box">

                        <strong id="days">
                            00
                        </strong>

                        <small>
                            DAYS
                        </small>

                    </div>

                    <div class="timer-box">

                        <strong id="hours">
                            00
                        </strong>

                        <small>
                            HOURS
                        </small>

                    </div>

                    <div class="timer-box">

                        <strong id="minutes">
                            00
                        </strong>

                        <small>
                            MINUTES
                        </small>

                    </div>

                    <div class="timer-box">

                        <strong id="seconds">
                            00
                        </strong>

                        <small>
                            SECONDS
                        </small>

                    </div>

                </div>


                <button
                    class="btn btn-primary"
                    onclick="addDealToCart()">

                    Shop the sale

                    <i class="fas fa-arrow-right"></i>

                </button>

            </div>


            <div class="sale-image">

                <img
                    src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=85"
                    alt="MacBook">

            </div>

        </div>

    </div>

</section>


<!-- =========================================
     REVIEWS
========================================= -->

<section
    class="section"
    id="reviews">

    <div class="container">

        <div class="section-header">

            <div>

                <h2>
                    Loved by shoppers
                </h2>

                <p>
                    See what our customers have to say.
                </p>

            </div>

        </div>


        <div class="testimonials">

            <div class="testimonial">

                <div class="testimonial-stars">
                    ★★★★★
                </div>

                <p>
                    "The shopping experience was amazing.
                    The product arrived earlier than expected
                    and the quality is excellent."
                </p>

                <div class="customer">

                    <img
                        src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
                        alt="Sarah">

                    <div>

                        <strong>
                            Sarah Johnson
                        </strong>

                        <span>
                            Verified customer
                        </span>

                    </div>

                </div>

            </div>


            <div class="testimonial">

                <div class="testimonial-stars">
                    ★★★★★
                </div>

                <p>
                    "Great prices, fast delivery and a
                    beautiful website. I will definitely
                    order again."
                </p>

                <div class="customer">

                    <img
                        src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
                        alt="David">

                    <div>

                        <strong>
                            David Miller
                        </strong>

                        <span>
                            Verified customer
                        </span>

                    </div>

                </div>

            </div>


            <div class="testimonial">

                <div class="testimonial-stars">
                    ★★★★★
                </div>

                <p>
                    "Excellent customer support and an
                    impressive collection of products.
                    Highly recommended."
                </p>

                <div class="customer">

                    <img
                        src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=100&q=80"
                        alt="Emily">

                    <div>

                        <strong>
                            Emily Wilson
                        </strong>

                        <span>
                            Verified customer
                        </span>

                    </div>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- =========================================
     NEWSLETTER
========================================= -->

<section class="section">

    <div class="container">

        <div class="newsletter">

            <h2>
                Get the good stuff.
            </h2>

            <p>
                New arrivals, exclusive offers and
                shopping inspiration delivered to your inbox.
            </p>

            <form
                class="newsletter-form"
                id="newsletterForm">

                <input
                    type="email"
                    id="email"
                    placeholder="Your email address"
                    required>

                <button type="submit">
                    Subscribe
                </button>

            </form>

        </div>

    </div>

</section>

</main>


<!-- =========================================
     FOOTER
========================================= -->

<footer>

    <div class="container">

        <div class="footer-grid">

            <div>

                <div class="footer-logo">
                    NexusShop
                </div>

                <p>
                    Your destination for premium products,
                    smart shopping and incredible deals.
                </p>

            </div>


            <div class="footer-column">

                <h3>
                    Shop
                </h3>

                <a href="#">
                    New arrivals
                </a>

                <a href="#">
                    Best sellers
                </a>

                <a href="#">
                    Electronics
                </a>

                <a href="#">
                    Fashion
                </a>

            </div>


            <div class="footer-column">

                <h3>
                    Company
                </h3>

                <a href="#">
                    About us
                </a>

                <a href="#">
                    Careers
                </a>

                <a href="#">
                    Contact
                </a>

                <a href="#">
                    Blog
                </a>

            </div>


            <div class="footer-column">

                <h3>
                    Support
                </h3>

                <a href="#">
                    Help center
                </a>

                <a href="#">
                    Shipping
                </a>

                <a href="#">
                    Returns
                </a>

                <a href="#">
                    Privacy
                </a>

            </div>

        </div>


        <div class="copyright">

            © 2026 NexusShop. All rights reserved.

        </div>

    </div>

</footer>


<!-- =========================================
     CART OVERLAY
========================================= -->

<div
    class="overlay"
    id="overlay">
</div>


<div
    class="cart-drawer"
    id="cartDrawer">

    <div class="cart-header">

        <h2>
            Your Cart
        </h2>

        <button
            class="icon-button"
            id="closeCart">

            <i class="fas fa-xmark"></i>

        </button>

    </div>


    <div
        class="cart-items"
        id="cartItems">

        <div class="empty-cart">

            <i
                class="fas fa-bag-shopping"
                style="
                font-size:45px;
                margin-bottom:15px;
                ">
            </i>

            <p>
                Your cart is empty.
            </p>

        </div>

    </div>


    <div class="cart-footer">

        <div
            style="
            display:flex;
            justify-content:space-between;
            font-weight:700;
            ">

            <span>
                Total
            </span>

            <span id="cartTotal">
                $0
            </span>

        </div>

        <button class="checkout">
            Proceed to checkout
        </button>

    </div>

</div>


<!-- TOAST -->

<div
    class="toast"
    id="toast">

    Added to cart ✓

</div>


<script>

    /* =========================================
       DATA
    ========================================= */

    const categories = [

        {
            name: "Electronics",
            image: "https://images.unsplash.com/photo-1498049794561-7780e7231661?auto=format&fit=crop&w=300&q=80"
        },

        {
            name: "Fashion",
            image: "https://images.unsplash.com/photo-1445205170230-053b83016050?auto=format&fit=crop&w=300&q=80"
        },

        {
            name: "Shoes",
            image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=300&q=80"
        },

        {
            name: "Watches",
            image: "https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=300&q=80"
        },

        {
            name: "Accessories",
            image: "https://images.unsplash.com/photo-1523779917675-b6ed3a42a561?auto=format&fit=crop&w=300&q=80"
        },

        {
            name: "Gaming",
            image: "https://images.unsplash.com/photo-1606144042614-b2417e99c4e3?auto=format&fit=crop&w=300&q=80"
        }

    ];


    const products = [

        {
            id: 1,
            title: "iPhone 15 Pro Max",
            category: "Electronics",
            price: 1199,
            oldPrice: 1299,
            rating: 5,
            reviews: 324,
            badge: "New",
            image: "https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 2,
            title: "MacBook Pro M3",
            category: "Electronics",
            price: 1899,
            oldPrice: 2199,
            rating: 5,
            reviews: 188,
            badge: "Sale",
            image: "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 3,
            title: "Premium Running Shoes",
            category: "Shoes",
            price: 129,
            oldPrice: 169,
            rating: 4,
            reviews: 96,
            badge: "25% OFF",
            image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 4,
            title: "Classic Smart Watch",
            category: "Watches",
            price: 249,
            oldPrice: 299,
            rating: 5,
            reviews: 212,
            badge: "Popular",
            image: "https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 5,
            title: "Sony Wireless Headphones",
            category: "Electronics",
            price: 349,
            oldPrice: 399,
            rating: 5,
            reviews: 142,
            badge: "Hot",
            image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 6,
            title: "Minimal Backpack",
            category: "Accessories",
            price: 79,
            oldPrice: 99,
            rating: 4,
            reviews: 76,
            badge: "",
            image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 7,
            title: "Premium Sunglasses",
            category: "Accessories",
            price: 89,
            oldPrice: 119,
            rating: 5,
            reviews: 103,
            badge: "New",
            image: "https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 8,
            title: "Gaming Controller",
            category: "Gaming",
            price: 69,
            oldPrice: 89,
            rating: 4,
            reviews: 87,
            badge: "Sale",
            image: "https://images.unsplash.com/photo-1606144042614-b2417e99c4e3?auto=format&fit=crop&w=700&q=85"
        }

    ];


    /* =========================================
       RENDER CATEGORIES
    ========================================= */

    const categoriesGrid =
        document.getElementById("categoriesGrid");

    categories.forEach(category => {

        const card =
            document.createElement("div");

        card.className = "category";

        card.innerHTML = `

            <div class="category-image">

                <img
                    src="${category.image}"
                    alt="${category.name}">

            </div>

            <h3>
                ${category.name}
            </h3>

            <p>
                Explore collection
            </p>

        `;

        categoriesGrid.appendChild(card);

    });


    /* =========================================
       RENDER PRODUCTS
    ========================================= */

    const productsGrid =
        document.getElementById("productsGrid");


    function renderProducts() {

        productsGrid.innerHTML = "";


        products.forEach(product => {

            const card =
                document.createElement("article");

            card.className = "product";


            card.innerHTML = `

                ${
                    product.badge

                    ? `
                    <span class="product-badge">
                        ${product.badge}
                    </span>
                    `

                    : ""
                }


                <button
                    class="wishlist"
                    onclick="toggleWishlist(this)">

                    <i class="far fa-heart"></i>

                </button>


                <div class="product-image">

                    <img
                        src="${product.image}"
                        alt="${product.title}">

                </div>


                <div class="product-body">

                    <div class="product-category">
                        ${product.category}
                    </div>


                    <div class="product-title">
                        ${product.title}
                    </div>


                    <div class="rating">

                        ${"★".repeat(product.rating)}

                        <span>
                            (${product.reviews})
                        </span>

                    </div>


                    <div class="product-bottom">

                        <div>

                            <span class="price">
                                $${product.price}
                            </span>

                            <span class="old-price">
                                $${product.oldPrice}
                            </span>

                        </div>


                        <button
                            class="add-cart"
                            onclick="addToCart(${product.id})">

                            <i class="fas fa-plus"></i>

                        </button>

                    </div>

                </div>

            `;


            productsGrid.appendChild(card);

        });

    }


    renderProducts();


    /* =========================================
       CART
    ========================================= */

    let cart = [];


    function addToCart(productId) {

        const product =
            products.find(
                item => item.id === productId
            );


        if (!product) return;


        cart.push(product);


        updateCart();


        showToast(
            `${product.title} added to cart`
        );

    }


    function addDealToCart() {

        addToCart(2);

    }


    function updateCart() {

        document.getElementById("cartCount")
            .textContent = cart.length;


        const cartItems =
            document.getElementById("cartItems");


        const cartTotal =
            document.getElementById("cartTotal");


        if (cart.length === 0) {

            cartItems.innerHTML = `

                <div class="empty-cart">

                    <i
                        class="fas fa-bag-shopping"
                        style="font-size:45px;margin-bottom:15px;">
                    </i>

                    <p>
                        Your cart is empty.
                    </p>

                </div>

            `;

            cartTotal.textContent = "$0";

            return;

        }


        cartItems.innerHTML = "";


        let total = 0;


        cart.forEach((product, index) => {

            total += product.price;


            const item =
                document.createElement("div");


            item.style.cssText = `
                display:flex;
                gap:12px;
                align-items:center;
                margin-bottom:15px;
                padding-bottom:15px;
                border-bottom:1px solid var(--border);
            `;


            item.innerHTML = `

                <img
                    src="${product.image}"
                    style="
                    width:65px;
                    height:65px;
                    object-fit:cover;
                    border-radius:10px;
                    ">


                <div style="flex:1">

                    <strong
                        style="font-size:13px;">
                        ${product.title}
                    </strong>

                    <div
                        style="
                        color:var(--accent);
                        font-weight:700;
                        margin-top:4px;">
                        $${product.price}
                    </div>

                </div>


                <button
                    onclick="removeCartItem(${index})"
                    style="
                    border:0;
                    background:none;
                    color:#ef4444;">

                    <i class="fas fa-trash"></i>

                </button>

            `;


            cartItems.appendChild(item);

        });


        cartTotal.textContent =
            `$${total.toLocaleString()}`;

    }


    function removeCartItem(index) {

        cart.splice(index, 1);

        updateCart();

    }


    /* =========================================
       CART DRAWER
    ========================================= */

    const cartBtn =
        document.getElementById("cartBtn");

    const cartDrawer =
        document.getElementById("cartDrawer");

    const overlay =
        document.getElementById("overlay");

    const closeCart =
        document.getElementById("closeCart");


    function openCart() {

        cartDrawer.classList.add("active");

        overlay.classList.add("active");

    }


    function closeCartDrawer() {

        cartDrawer.classList.remove("active");

        overlay.classList.remove("active");

    }


    cartBtn.addEventListener(
        "click",
        openCart
    );


    closeCart.addEventListener(
        "click",
        closeCartDrawer
    );


    overlay.addEventListener(
        "click",
        closeCartDrawer
    );


    /* =========================================
       WISHLIST
    ========================================= */

    function toggleWishlist(button) {

        const icon =
            button.querySelector("i");


        icon.classList.toggle("far");

        icon.classList.toggle("fas");


        if (icon.classList.contains("fas")) {

            button.style.background =
                "#ef4444";

            button.style.color =
                "white";

            showToast(
                "Added to wishlist ❤️"
            );

        } else {

            button.style.background =
                "rgba(255,255,255,.9)";

            button.style.color =
                "#374151";

        }

    }


    /* =========================================
       DARK MODE
    ========================================= */

    document
        .getElementById("themeBtn")
        .addEventListener("click", () => {

            document.body.classList.toggle("dark");


            const icon =
                document.querySelector(
                    "#themeBtn i"
                );


            icon.classList.toggle(
                "fa-moon"
            );

            icon.classList.toggle(
                "fa-sun"
            );

        });


    /* =========================================
       NEWSLETTER
    ========================================= */

    document
        .getElementById("newsletterForm")
        .addEventListener(
            "submit",
            function(e) {

                e.preventDefault();


                const email =
                    document.getElementById(
                        "email"
                    ).value;


                showToast(
                    `Subscribed: ${email}`
                );


                this.reset();

            }
        );


    /* =========================================
       TOAST
    ========================================= */

    let toastTimer;


    function showToast(message) {

        const toast =
            document.getElementById("toast");


        toast.textContent = message;

        toast.classList.add("show");


        clearTimeout(toastTimer);


        toastTimer =
            setTimeout(() => {

                toast.classList.remove(
                    "show"
                );

            }, 2500);

    }


    /* =========================================
       SCROLL BUTTONS
    ========================================= */

    function scrollToProducts() {

        document
            .getElementById("products")
            .scrollIntoView({
                behavior: "smooth"
            });

    }


    function scrollToDeals() {

        document
            .getElementById("deals")
            .scrollIntoView({
                behavior: "smooth"
            });

    }


    /* =========================================
       COUNTDOWN
    ========================================= */

    const saleEnd =
        new Date().getTime()
        + (2 * 24 * 60 * 60 * 1000);


    function updateTimer() {

        const now =
            new Date().getTime();


        const distance =
            saleEnd - now;


        if (distance <= 0) return;


        const days =
            Math.floor(
                distance /
                (1000 * 60 * 60 * 24)
            );


        const hours =
            Math.floor(
                (distance %
                    (1000 * 60 * 60 * 24))
                /
                (1000 * 60 * 60)
            );


        const minutes =
            Math.floor(
                (distance %
                    (1000 * 60 * 60))
                /
                (1000 * 60)
            );


        const seconds =
            Math.floor(
                (distance %
                    (1000 * 60))
                /
                1000
            );


        document.getElementById(
            "days"
        ).textContent =
            String(days).padStart(2, "0");


        document.getElementById(
            "hours"
        ).textContent =
            String(hours).padStart(2, "0");


        document.getElementById(
            "minutes"
        ).textContent =
            String(minutes).padStart(2, "0");


        document.getElementById(
            "seconds"
        ).textContent =
            String(seconds).padStart(2, "0");

    }


    updateTimer();

    setInterval(
        updateTimer,
        1000
    );


</script>

</body>
</html>
