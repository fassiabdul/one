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
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>MedixCare | Product Dashboard</title>

<style>

/* =====================================================
   RESET
===================================================== */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Inter, "Segoe UI", Arial, sans-serif;
    background: #f7f9fc;
    color: #172033;
}

/* =====================================================
   LAYOUT
===================================================== */

.dashboard {
    display: flex;
    min-height: 100vh;
}

/* =====================================================
   SIDEBAR
===================================================== */

.sidebar {
    width: 245px;
    background: #101828;
    color: white;
    padding: 25px 18px;
    position: fixed;
    top: 0;
    left: 0;
    bottom: 0;
    z-index: 100;
}

.brand {
    display: flex;
    align-items: center;
    gap: 12px;
    padding: 5px 10px 35px;
}

.brand-icon {
    width: 42px;
    height: 42px;

    background: linear-gradient(
        135deg,
        #2563eb,
        #06b6d4
    );

    border-radius: 12px;

    display: flex;
    align-items: center;
    justify-content: center;

    font-size: 24px;
    font-weight: bold;
}

.brand-name {
    font-size: 20px;
    font-weight: 700;
}

.brand-subtitle {
    font-size: 10px;
    color: #98a2b3;
    margin-top: 2px;
}

.menu-title {
    color: #667085;
    font-size: 10px;
    text-transform: uppercase;
    letter-spacing: 1px;
    padding: 0 12px;
    margin-bottom: 10px;
}

.menu {
    list-style: none;
}

.menu li {
    margin-bottom: 5px;
}

.menu a {
    display: flex;
    align-items: center;
    gap: 13px;

    text-decoration: none;

    color: #98a2b3;

    padding: 12px 13px;

    border-radius: 9px;

    font-size: 14px;

    transition: 0.25s;
}

.menu a:hover,
.menu a.active {
    color: white;

    background: linear-gradient(
        90deg,
        #1d4ed8,
        #2563eb
    );
}

.menu-icon {
    width: 20px;
    text-align: center;
}

/* =====================================================
   SIDEBAR BOTTOM
===================================================== */

.sidebar-bottom {
    position: absolute;
    bottom: 25px;
    left: 18px;
    right: 18px;

    background: #172033;

    padding: 15px;

    border-radius: 12px;
}

.sidebar-bottom p {
    color: #98a2b3;
    font-size: 11px;
    line-height: 1.5;
}

.sidebar-bottom strong {
    color: white;
}

/* =====================================================
   MAIN
===================================================== */

.main {
    margin-left: 245px;
    width: calc(100% - 245px);
}

/* =====================================================
   TOPBAR
===================================================== */

.topbar {
    height: 75px;

    background: white;

    border-bottom: 1px solid #eaecf0;

    display: flex;
    align-items: center;
    justify-content: space-between;

    padding: 0 35px;
}

.page-title h1 {
    font-size: 20px;
    color: #101828;
}

.page-title p {
    font-size: 12px;
    color: #98a2b3;
    margin-top: 3px;
}

.user-area {
    display: flex;
    align-items: center;
    gap: 12px;
}

.notification {
    width: 38px;
    height: 38px;

    border: 1px solid #eaecf0;

    border-radius: 9px;

    background: white;

    cursor: pointer;

    font-size: 17px;
}

.avatar {
    width: 38px;
    height: 38px;

    border-radius: 50%;

    background: linear-gradient(
        135deg,
        #2563eb,
        #06b6d4
    );

    color: white;

    display: flex;
    align-items: center;
    justify-content: center;

    font-size: 13px;
    font-weight: 700;
}

/* =====================================================
   CONTENT
===================================================== */

.content {
    padding: 32px 35px;
    max-width: 1500px;
}

/* =====================================================
   WELCOME
===================================================== */

.welcome {
    background: linear-gradient(
        120deg,
        #1d4ed8,
        #2563eb 55%,
        #06b6d4
    );

    border-radius: 18px;

    padding: 28px 32px;

    color: white;

    display: flex;
    justify-content: space-between;
    align-items: center;

    overflow: hidden;

    position: relative;
}

