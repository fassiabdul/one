<%@ page import="java.util.*, javax.servlet.*, javax.servlet.http.*" %>

<%
    List<Map<String, String>> products =
        (List<Map<String, String>>) session.getAttribute("products");

    if (products == null) {
        products = new ArrayList<>();
        session.setAttribute("products", products);
    }

    String name = request.getParameter("name");
    String description = request.getParameter("description");
    String imageUrl = request.getParameter("imageUrl");

    if ("POST".equalsIgnoreCase(request.getMethod())) {

        if (name != null && description != null && imageUrl != null &&
            !name.trim().isEmpty() &&
            !description.trim().isEmpty() &&
            !imageUrl.trim().isEmpty()) {

            Map<String, String> product = new HashMap<>();

            product.put("name", name.trim());
            product.put("description", description.trim());
            product.put("imageUrl", imageUrl.trim());

            products.add(product);

            response.sendRedirect("showcase.jsp");
            return;
        }
    }
%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport"
      content="width=device-width, initial-scale=1.0">

<title>MedixCare | Healthcare Dashboard</title>

<style>

/* =========================================================
   RESET
========================================================= */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

:root {

    --primary: #2563eb;
    --primary-dark: #1d4ed8;

    --cyan: #06b6d4;

    --dark: #0f172a;
    --dark-2: #1e293b;

    --text: #172033;
    --muted: #64748b;

    --border: #e2e8f0;

    --background: #f8fafc;

    --white: #ffffff;

    --green: #10b981;

}

body {

    font-family:
        Inter,
        -apple-system,
        BlinkMacSystemFont,
        "Segoe UI",
        sans-serif;

    background:
        linear-gradient(
            135deg,
            #f8fafc,
            #eef4ff
        );

    color: var(--text);

    min-height: 100vh;

}

/* =========================================================
   LAYOUT
========================================================= */

.app {

    display: flex;

    min-height: 100vh;

}

/* =========================================================
   SIDEBAR
========================================================= */

.sidebar {

    width: 250px;

    background:
        linear-gradient(
            180deg,
            #0f172a,
            #172554
        );

    color: white;

    padding: 28px 18px;

    position: fixed;

    top: 0;
    bottom: 0;
    left: 0;

    z-index: 100;

}

/* LOGO */

.logo {

    display: flex;

    align-items: center;

    gap: 12px;

    padding: 5px 8px;

    margin-bottom: 42px;

}

.logo-icon {

    width: 43px;
    height: 43px;

    background:
        linear-gradient(
            135deg,
            #38bdf8,
            #2563eb
        );

    border-radius: 13px;

    display: flex;

    align-items: center;
    justify-content: center;

    font-size: 25px;

    font-weight: 800;

    box-shadow:
        0 8px 25px
        rgba(37,99,235,.35);

}

.logo-text h2 {

    font-size: 19px;

    letter-spacing: -.4px;

}

.logo-text span {

    display: block;

    font-size: 9px;

    color: #94a3b8;

    margin-top: 2px;

    letter-spacing: 1px;

}

/* NAVIGATION */

.nav-label {

    color: #64748b;

    font-size: 10px;

    text-transform: uppercase;

    letter-spacing: 1.2px;

    margin:

        0 12px
        10px;

}

.nav {

    list-style: none;

}

.nav li {

    margin-bottom: 6px;

}

.nav a {

    display: flex;

    align-items: center;

    gap: 13px;

    padding: 12px 14px;

    border-radius: 10px;

    color: #94a3b8;

    text-decoration: none;

    font-size: 13px;

    transition: .25s;

}

.nav a:hover {

    background:
        rgba(255,255,255,.07);

    color: white;

}

.nav a.active {

    background:
        linear-gradient(
            90deg,
            #2563eb,
            #3b82f6
        );

    color: white;

    box-shadow:
        0 8px 20px
        rgba(37,99,235,.25);

}

.nav-icon {

    width: 20px;

    text-align: center;

    font-size: 16px;

}

/* SIDEBAR CARD */

.sidebar-card {

    position: absolute;

    bottom: 25px;

    left: 18px;

    right: 18px;

    padding: 17px;

    border-radius: 15px;

    background:
        rgba(255,255,255,.07);

    border:
        1px solid
        rgba(255,255,255,.08);

}

