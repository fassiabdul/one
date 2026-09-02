<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Veyra — Premium Store</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link
        href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Space+Grotesk:wght@500;600;700&display=swap"
        rel="stylesheet">

    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg: #f5f5f3;
            --white: #ffffff;
            --black: #111111;
            --gray: #737373;
            --light-gray: #e7e7e4;
            --green: #b7f34a;
            --purple: #6d5dfc;
            --red: #ff5a5f;
            --radius: 20px;
        }

        body {
            font-family: "DM Sans", sans-serif;
            background: var(--bg);
            color: var(--black);
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        button,
        input {
            font: inherit;
        }

        button {
            cursor: pointer;
        }

        /* ================================
           LAYOUT
        ================================= */

        .app {
            display: grid;
            grid-template-columns: 250px 1fr;
            min-height: 100vh;
        }

        /* ================================
           SIDEBAR
        ================================= */

        .sidebar {
            position: fixed;
            width: 250px;
            height: 100vh;

            background: var(--black);
            color: white;

            padding: 30px 20px;

            display: flex;
            flex-direction: column;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 12px;

            font-family: "Space Grotesk";
            font-size: 22px;
            font-weight: 700;

            margin-bottom: 50px;
            padding-left: 10px;
        }

        .brand-icon {
            width: 38px;
            height: 38px;

            display: grid;
            place-items: center;

            background: var(--green);
            color: black;

            border-radius: 12px;
        }

        .menu-title {
            color: #777;
            text-transform: uppercase;

            font-size: 10px;
            font-weight: 700;

            letter-spacing: 1px;

            padding: 0 12px;

            margin-bottom: 10px;
        }

        .menu {
            display: flex;
            flex-direction: column;
            gap: 5px;
        }

        .menu a {
            display: flex;
            align-items: center;
            gap: 13px;

            padding: 13px 12px;

            border-radius: 12px;

            color: #999;

            font-size: 14px;
            font-weight: 600;

            transition: .2s;
        }

        .menu a i {
            width: 20px;
            text-align: center;
        }

        .menu a:hover,
        .menu a.active {
            color: white;
            background: #242424;
        }

        .menu a.active i {
            color: var(--green);
        }

        .sidebar-bottom {
            margin-top: auto;
        }

        .user {
            display: flex;
            align-items: center;
            gap: 10px;

            padding: 12px;

            border-top: 1px solid #292929;
        }

        .user img {
            width: 38px;
            height: 38px;

            border-radius: 50%;

            object-fit: cover;
        }

        .user strong {
            display: block;
            font-size: 13px;
        }

        .user span {
            color: #777;
            font-size: 11px;
        }

        /* ================================
           MAIN
        ================================= */

        .main {
            grid-column: 2;
            padding: 30px 40px;
            max-width: 1600px;
        }

        /* ================================
           TOP BAR
        ================================= */

        .topbar {
            display: flex;
            align-items: center;
            justify-content: space-between;

            margin-bottom: 30px;
        }

        .page-title h1 {
            font-family: "Space Grotesk";
            font-size: 28px;
        }

        .page-title p {
            color: var(--gray);
            font-size: 13px;
            margin-top: 4px;
        }

        .top-actions {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .search {
            width: 260px;

            display: flex;
            align-items: center;
            gap: 10px;

            padding: 11px 15px;

            background: white;

            border: 1px solid var(--light-gray);

            border-radius: 12px;
        }

        .search i {
            color: #999;
        }

        .search input {
            width: 100%;

            border: 0;
            outline: 0;

            background: transparent;

            font-size: 13px;
        }

        .top-button {
            width: 42px;
            height: 42px;

            border: 1px solid var(--light-gray);

            background: white;

            border-radius: 12px;

            display: grid;
            place-items: center;
        }

        .top-button:hover {
            background: var(--black);
            color: white;
        }

        /* ================================
           HERO
        ================================= */

        .hero {
            background: var(--black);

            min-height: 360px;

            border-radius: 25px;

            overflow: hidden;

            display: grid;
            grid-template-columns: 1fr 1fr;

            color: white;

            margin-bottom: 35px;
        }

        .hero-content {
            padding: 50px;

            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .hero-label {
            color: var(--green);

            text-transform: uppercase;

            font-size: 11px;
            font-weight: 700;

            letter-spacing: 1.5px;

            margin-bottom: 15px;
        }

        .hero h2 {
            font-family: "Space Grotesk";

            font-size: clamp(38px, 4vw, 60px);

            line-height: 1;

            letter-spacing: -2px;

            margin-bottom: 20px;
        }

        .hero p {
            color: #999;

            max-width: 460px;

            font-size: 14px;

            margin-bottom: 28px;
        }

        .hero-button {
            width: fit-content;

            padding: 13px 20px;

            border: 0;

            border-radius: 12px;

            background: var(--green);

            color: black;

            font-weight: 700;

            transition: .2s;
        }

        .hero-button:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 30px rgba(183,243,74,.2);
        }

        .hero-image {
            position: relative;

            overflow: hidden;
        }

        .hero-image img {
            width: 100%;
            height: 100%;

            object-fit: cover;

            opacity: .85;

            transition: .5s;
        }

        .hero:hover .hero-image img {
            transform: scale(1.05);
        }

        /* ================================
           STATS
        ================================= */

        .stats {
            display: grid;
            grid-template-columns: repeat(4, 1fr);

            gap: 15px;

            margin-bottom: 35px;
        }

        .stat {
            background: white;

            border: 1px solid var(--light-gray);

            padding: 20px;

            border-radius: 16px;
        }

        .stat-top {
            display: flex;
            justify-content: space-between;

            color: var(--gray);

            font-size: 12px;

            margin-bottom: 12px;
        }

        .stat-icon {
            width: 32px;
            height: 32px;

            border-radius: 9px;

            display: grid;
            place-items: center;

            background: #f2f2f0;
        }

        .stat h3 {
            font-family: "Space Grotesk";

            font-size: 26px;

            margin-bottom: 3px;
        }

        .positive {
            color: #16a34a;
            font-size: 11px;
            font-weight: 700;
        }

        /* ================================
           SECTION HEADER
        ================================= */

        .section-header {
            display: flex;

            align-items: center;

            justify-content: space-between;

            margin-bottom: 18px;
        }

        .section-header h2 {
            font-family: "Space Grotesk";

            font-size: 21px;
        }

        .section-header a {
            color: var(--gray);

            font-size: 12px;
            font-weight: 700;
        }

        .section-header a:hover {
            color: var(--black);
        }

        /* ================================
           PRODUCTS
        ================================= */

        .products {
            display: grid;

            grid-template-columns:
                repeat(4, 1fr);

            gap: 18px;
        }

        .product {
            background: white;

            border: 1px solid var(--light-gray);

            border-radius: 18px;

            overflow: hidden;

            transition: .25s;
        }

        .product:hover {
            transform: translateY(-5px);

            box-shadow:
                0 15px 40px rgba(0,0,0,.08);
        }

        .product-image {
            height: 210px;

            background: #f0f0ed;

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
            transform: scale(1.06);
        }

        .tag {
            position: absolute;

            top: 12px;
            left: 12px;

            padding: 6px 9px;

            background: var(--black);

            color: white;

            border-radius: 7px;

            font-size: 9px;
            font-weight: 700;

            z-index: 2;
        }

        .heart {
            position: absolute;

            top: 12px;
            right: 12px;

            width: 34px;
            height: 34px;

            border: 0;

            border-radius: 50%;

            background: white;

            display: grid;
            place-items: center;

            z-index: 2;
        }

        .heart:hover {
            background: var(--red);
            color: white;
        }

        .product-info {
            padding: 16px;
        }

        .category {
            color: var(--gray);

            text-transform: uppercase;

            font-size: 9px;

            font-weight: 700;

            letter-spacing: .8px;
        }

        .product-name {
            font-weight: 700;

            font-size: 14px;

            margin: 5px 0 10px;
        }

        .product-footer {
            display: flex;

            align-items: center;

            justify-content: space-between;
        }

        .price {
            font-family: "Space Grotesk";

            font-size: 17px;

            font-weight: 700;
        }

        .add {
            width: 35px;
            height: 35px;

            border: 0;

            border-radius: 9px;

            background: var(--black);

            color: white;

            transition: .2s;
        }

        .add:hover {
            background: var(--green);
            color: black;
        }

        /* ================================
           BOTTOM GRID
        ================================= */

        .bottom-grid {
            display: grid;

            grid-template-columns:
                1.5fr 1fr;

            gap: 20px;

            margin-top: 40px;
        }

        /* ================================
           ORDER TABLE
        ================================= */

        .panel {
            background: white;

            border: 1px solid var(--light-gray);

            border-radius: 18px;

            overflow: hidden;
        }

        .panel-header {
            padding: 20px;

            border-bottom: 1px solid var(--light-gray);

            display: flex;

            justify-content: space-between;

            align-items: center;
        }

        .panel-header h2 {
            font-family: "Space Grotesk";

            font-size: 18px;
        }

        table {
            width: 100%;

            border-collapse: collapse;
        }

        th {
            text-align: left;

            color: var(--gray);

            font-size: 10px;

            text-transform: uppercase;

            padding: 14px 20px;

            background: #fafaf9;
        }

        td {
            padding: 15px 20px;

            border-top: 1px solid var(--light-gray);

            font-size: 12px;
        }

        .status {
            display: inline-block;

            padding: 5px 8px;

            border-radius: 6px;

            font-size: 9px;

            font-weight: 700;
        }

        .delivered {
            background: #dcfce7;
            color: #15803d;
        }

        .pending {
            background: #fef3c7;
            color: #b45309;
        }

        /* ================================
           PROMO
        ================================= */

        .promo {
            background: var(--purple);

            color: white;

            padding: 30px;

            border-radius: 18px;

            position: relative;

            overflow: hidden;
        }

        .promo::after {
            content: "";

            position: absolute;

            width: 180px;
            height: 180px;

            border-radius: 50%;

            background: rgba(255,255,255,.08);

            right: -50px;
            bottom: -60px;
        }

        .promo small {
            color: #dcd8ff;

            font-size: 10px;

            text-transform: uppercase;

            letter-spacing: 1px;
        }

        .promo h2 {
            font-family: "Space Grotesk";

            font-size: 30px;

            line-height: 1.1;

            margin: 12px 0;
        }

        .promo p {
            color: #ddd9ff;

            font-size: 12px;

            max-width: 300px;

            margin-bottom: 22px;
        }

        .promo button {
            border: 0;

            background: white;

            color: var(--purple);

            padding: 11px 17px;

            border-radius: 9px;

            font-weight: 700;

            font-size: 12px;
        }

        /* ================================
           MOBILE
        ================================= */

        .mobile-menu {
            display: none;
        }

        @media(max-width:1200px) {

            .products {
                grid-template-columns:
                    repeat(3, 1fr);
            }

            .categories {
                grid-template-columns:
                    repeat(3, 1fr);
            }

        }

        @media(max-width:950px) {

            .app {
                display: block;
            }

            .sidebar {
                display: none;
            }

            .main {
                padding: 25px;
            }

            .hero {
                grid-template-columns: 1fr;
            }

            .hero-image {
                height: 250px;
            }

            .stats {
                grid-template-columns:
                    repeat(2, 1fr);
            }

            .products {
                grid-template-columns:
                    repeat(2, 1fr);
            }

            .bottom-grid {
                grid-template-columns: 1fr;
            }

            .mobile-menu {
                display: block;
            }

        }

        @media(max-width:600px) {

            .main {
                padding: 18px;
            }

            .topbar {
                align-items: flex-start;
            }

            .search {
                display: none;
            }

            .page-title h1 {
                font-size: 22px;
            }

            .hero-content {
                padding: 35px 25px;
            }

            .hero h2 {
                font-size: 42px;
            }

            .hero-image {
                height: 210px;
            }

            .stats {
                grid-template-columns: 1fr 1fr;

                gap: 10px;
            }

            .stat {
                padding: 15px;
            }

            .stat h3 {
                font-size: 21px;
            }

            .products {
                grid-template-columns: 1fr 1fr;

                gap: 10px;
            }

            .product-image {
                height: 160px;
            }

            .product-info {
                padding: 12px;
            }

            .product-name {
                font-size: 12px;
            }

            .price {
                font-size: 15px;
            }

            .bottom-grid {
                margin-top: 25px;
            }

            table {
                min-width: 500px;
            }

            .panel {
                overflow-x: auto;
            }

        }

    </style>
</head>


<body>

<div class="app">

    <!-- =====================================
         SIDEBAR
    ====================================== -->

    <aside class="sidebar">

        <div class="brand">

            <div class="brand-icon">
                <i class="fas fa-cube"></i>
            </div>

            VEYRA

        </div>


        <div class="menu-title">
            Main Menu
        </div>


        <nav class="menu">

            <a
                href="#"
                class="active">

                <i class="fas fa-grid-2"></i>

                Dashboard

            </a>


            <a href="#products">

                <i class="fas fa-bag-shopping"></i>

                Products

            </a>


            <a href="#">

                <i class="fas fa-cart-shopping"></i>

                Orders

            </a>


            <a href="#">

                <i class="fas fa-chart-line"></i>

                Analytics

            </a>


            <a href="#">

                <i class="fas fa-users"></i>

                Customers

            </a>

        </nav>


        <div
            class="menu-title"
            style="margin-top:35px;">

            Management

        </div>


        <nav class="menu">

            <a href="#">

                <i class="fas fa-percent"></i>

                Discounts

            </a>


            <a href="#">

                <i class="fas fa-gear"></i>

                Settings

            </a>


            <a href="#">

                <i class="fas fa-circle-question"></i>

                Help Center

            </a>

        </nav>


        <div class="sidebar-bottom">

            <div class="user">

                <img
                    src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
                    alt="User">

                <div>

                    <strong>
                        Alex Morgan
                    </strong>

                    <span>
                        Store Manager
                    </span>

                </div>

            </div>

        </div>

    </aside>


    <!-- =====================================
         MAIN
    ====================================== -->

    <main class="main">

        <!-- TOP BAR -->

        <div class="topbar">

            <div class="page-title">

                <h1>
                    Good morning, Alex 👋
                </h1>

                <p>
                    Here's what's happening with your store today.
                </p>

            </div>


            <div class="top-actions">

                <div class="search">

                    <i class="fas fa-search"></i>

                    <input
                        type="text"
                        id="search"
                        placeholder="Search products...">

                </div>


                <button class="top-button">

                    <i class="far fa-bell"></i>

                </button>


                <button
                    class="top-button"
                    onclick="toggleTheme()">

                    <i
                        id="themeIcon"
                        class="fas fa-moon">
                    </i>

                </button>

            </div>

        </div>


        <!-- HERO -->

        <section class="hero">

            <div class="hero-content">

                <div class="hero-label">
                    New Collection
                </div>

                <h2>
                    Designed for
                    <br>
                    <span style="color:#b7f34a;">
                        modern living.
                    </span>
                </h2>

                <p>
                    Discover our newest collection of
                    premium technology, fashion and
                    lifestyle products.
                </p>

                <button
                    class="hero-button"
                    onclick="scrollToProducts()">

                    Explore collection

                    <i
                        class="fas fa-arrow-right"
                        style="margin-left:8px;">
                    </i>

                </button>

            </div>


            <div class="hero-image">

                <img
                    src="https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1000&q=85"
                    alt="Store">

            </div>

        </section>


        <!-- STATS -->

        <section class="stats">

            <div class="stat">

                <div class="stat-top">

                    <span>
                        Total Revenue
                    </span>

                    <div class="stat-icon">
                        <i class="fas fa-dollar-sign"></i>
                    </div>

                </div>

                <h3>
                    $48,290
                </h3>

                <span class="positive">
                    ↑ 12.8% this month
                </span>

            </div>


            <div class="stat">

                <div class="stat-top">

                    <span>
                        Orders
                    </span>

                    <div class="stat-icon">
                        <i class="fas fa-box"></i>
                    </div>

                </div>

                <h3>
                    1,284
                </h3>

                <span class="positive">
                    ↑ 8.4% this month
                </span>

            </div>


            <div class="stat">

                <div class="stat-top">

                    <span>
                        Customers
                    </span>

                    <div class="stat-icon">
                        <i class="fas fa-users"></i>
                    </div>

                </div>

                <h3>
                    8,642
                </h3>

                <span class="positive">
                    ↑ 15.2% this month
                </span>

            </div>


            <div class="stat">

                <div class="stat-top">

                    <span>
                        Conversion
                    </span>

                    <div class="stat-icon">
                        <i class="fas fa-chart-pie"></i>
                    </div>

                </div>

                <h3>
                    6.82%
                </h3>

                <span class="positive">
                    ↑ 2.1% this month
                </span>

            </div>

        </section>


        <!-- PRODUCTS -->

        <section id="products">

            <div class="section-header">

                <div>

                    <h2>
                        Popular products
                    </h2>

                </div>

                <a href="#">
                    View all →
                </a>

            </div>


            <div
                class="products"
                id="productsGrid">

            </div>

        </section>


        <!-- BOTTOM -->

        <div class="bottom-grid">

            <!-- ORDERS -->

            <div class="panel">

                <div class="panel-header">

                    <h2>
                        Recent orders
                    </h2>

                    <a
                        href="#"
                        style="
                        font-size:11px;
                        color:#777;
                        ">
                        View all
                    </a>

                </div>


                <table>

                    <thead>

                        <tr>

                            <th>
                                Order
                            </th>

                            <th>
                                Customer
                            </th>

                            <th>
                                Amount
                            </th>

                            <th>
                                Status
                            </th>

                        </tr>

                    </thead>


                    <tbody>

                        <tr>

                            <td>
                                #VX-2849
                            </td>

                            <td>
                                Olivia Smith
                            </td>

                            <td>
                                $249
                            </td>

                            <td>
                                <span
                                    class="status delivered">
                                    Delivered
                                </span>
                            </td>

                        </tr>


                        <tr>

                            <td>
                                #VX-2848
                            </td>

                            <td>
                                James Wilson
                            </td>

                            <td>
                                $1,299
                            </td>

                            <td>
                                <span
                                    class="status pending">
                                    Pending
                                </span>
                            </td>

                        </tr>


                        <tr>

                            <td>
                                #VX-2847
                            </td>

                            <td>
                                Emma Brown
                            </td>

                            <td>
                                $89
                            </td>

                            <td>
                                <span
                                    class="status delivered">
                                    Delivered
                                </span>
                            </td>

                        </tr>


                        <tr>

                            <td>
                                #VX-2846
                            </td>

                            <td>
                                Noah Davis
                            </td>

                            <td>
                                $599
                            </td>

                            <td>
                                <span
                                    class="status delivered">
                                    Delivered
                                </span>
                            </td>

                        </tr>

                    </tbody>

                </table>

            </div>


            <!-- PROMO -->

            <div class="promo">

                <small>
                    Seller spotlight
                </small>

                <h2>
                    Grow your
                    <br>
                    store faster.
                </h2>

                <p>
                    Unlock advanced analytics,
                    marketing tools and premium
                    seller features.
                </p>

                <button>
                    Upgrade now
                    <i
                        class="fas fa-arrow-right"
                        style="margin-left:5px;">
                    </i>
                </button>

            </div>

        </div>

    </main>

</div>


<script>

    /* =====================================
       PRODUCTS
    ====================================== */

    const products = [

        {
            name: "iPhone 15 Pro",
            category: "Technology",
            price: "$999",
            tag: "NEW",
            image:
                "https://images.unsplash.com/photo-1592899677977-9c10ca588bbd?auto=format&fit=crop&w=700&q=85"
        },

        {
            name: "MacBook Air M3",
            category: "Technology",
            price: "$1,299",
            tag: "POPULAR",
            image:
                "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=85"
        },

        {
            name: "Air Max Sneakers",
            category: "Footwear",
            price: "$149",
            tag: "SALE",
            image:
                "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
        },

        {
            name: "Classic Watch",
            category: "Accessories",
            price: "$299",
            tag: "NEW",
            image:
                "https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=700&q=85"
        },

        {
            name: "Sony Headphones",
            category: "Technology",
            price: "$349",
            tag: "HOT",
            image:
                "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
        },

        {
            name: "Leather Backpack",
            category: "Accessories",
            price: "$119",
            tag: "",
            image:
                "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
        },

        {
            name: "Minimal Sunglasses",
            category: "Fashion",
            price: "$89",
            tag: "NEW",
            image:
                "https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&w=700&q=85"
        },

        {
            name: "Gaming Controller",
            category: "Gaming",
            price: "$69",
            tag: "SALE",
            image:
                "https://images.unsplash.com/photo-1606144042614-b2417e99c4e3?auto=format&fit=crop&w=700&q=85"
        }

    ];


    /* =====================================
       RENDER PRODUCTS
    ====================================== */

    const grid =
        document.getElementById(
            "productsGrid"
        );


    function renderProducts(list) {

        grid.innerHTML = "";


        list.forEach((product, index) => {

            const card =
                document.createElement("div");


            card.className = "product";


            card.innerHTML = `

                <div class="product-image">

                    ${
                        product.tag

                        ? `
                        <span class="tag">
                            ${product.tag}
                        </span>
                        `

                        : ""
                    }


                    <button
                        class="heart"
                        onclick="toggleHeart(this)">

                        <i class="far fa-heart"></i>

                    </button>


                    <img
                        src="${product.image}"
                        alt="${product.name}">

                </div>


                <div class="product-info">

                    <div class="category">
                        ${product.category}
                    </div>


                    <div class="product-name">
                        ${product.name}
                    </div>


                    <div class="product-footer">

                        <div class="price">
                            ${product.price}
                        </div>


                        <button
                            class="add"
                            onclick="addProduct('${product.name}')">

                            <i class="fas fa-plus"></i>

                        </button>

                    </div>

                </div>

            `;


            grid.appendChild(card);

        });

    }


    renderProducts(products);


    /* =====================================
       ADD PRODUCT
    ====================================== */

    function addProduct(name) {

        showNotification(
            name + " added to cart ✓"
        );

    }


    /* =====================================
       WISHLIST
    ====================================== */

    function toggleHeart(button) {

        const icon =
            button.querySelector("i");


        icon.classList.toggle("far");

        icon.classList.toggle("fas");


        if (
            icon.classList.contains("fas")
        ) {

            button.style.background =
                "#ff5a5f";

            button.style.color =
                "white";

        } else {

            button.style.background =
                "white";

            button.style.color =
                "black";

        }

    }


    /* =====================================
       SEARCH
    ====================================== */

    document
        .getElementById("search")
        .addEventListener(
            "input",
            function() {

                const value =
                    this.value
                        .toLowerCase()
                        .trim();


                const filtered =
                    products.filter(
                        product =>
                            product.name
                                .toLowerCase()
                                .includes(value)
                            ||
                            product.category
                                .toLowerCase()
                                .includes(value)
                    );


                renderProducts(filtered);

            }
        );


    /* =====================================
       DARK MODE
    ====================================== */

    function toggleTheme() {

        document.body.classList.toggle(
            "dark-mode"
        );

        showNotification(
            "Theme switched"
        );

    }


    /* =====================================
       SCROLL
    ====================================== */

    function scrollToProducts() {

        document
            .getElementById("products")
            .scrollIntoView({
                behavior: "smooth"
            });

    }


    /* =====================================
       NOTIFICATION
    ====================================== */

    function showNotification(message) {

        const notification =
            document.createElement("div");


        notification.textContent =
            message;


        notification.style.cssText = `

            position:fixed;
            bottom:25px;
            left:50%;
            transform:translateX(-50%);
            background:#111;
            color:white;
            padding:13px 20px;
            border-radius:10px;
            z-index:9999;
            font-size:13px;
            font-weight:600;
            box-shadow:0 10px 30px rgba(0,0,0,.2);

        `;


        document.body.appendChild(
            notification
        );


        setTimeout(() => {

            notification.remove();

        }, 2200);

    }

</script>

</body>
</html>