.welcome::after {
    content: "";

    width: 260px;
    height: 260px;

    border-radius: 50%;

    background: rgba(255,255,255,0.08);

    position: absolute;

    right: 80px;
    top: -150px;
}

.welcome h2 {
    font-size: 25px;
    margin-bottom: 7px;
}

.welcome p {
    font-size: 13px;
    color: #dbeafe;
}

.add-main-btn {
    background: white;
    color: #1d4ed8;

    border: none;

    padding: 12px 20px;

    border-radius: 9px;

    font-weight: 700;

    cursor: pointer;

    position: relative;
    z-index: 2;

    transition: 0.25s;
}

.add-main-btn:hover {
    transform: translateY(-2px);

    box-shadow:
        0 8px 20px rgba(0,0,0,0.15);
}

/* =====================================================
   STATISTICS
===================================================== */

.stats {
    display: grid;

    grid-template-columns:
        repeat(4, 1fr);

    gap: 18px;

    margin: 25px 0;
}

.stat-card {
    background: white;

    border: 1px solid #eaecf0;

    border-radius: 14px;

    padding: 20px;

    display: flex;
    justify-content: space-between;
    align-items: center;
}

.stat-info p {
    font-size: 12px;
    color: #667085;
    margin-bottom: 7px;
}

.stat-info h3 {
    font-size: 25px;
    color: #101828;
}

.stat-icon {
    width: 45px;
    height: 45px;

    border-radius: 12px;

    display: flex;
    align-items: center;
    justify-content: center;

    font-size: 20px;
}

.blue {
    background: #eff6ff;
    color: #2563eb;
}

.green {
    background: #ecfdf3;
    color: #12b76a;
}

.orange {
    background: #fff7ed;
    color: #f97316;
}

.purple {
    background: #f5f3ff;
    color: #7c3aed;
}

/* =====================================================
   PRODUCTS HEADER
===================================================== */

.products-top {
    display: flex;
    justify-content: space-between;
    align-items: center;

    margin: 35px 0 18px;
}

.products-title h2 {
    font-size: 19px;
    color: #101828;
}

.products-title p {
    font-size: 12px;
    color: #98a2b3;
    margin-top: 4px;
}

.search {
    position: relative;
}

.search input {
    width: 230px;

    padding: 10px 14px 10px 38px;

    border: 1px solid #d0d5dd;

    border-radius: 9px;

    outline: none;

    font-size: 13px;
}

.search span {
    position: absolute;

    left: 13px;
    top: 9px;

    color: #98a2b3;
}

/* =====================================================
   PRODUCT GRID
===================================================== */

.product-container {
    display: grid;

    grid-template-columns:
        repeat(4, minmax(0, 1fr));

    gap: 20px;
}

.product-card {
    background: white;

    border: 1px solid #eaecf0;

    border-radius: 15px;

    overflow: hidden;

    transition:
        transform 0.25s,
        box-shadow 0.25s;
}

.product-card:hover {
    transform: translateY(-5px);

    box-shadow:
        0 12px 30px rgba(16,24,40,0.10);
}

/* =====================================================
   PRODUCT IMAGE
===================================================== */

.product-image-area {
    height: 205px;

    position: relative;

    background: #f2f7ff;

    overflow: hidden;
}

.product-image {
    width: 100%;
    height: 100%;

    object-fit: cover;

    transition: 0.4s;
}

.product-card:hover .product-image {
    transform: scale(1.07);
}

.status {
    position: absolute;

    top: 12px;
    left: 12px;

    background: #ecfdf3;

    color: #027a48;

    padding: 5px 9px;

    border-radius: 20px;

    font-size: 10px;

    font-weight: 700;
}

.product-actions {
    position: absolute;

    right: 12px;
    top: 12px;
}

.action-btn {
    width: 32px;
    height: 32px;

    border: none;

    border-radius: 8px;

    background: rgba(255,255,255,0.92);

    cursor: pointer;

    font-size: 15px;
}