.sidebar-card .online {

    display: flex;

    align-items: center;

    gap: 7px;

    color: #86efac;

    font-size: 10px;

    font-weight: 700;

    margin-bottom: 8px;

}

.online-dot {

    width: 7px;
    height: 7px;

    background: #22c55e;

    border-radius: 50%;

}

.sidebar-card p {

    font-size: 10px;

    line-height: 1.6;

    color: #94a3b8;

}

/* =========================================================
   MAIN
========================================================= */

.main {

    margin-left: 250px;

    width:
        calc(100% - 250px);

}

/* =========================================================
   HEADER
========================================================= */

.header {

    height: 76px;

    background:
        rgba(255,255,255,.85);

    backdrop-filter:
        blur(15px);

    border-bottom:
        1px solid
        var(--border);

    display: flex;

    align-items: center;

    justify-content: space-between;

    padding:
        0 35px;

    position: sticky;

    top: 0;

    z-index: 50;

}

.header-left h1 {

    font-size: 19px;

    color: #0f172a;

}

.header-left p {

    color: #94a3b8;

    font-size: 11px;

    margin-top: 3px;

}

.header-right {

    display: flex;

    align-items: center;

    gap: 14px;

}

/* SEARCH HEADER */

.header-search {

    position: relative;

}

.header-search input {

    width: 220px;

    padding:
        9px
        12px
        9px
        35px;

    border:
        1px solid
        var(--border);

    border-radius: 9px;

    outline: none;

    font-size: 11px;

    background: #f8fafc;

}

.header-search span {

    position: absolute;

    left: 12px;

    top: 8px;

    color: #94a3b8;

}

/* PROFILE */

.profile {

    display: flex;

    align-items: center;

    gap: 9px;

    padding-left: 10px;

    border-left:
        1px solid
        var(--border);

}

.avatar {

    width: 36px;
    height: 36px;

    border-radius: 10px;

    background:
        linear-gradient(
            135deg,
            #2563eb,
            #06b6d4
        );

    color: white;

    display: flex;

    align-items: center;
    justify-content: center;

    font-size: 12px;

    font-weight: 800;

}

.profile-info strong {

    display: block;

    font-size: 11px;

}

.profile-info span {

    color: #94a3b8;

    font-size: 9px;

}

/* =========================================================
   CONTENT
========================================================= */

.content {

    padding:
        30px 35px 50px;

}

/* =========================================================
   HERO
========================================================= */

.hero {

    min-height: 210px;

    border-radius: 22px;

    padding:
        32px 35px;

    color: white;

    position: relative;

    overflow: hidden;

    background:
        linear-gradient(
            120deg,
            #1e3a8a,
            #2563eb 50%,
            #0891b2
        );

    display: flex;

    align-items: center;

    justify-content: space-between;

    box-shadow:
        0 18px 45px
        rgba(37,99,235,.20);

}

.hero::before {

    content: "";

    position: absolute;

    width: 330px;
    height: 330px;

    border-radius: 50%;

    border:
        1px solid
        rgba(255,255,255,.13);

    right: 100px;

    top: -190px;

}

.hero::after {

    content: "";

    position: absolute;

    width: 250px;
    height: 250px;

    border-radius: 50%;

    background:
        rgba(255,255,255,.07);

    right: -80px;

    bottom: -130px;

}

.hero-content {

    position: relative;

    z-index: 2;

}

.hero-badge {

    display: inline-block;

    background:
        rgba(255,255,255,.13);

    border:
        1px solid
        rgba(255,255,255,.18);

    padding:
        6px 10px;

    border-radius: 20px;

    font-size: 9px;

    font-weight: 700;

    margin-bottom: 13px;

}

.hero h2 {

    font-size: 27px;

    margin-bottom: 8px;

    letter-spacing: -.5px;

}

.hero p {

    font-size: 12px;

    color: #dbeafe;

    max-width: 480px;

    line-height: 1.6;

}

.hero-button {

    position: relative;

    z-index: 3;

    background: white;

    color: #1d4ed8;

    border: none;

    border-radius: 11px;

    padding:
        13px 18px;

    font-weight: 800;

    font-size: 11px;

    cursor: pointer;

    box-shadow:
        0 10px 25px
        rgba(0,0,0,.12);

    transition: .25s;

}

.hero-button:hover {

    transform:
        translateY(-3px);

}

/* =========================================================
   STATS
========================================================= */

.stats {

    display: grid;

    grid-template-columns:
        repeat(4, 1fr);

    gap: 17px;

    margin-top: 22px;

}

.stat {

    background: white;

    border:
        1px solid
        var(--border);

    border-radius: 16px;

    padding: 20px;

    position: relative;

    overflow: hidden;

}

.stat-top {

    display: flex;

    justify-content: space-between;

    align-items: center;

}

.stat-icon {

    width: 40px;
    height: 40px;

    border-radius: 11px;

    display: flex;

    align-items: center;
    justify-content: center;

    font-size: 18px;

}

.icon-blue {

    background: #eff6ff;
    color: #2563eb;

}

.icon-green {

    background: #ecfdf5;
    color: #10b981;

}

.icon-orange {

    background: #fff7ed;
    color: #f97316;

}

.icon-purple {

    background: #f5f3ff;
    color: #7c3aed;

}

.stat-label {

    color: #94a3b8;

    font-size: 10px;

    margin-top: 15px;

}

.stat-value {

    color: #0f172a;

    font-size: 25px;

    font-weight: 800;

    margin-top: 4px;

}

.stat-change {

    color: #10b981;

    font-size: 9px;

    margin-top: 5px;

}

/* =========================================================
   SECTION HEADER
========================================================= */

.section-head {

    display: flex;

    align-items: center;

    justify-content: space-between;

    margin:
        34px 0 17px;

}

.section-head h2 {

    font-size: 18px;

}

.section-head p {

    color: #94a3b8;

    font-size: 10px;

    margin-top: 4px;

}

.add-button {

    border: none;

    background:
        #eff6ff;

    color:
        #2563eb;

    padding:
        9px 13px;

    border-radius: 8px;

    font-size: 10px;

    font-weight: 700;

    cursor: pointer;

}

/* =========================================================
   PRODUCT GRID
========================================================= */

.product-grid {

    display: grid;

    grid-template-columns:
        repeat(4, 1fr);

    gap: 18px;

}

/* CARD */

.product-card {

    background: white;

    border:
        1px solid
        var(--border);

    border-radius: 17px;

    overflow: hidden;

    transition:
        .3s;

}

.product-card:hover {

    transform:
        translateY(-6px);

    box-shadow:
        0 18px 35px
        rgba(15,23,42,.10);

}

/* IMAGE */

.product-image {

    height: 180px;

    background:
        #eff6ff;

    position: relative;

    overflow: hidden;

}

.product-image img {

    width: 100%;

    height: 100%;

    object-fit: cover;

    transition:
        .4s;

}

.product-card:hover
.product-image img {

    transform:
        scale(1.08);

}

/* STATUS */

.status {

    position: absolute;

    top: 11px;

    left: 11px;

    background:
        rgba(255,255,255,.94);

    color:
        #059669;

    border-radius: 20px;

    padding:
        5px 8px;

    font-size: 8px;

    font-weight: 800;

    box-shadow:
        0 4px 10px
        rgba(0,0,0,.08);

}

/* CARD MENU */

.card-menu {

    position: absolute;

    right: 11px;

    top: 11px;

}

.card-menu button {

    width: 30px;
    height: 30px;

    border: none;

    border-radius: 8px;

    background:
        rgba(255,255,255,.94);

    cursor: pointer;

    font-size: 15px;

}

/* DETAILS */

.product-info {

    padding: 16px;

}

.product-name {

    font-size: 14px;

    font-weight: 800;

    color: #0f172a;

    white-space: nowrap;

    overflow: hidden;

    text-overflow: ellipsis;

}

.product-description {

    font-size: 10px;

    color: #64748b;

    line-height: 1.6;

    margin-top: 7px;

    height: 34px;

    overflow: hidden;

}

.product-footer {

    margin-top: 14px;

    padding-top: 12px;

    border-top:
        1px solid
        #f1f5f9;

    display: flex;

    align-items: center;

    justify-content: space-between;

}

.verified {

    font-size: 9px;

    color: #059669;

    font-weight: 700;

}

.view-btn {

    border: none;

    background:
        #2563eb;

    color: white;

    padding:
        7px 10px;

    border-radius: 7px;

    font-size: 9px;

    font-weight: 700;

    cursor: pointer;

}

/* =========================================================
   EMPTY
========================================================= */

.empty {

    background: white;

    border:
        1px solid
        var(--border);

    border-radius: 17px;

    padding: 65px 20px;

    text-align: center;

}