/* =====================================================
   PRODUCT DETAILS
===================================================== */

.product-details {
    padding: 17px;
}

.product-title {
    color: #101828;

    font-size: 15px;

    font-weight: 700;

    margin-bottom: 7px;

    white-space: nowrap;

    overflow: hidden;

    text-overflow: ellipsis;
}

.product-description {
    color: #667085;

    font-size: 12px;

    line-height: 1.6;

    height: 39px;

    overflow: hidden;
}

.product-bottom {
    margin-top: 15px;

    padding-top: 13px;

    border-top: 1px solid #f2f4f7;

    display: flex;

    align-items: center;

    justify-content: space-between;
}

.verified {
    color: #12b76a;

    font-size: 11px;

    font-weight: 600;
}

.details-btn {
    border: none;

    background: #eff6ff;

    color: #2563eb;

    padding: 7px 11px;

    border-radius: 7px;

    font-size: 11px;

    font-weight: 600;

    cursor: pointer;
}

/* =====================================================
   EMPTY STATE
===================================================== */

.empty {
    background: white;

    border: 1px solid #eaecf0;

    border-radius: 15px;

    padding: 65px 20px;

    text-align: center;
}

.empty-icon {
    font-size: 50px;

    margin-bottom: 12px;
}

.empty h3 {
    color: #101828;

    margin-bottom: 6px;
}

.empty p {
    color: #98a2b3;

    font-size: 13px;
}

/* =====================================================
   MODAL
===================================================== */

.modal {
    display: none;

    position: fixed;

    inset: 0;

    background: rgba(16,24,40,0.55);

    backdrop-filter: blur(4px);

    align-items: center;

    justify-content: center;

    z-index: 1000;

    padding: 20px;
}

.modal-box {
    background: white;

    width: 100%;

    max-width: 550px;

    border-radius: 18px;

    padding: 27px;

    box-shadow:
        0 25px 60px rgba(0,0,0,0.20);

    animation: modalIn 0.25s ease;
}

@keyframes modalIn {

    from {
        transform: translateY(15px);
        opacity: 0;
    }

    to {
        transform: translateY(0);
        opacity: 1;
    }

}

.modal-header {
    display: flex;

    align-items: center;

    justify-content: space-between;

    margin-bottom: 22px;
}

.modal-header h2 {
    font-size: 20px;
}

.close {
    width: 34px;
    height: 34px;

    border: none;

    background: #f2f4f7;

    border-radius: 8px;

    cursor: pointer;

    font-size: 17px;
}

.form-group {
    margin-bottom: 16px;
}

.form-group label {
    display: block;

    font-size: 12px;

    font-weight: 600;

    color: #344054;

    margin-bottom: 6px;
}

.form-group input,
.form-group textarea {
    width: 100%;

    padding: 12px;

    border: 1px solid #d0d5dd;

    border-radius: 9px;

    outline: none;

    font-family: inherit;

    font-size: 13px;
}

.form-group input:focus,
.form-group textarea:focus {
    border-color: #2563eb;

    box-shadow:
        0 0 0 3px rgba(37,99,235,0.10);
}

.form-group textarea {
    resize: vertical;

    min-height: 90px;
}

.modal-submit {
    width: 100%;

    border: none;

    padding: 13px;

    border-radius: 9px;

    background: linear-gradient(
        135deg,
        #1d4ed8,
        #2563eb
    );

    color: white;

    font-weight: 700;

    cursor: pointer;

    margin-top: 5px;
}

/* =====================================================
   FOOTER
===================================================== */

footer {
    margin-top: 45px;

    padding: 20px;

    border-top: 1px solid #eaecf0;

    color: #98a2b3;

    font-size: 11px;

    text-align: center;
}

/* =====================================================
   RESPONSIVE
===================================================== */

@media (max-width: 1200px) {

    .product-container {
        grid-template-columns:
            repeat(3, 1fr);
    }

}