.empty-icon {

    width: 65px;
    height: 65px;

    margin: auto;

    border-radius: 18px;

    background:
        #eff6ff;

    display: flex;

    align-items: center;
    justify-content: center;

    font-size: 30px;

}

.empty h3 {

    margin-top: 15px;

    font-size: 17px;

}

.empty p {

    color: #94a3b8;

    font-size: 10px;

    margin-top: 6px;

}

/* =========================================================
   MODAL
========================================================= */

.modal {

    display: none;

    position: fixed;

    inset: 0;

    background:
        rgba(15,23,42,.60);

    backdrop-filter:
        blur(8px);

    align-items: center;

    justify-content: center;

    z-index: 999;

    padding: 20px;

}

.modal-box {

    width: 100%;

    max-width: 520px;

    background: white;

    border-radius: 20px;

    padding: 27px;

    box-shadow:
        0 30px 80px
        rgba(0,0,0,.25);

    animation:
        modalIn .25s ease;

}

@keyframes modalIn {

    from {

        opacity: 0;

        transform:
            translateY(20px)
            scale(.98);

    }

    to {

        opacity: 1;

        transform:
            translateY(0)
            scale(1);

    }

}

.modal-header {

    display: flex;

    justify-content: space-between;

    align-items: center;

    margin-bottom: 22px;

}

.modal-header h2 {

    font-size: 19px;

}

.close {

    width: 34px;
    height: 34px;

    border: none;

    border-radius: 9px;

    background:
        #f1f5f9;

    font-size: 18px;

    cursor: pointer;

}

.form-group {

    margin-bottom: 15px;

}

.form-group label {

    display: block;

    font-size: 10px;

    font-weight: 700;

    color: #334155;

    margin-bottom: 6px;

}

.form-group input,
.form-group textarea {

    width: 100%;

    border:
        1px solid
        #cbd5e1;

    border-radius: 9px;

    padding:
        11px 12px;

    font-family: inherit;

    font-size: 11px;

    outline: none;

}

.form-group input:focus,
.form-group textarea:focus {

    border-color:
        #2563eb;

    box-shadow:
        0 0 0 3px
        rgba(37,99,235,.08);

}

.form-group textarea {

    min-height: 90px;

    resize: vertical;

}

.submit {

    width: 100%;

    border: none;

    padding: 13px;

    border-radius: 10px;

    background:
        linear-gradient(
            135deg,
            #2563eb,
            #06b6d4
        );

    color: white;

    font-size: 11px;

    font-weight: 800;

    cursor: pointer;

    margin-top: 5px;

}

/* =========================================================
   FOOTER
========================================================= */

footer {

    margin-top: 45px;

    padding-top: 20px;

    border-top:
        1px solid
        var(--border);

    text-align: center;

    color: #94a3b8;

    font-size: 9px;

}

/* =========================================================
   RESPONSIVE
========================================================= */

@media(max-width:1200px) {

    .product-grid {

        grid-template-columns:
            repeat(3, 1fr);

    }

}

@media(max-width:950px) {

    .sidebar {

        width: 72px;

    }

    .logo-text,
    .nav-label,
    .nav a span,
    .sidebar-card {

        display: none;

    }

    .logo {

        justify-content: center;

    }

    .nav a {

        justify-content: center;

    }

    .main {

        margin-left: 72px;

        width:
            calc(100% - 72px);

    }

    .stats {

        grid-template-columns:
            repeat(2, 1fr);

    }

}

@media(max-width:700px) {

    .header {

        padding:
            0 18px;

    }

    .header-search {

        display: none;

    }

    .content {

        padding:
            20px 15px;

    }

    .hero {

        display: block;

        padding: 25px;

    }

    .hero h2 {

        font-size: 22px;

    }

    .hero-button {

        margin-top: 20px;

    }

    .stats {

        grid-template-columns: 1fr;

    }

    .product-grid {

        grid-template-columns: 1fr;

    }

    .section-head {

        display: block;

    }

    .add-button {

        margin-top: 12px;

    }

}

</style>

</head>

<body>

<div class="app">

<!-- =====================================================
     SIDEBAR
===================================================== -->

<aside class="sidebar">

    <div class="logo">

        <div class="logo-icon">
            +
        </div>

        <div class="logo-text">

            <h2>MedixCare</h2>

            <span>
                HEALTHCARE PLATFORM
            </span>

        </div>

    </div>


    <div class="nav-label">
        Workspace
    </div>

    <ul class="nav">

        <li>
            <a href="#" class="active">

                <div class="nav-icon">
                    ▦
                </div>

                <span>
                    Dashboard
                </span>

            </a>
        </li>

        <li>
            <a href="#products">

                <div class="nav-icon">
                    ◫
                </div>

                <span>
                    Products
                </span>

            </a>
        </li>

        <li>
            <a href="#products"
               onclick="openModal()">

                <div class="nav-icon">
                    ＋
                </div>

                <span>
                    Add Product
                </span>

            </a>
        </li>

    </ul>


    <div class="nav-label"
         style="margin-top:28px;">

        System

    </div>

    <ul class="nav">

        <li>
            <a href="#">

                <div class="nav-icon">
                    ◴
                </div>

                <span>
                    Activity
                </span>

            </a>
        </li>

        <li>
            <a href="#">

                <div class="nav-icon">
                    ⚙
                </div>

                <span>
                    Settings
                </span>

            </a>
        </li>

    </ul>


    <div class="sidebar-card">

        <div class="online">

            <span class="online-dot"></span>

            SYSTEM ONLINE

        </div>

        <p>
            Your healthcare product
            management system is running normally.
        </p>

    </div>

</aside>


<!-- =====================================================
     MAIN
===================================================== -->

<main class="main">


<!-- HEADER -->

<header class="header">

    <div class="header-left">

        <h1>
            Healthcare Dashboard
        </h1>

        <p>
            Product management & inventory overview
        </p>

    </div>


    <div class="header-right">

        <div class="header-search">

            <span>⌕</span>

            <input
                type="text"
                placeholder="Search..."
                onkeyup="headerSearch(this)"
            >

        </div>


        <div class="profile">

            <div class="avatar">
                AD
            </div>

            <div class="profile-info">

                <strong>
                    Admin
                </strong>

                <span>
                    Healthcare Manager
                </span>

            </div>

        </div>

    </div>

</header>


<!-- CONTENT -->

<div class="content">


<!-- =====================================================
     HERO
===================================================== -->

<section class="hero">

    <div class="hero-content">

        <div class="hero-badge">
            MEDICAL INVENTORY SYSTEM
        </div>

        <h2>
            Manage healthcare products
            smarter.
        </h2>

        <p>
            Keep your medical product catalog
            organized, accessible and easy to manage
            from one centralized dashboard.
        </p>

    </div>


    <button
        class="hero-button"
        onclick="openModal()">

        + Add New Product

    </button>

</section>


<!-- =====================================================
     STATISTICS
===================================================== -->

<section class="stats">


    <div class="stat">

        <div class="stat-top">

            <div>
                <div class="stat-label">
                    TOTAL PRODUCTS
                </div>

                <div class="stat-value">
                    <%= products.size() %>
                </div>
            </div>

            <div class="stat-icon icon-blue">
                ◫
            </div>

        </div>

        <div class="stat-change">
            ↑ Catalog inventory
        </div>

    </div>


    <div class="stat">

        <div class="stat-top">

            <div>

                <div class="stat-label">
                    ACTIVE PRODUCTS
                </div>

                <div class="stat-value">
                    <%= products.size() %>
                </div>

            </div>

            <div class="stat-icon icon-green">
                ✓
            </div>

        </div>

        <div class="stat-change">
            ● All products active
        </div>

    </div>


    <div class="stat">

        <div class="stat-top">

            <div>

                <div class="stat-label">
                    CATEGORIES
                </div>

                <div class="stat-value">
                    04
                </div>

            </div>

            <div class="stat-icon icon-orange">
                ◈
            </div>

        </div>

        <div class="stat-change">
            Medical product groups
        </div>

    </div>


    <div class="stat">

        <div class="stat-top">

            <div>

                <div class="stat-label">
                    SYSTEM STATUS
                </div>

                <div
                    class="stat-value"
                    style="
                    color:#10b981;
                    font-size:19px;">
                    Online
                </div>

            </div>

            <div class="stat-icon icon-purple">
                ●
            </div>

        </div>

        <div class="stat-change">
            System operational
        </div>

    </div>

</section>


<!-- =====================================================
     PRODUCTS
===================================================== -->