@media (max-width: 900px) {

    .sidebar {
        width: 70px;
        padding: 20px 10px;
    }

    .brand-name,
    .brand-subtitle,
    .menu-title,
    .menu a span,
    .sidebar-bottom {
        display: none;
    }

    .brand {
        justify-content: center;
        padding-bottom: 30px;
    }

    .menu a {
        justify-content: center;
    }

    .main {
        margin-left: 70px;

        width: calc(100% - 70px);
    }

    .stats {
        grid-template-columns:
            repeat(2, 1fr);
    }

    .product-container {
        grid-template-columns:
            repeat(2, 1fr);
    }

}

@media (max-width: 600px) {

    .topbar {
        padding: 0 18px;
    }

    .content {
        padding: 20px 15px;
    }

    .welcome {
        padding: 23px;

        display: block;
    }

    .welcome h2 {
        font-size: 21px;
    }

    .add-main-btn {
        margin-top: 18px;
    }

    .stats {
        grid-template-columns: 1fr;
    }

    .products-top {
        display: block;
    }

    .search {
        margin-top: 14px;
    }

    .search input {
        width: 100%;
    }

    .product-container {
        grid-template-columns: 1fr;
    }

}

</style>

</head>

<body>

<div class="dashboard">

<!-- =====================================================
     SIDEBAR
===================================================== -->

<aside class="sidebar">

    <div class="brand">

        <div class="brand-icon">
            +
        </div>

        <div>
            <div class="brand-name">
                MedixCare
            </div>

            <div class="brand-subtitle">
                HEALTHCARE SYSTEM
            </div>
        </div>

    </div>


    <div class="menu-title">
        Main Menu
    </div>

    <ul class="menu">

        <li>
            <a href="#" class="active">
                <div class="menu-icon">⌂</div>
                <span>Dashboard</span>
            </a>
        </li>

        <li>
            <a href="#products">
                <div class="menu-icon">▣</div>
                <span>Products</span>
            </a>
        </li>

        <li>
            <a href="#addProduct">
                <div class="menu-icon">＋</div>
                <span>Add Product</span>
            </a>
        </li>

        <li>
            <a href="#">
                <div class="menu-icon">▤</div>
                <span>Reports</span>
            </a>
        </li>

    </ul>


    <div class="menu-title" style="margin-top:30px;">
        Management
    </div>

    <ul class="menu">

        <li>
            <a href="#">
                <div class="menu-icon">⚙</div>
                <span>Settings</span>
            </a>
        </li>

        <li>
            <a href="#">
                <div class="menu-icon">?</div>
                <span>Help Center</span>
            </a>
        </li>

    </ul>


    <div class="sidebar-bottom">

        <p>
            <strong>Healthcare Admin</strong><br>
            Manage your medical product catalog easily.
        </p>

    </div>

</aside>


<!-- =====================================================
     MAIN
===================================================== -->

<main class="main">

<!-- TOP BAR -->

<div class="topbar">

    <div class="page-title">

        <h1>Product Dashboard</h1>

        <p>
            Manage your healthcare product collection
        </p>

    </div>


    <div class="user-area">

        <button class="notification">
            ♢
        </button>

        <div class="avatar">
            AD
        </div>

    </div>

</div>


<!-- CONTENT -->

<div class="content">


<!-- WELCOME -->

<section class="welcome">

    <div>

        <h2>
            Welcome to MedixCare 👋
        </h2>

        <p>
            Manage and organize your medical products
            from one place.
        </p>

    </div>


    <button
        class="add-main-btn"
        onclick="openModal()">

        + Add New Product

    </button>

</section>


<!-- STATISTICS -->