<section id="products">

    <div class="section-head">

        <div>

            <h2>
                Medical Products
            </h2>

            <p>
                Your healthcare product catalog
            </p>

        </div>


        <button
            class="add-button"
            onclick="openModal()">

            + Add Product

        </button>

    </div>


<% if (products.isEmpty()) { %>

    <div class="empty">

        <div class="empty-icon">
            🏥
        </div>

        <h3>
            Your catalog is empty
        </h3>

        <p>
            Add your first medical product
            to get started.
        </p>

        <button
            class="hero-button"
            style="margin-top:18px;"
            onclick="openModal()">

            + Add First Product

        </button>

    </div>

<% } else { %>


    <div
        class="product-grid"
        id="productGrid">


    <% for (Map<String, String> product : products) { %>

        <div
            class="product-card"
            data-name="<%= product.get("name") %>">


            <div class="product-image">

                <img
                    src="<%= product.get("imageUrl") %>"
                    alt="<%= product.get("name") %>"
                >


                <div class="status">
                    ● ACTIVE
                </div>


                <div class="card-menu">

                    <button>
                        ⋮
                    </button>

                </div>

            </div>


            <div class="product-info">

                <div class="product-name">

                    <%= product.get("name") %>

                </div>


                <div class="product-description">

                    <%= product.get("description") %>

                </div>


                <div class="product-footer">

                    <span class="verified">
                        ✓ VERIFIED
                    </span>

                    <button class="view-btn">
                        View
                    </button>

                </div>

            </div>

        </div>

    <% } %>

    </div>

<% } %>


</section>


<footer>

    © 2026 MedixCare Healthcare Platform
    · Secure Product Management

</footer>


</div>

</main>

</div>


<!-- =====================================================
     MODAL
===================================================== -->

<div
    class="modal"
    id="productModal">


    <div class="modal-box">


        <div class="modal-header">

            <h2>
                Add Medical Product
            </h2>

            <button
                class="close"
                onclick="closeModal()">

                ×

            </button>

        </div>


        <form
            method="post"
            action="showcase.jsp">


            <div class="form-group">

                <label>
                    PRODUCT NAME
                </label>

                <input
                    type="text"
                    name="name"
                    placeholder="e.g. Digital Blood Pressure Monitor"
                    required
                >

            </div>


            <div class="form-group">

                <label>
                    PRODUCT IMAGE URL
                </label>

                <input
                    type="url"
                    name="imageUrl"
                    placeholder="https://example.com/product.jpg"
                    required
                >

            </div>


            <div class="form-group">

                <label>
                    DESCRIPTION
                </label>

                <textarea
                    name="description"
                    placeholder="Enter product description..."
                    required
                ></textarea>

            </div>


            <button
                type="submit"
                class="submit">

                Add Product to Catalog

            </button>

        </form>

    </div>

</div>


<script>

/* =========================================================
   MODAL
========================================================= */

function openModal() {

    document.getElementById("productModal")
        .style.display = "flex";

}

function closeModal() {

    document.getElementById("productModal")
        .style.display = "none";

}


/* Close outside modal */

window.addEventListener(
    "click",
    function(event) {

        const modal =
            document.getElementById(
                "productModal"
            );

        if (event.target === modal) {

            closeModal();

        }

    }
);


/* =========================================================
   PRODUCT SEARCH
========================================================= */

function searchProducts() {

    const input =
        document.getElementById(
            "searchInput"
        );

    const value =
        input.value
            .toLowerCase()
            .trim();

    const cards =
        document.querySelectorAll(
            ".product-card"
        );

    cards.forEach(function(card) {

        const name =
            card
                .getAttribute("data-name")
                .toLowerCase();

        card.style.display =
            name.includes(value)
                ? ""
                : "none";

    });

}


/* =========================================================
   HEADER SEARCH
========================================================= */

function headerSearch(input) {

    const value =
        input.value
            .toLowerCase()
            .trim();

    const cards =
        document.querySelectorAll(
            ".product-card"
        );

    cards.forEach(function(card) {

        const name =
            card
                .getAttribute("data-name")
                .toLowerCase();

        card.style.display =
            name.includes(value)
                ? ""
                : "none";

    });

}


/* =========================================================
   ESC KEY
========================================================= */

document.addEventListener(
    "keydown",
    function(event) {

        if (event.key === "Escape") {

            closeModal();

        }

    }
);

</script>

</body>

</html>