<section class="stats">

    <div class="stat-card">

        <div class="stat-info">

            <p>Total Products</p>

            <h3>
                <%= products.size() %>
            </h3>

        </div>

        <div class="stat-icon blue">
            ▣
        </div>

    </div>


    <div class="stat-card">

        <div class="stat-info">

            <p>Active Products</p>

            <h3>
                <%= products.size() %>
            </h3>

        </div>

        <div class="stat-icon green">
            ✓
        </div>

    </div>


    <div class="stat-card">

        <div class="stat-info">

            <p>Categories</p>

            <h3>04</h3>

        </div>

        <div class="stat-icon orange">
            ◈
        </div>

    </div>


    <div class="stat-card">

        <div class="stat-info">

            <p>System Status</p>

            <h3 style="font-size:18px;color:#12b76a;">
                Online
            </h3>

        </div>

        <div class="stat-icon purple">
            ●
        </div>

    </div>

</section>


<!-- PRODUCTS -->

<section id="products">

    <div class="products-top">

        <div class="products-title">

            <h2>
                Medical Products
            </h2>

            <p>
                Browse your current healthcare inventory
            </p>

        </div>


        <div class="search">

            <span>⌕</span>

            <input
                type="text"
                id="searchInput"
                placeholder="Search products..."
                onkeyup="searchProducts()"
            >

        </div>

    </div>


<% if (products.isEmpty()) { %>

    <div class="empty">

        <div class="empty-icon">
            🏥
        </div>

        <h3>
            No Products Available
        </h3>

        <p>
            Start building your medical product catalog
            by adding your first product.
        </p>

        <button
            class="add-main-btn"
            style="margin-top:18px;"
            onclick="openModal()">

            + Add First Product

        </button>

    </div>

<% } else { %>


    <div class="product-container" id="productContainer">

    <% for (Map<String, String> product : products) { %>

        <div class="product-card"
             data-name="<%= product.get("name") %>">


            <div class="product-image-area">

                <img
                    src="<%= product.get("imageUrl") %>"
                    alt="<%= product.get("name") %>"
                    class="product-image"
                >


                <div class="status">
                    ● ACTIVE
                </div>


                <div class="product-actions">

                    <button
                        class="action-btn"
                        title="More options">

                        ⋮

                    </button>

                </div>

            </div>


            <div class="product-details">

                <div class="product-title">

                    <%= product.get("name") %>

                </div>


                <div class="product-description">

                    <%= product.get("description") %>

                </div>


                <div class="product-bottom">

                    <span class="verified">
                        ✓ Verified Product
                    </span>

                    <button class="details-btn">
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

    © 2026 MedixCare Healthcare Solutions
    · Secure Medical Product Management

</footer>


</div>

</main>

</div>


<!-- =====================================================
     ADD PRODUCT MODAL
===================================================== -->

<div class="modal" id="productModal">

    <div class="modal-box">

        <div class="modal-header">

            <h2>
                Add New Product
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
                    Product Name
                </label>

                <input
                    type="text"
                    name="name"
                    placeholder="Enter product name"
                    required
                >

            </div>


            <div class="form-group">

                <label>
                    Image URL
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
                    Product Description
                </label>

                <textarea
                    name="description"
                    placeholder="Describe the medical product..."
                    required
                ></textarea>

            </div>


            <button
                type="submit"
                class="modal-submit">

                Add Product

            </button>

        </form>

    </div>

</div>


<script>

/* =====================================================
   MODAL
===================================================== */

function openModal() {

    document.getElementById("productModal")
        .style.display = "flex";

}

function closeModal() {

    document.getElementById("productModal")
        .style.display = "none";

}


/* Close when clicking outside */

window.onclick = function(event) {

    const modal =
        document.getElementById("productModal");

    if (event.target === modal) {
        closeModal();
    }

};


/* =====================================================
   SEARCH
===================================================== */

function searchProducts() {

    const input =
        document.getElementById("searchInput");

    const search =
        input.value.toLowerCase();

    const cards =
        document.querySelectorAll(".product-card");


    cards.forEach(function(card) {

        const name =
            card.getAttribute("data-name")
                .toLowerCase();

        if (name.includes(search)) {

            card.style.display = "";

        } else {

            card.style.display = "none";

        }

    });

}

</script>

</body>

</html>
