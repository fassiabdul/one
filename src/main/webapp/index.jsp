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

            Map<String, String> newProduct = new HashMap<>();

            newProduct.put("name", name.trim());
            newProduct.put("description", description.trim());
            newProduct.put("imageUrl", imageUrl.trim());

            products.add(newProduct);

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

    <title>MedCare | Medical Products</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: "Segoe UI", Arial, sans-serif;
            background: #f5f9fc;
            color: #1f2937;
        }

        /* ================= HEADER ================= */

        header {
            background: linear-gradient(
                135deg,
                #0f766e,
                #0891b2
            );

            color: white;
            padding: 22px 7%;

            display: flex;
            align-items: center;
            justify-content: space-between;

            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.12);
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .logo-icon {
            width: 45px;
            height: 45px;

            display: flex;
            align-items: center;
            justify-content: center;

            background: white;
            color: #0891b2;

            border-radius: 12px;

            font-size: 25px;
            font-weight: bold;
        }

        .logo h1 {
            font-size: 24px;
            letter-spacing: 0.5px;
        }

        .logo p {
            font-size: 12px;
            opacity: 0.85;
        }

        .header-btn {
            background: white;
            color: #0f766e;

            border: none;
            padding: 11px 20px;

            border-radius: 25px;

            font-weight: 600;
            cursor: pointer;

            transition: 0.3s;
        }

        .header-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.15);
        }

        /* ================= HERO ================= */

        .hero {
            max-width: 1200px;
            margin: 45px auto 25px;

            padding: 35px;

            display: flex;
            align-items: center;
            justify-content: space-between;

            background: linear-gradient(
                135deg,
                #ecfeff,
                #f0fdfa
            );

            border-radius: 20px;
        }

        .hero-text {
            max-width: 650px;
        }

        .hero-text span {
            display: inline-block;

            background: #ccfbf1;
            color: #0f766e;

            padding: 6px 14px;
            border-radius: 20px;

            font-size: 13px;
            font-weight: 600;

            margin-bottom: 15px;
        }

        .hero-text h2 {
            font-size: 38px;
            line-height: 1.2;
            margin-bottom: 12px;

            color: #134e4a;
        }

        .hero-text p {
            color: #64748b;
            font-size: 16px;
            line-height: 1.7;
        }

        .hero-icon {
            font-size: 90px;
            opacity: 0.8;
        }

        /* ================= ADD PRODUCT ================= */

        .form-section {
            max-width: 1200px;
            margin: 30px auto;

            background: white;

            border-radius: 18px;

            padding: 28px;

            box-shadow:
                0 8px 30px rgba(15, 118, 110, 0.08);
        }

        .section-title {
            display: flex;
            align-items: center;
            gap: 12px;

            margin-bottom: 22px;
        }

        .section-title .icon {
            width: 40px;
            height: 40px;

            display: flex;
            align-items: center;
            justify-content: center;

            background: #ccfbf1;
            color: #0f766e;

            border-radius: 10px;
        }

        .section-title h3 {
            font-size: 20px;
            color: #134e4a;
        }

        .section-title p {
            font-size: 13px;
            color: #94a3b8;
            margin-top: 3px;
        }

        .form-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 18px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        .form-group.full {
            grid-column: 1 / -1;
        }

        label {
            font-size: 13px;
            font-weight: 600;
            color: #475569;
            margin-bottom: 7px;
        }

        input,
        textarea {
            width: 100%;

            border: 1px solid #dbe5ea;

            background: #f8fafc;

            border-radius: 10px;

            padding: 13px 14px;

            font-size: 14px;

            outline: none;

            transition: 0.25s;
        }

        input:focus,
        textarea:focus {
            border-color: #14b8a6;

            background: white;

            box-shadow:
                0 0 0 3px rgba(20, 184, 166, 0.1);
        }

        textarea {
            resize: vertical;
            min-height: 100px;
        }

        .submit-row {
            margin-top: 20px;
            display: flex;
            justify-content: flex-end;
        }

        .submit-btn {
            background: linear-gradient(
                135deg,
                #0f766e,
                #0891b2
            );

            color: white;

            border: none;

            padding: 13px 26px;

            border-radius: 10px;

            font-size: 14px;
            font-weight: 600;

            cursor: pointer;

            transition: 0.3s;
        }

        .submit-btn:hover {
            transform: translateY(-2px);

            box-shadow:
                0 8px 20px rgba(8, 145, 178, 0.25);
        }

        /* ================= PRODUCTS ================= */

        .products-section {
            max-width: 1200px;
            margin: 45px auto 100px;
        }

        .products-header {
            display: flex;
            justify-content: space-between;
            align-items: center;

            margin-bottom: 22px;
        }

        .products-header h2 {
            color: #134e4a;
            font-size: 25px;
        }

        .product-count {
            background: #ccfbf1;
            color: #0f766e;

            padding: 7px 14px;

            border-radius: 20px;

            font-size: 13px;
            font-weight: 600;
        }

        .product-container {
            display: grid;

            grid-template-columns:
                repeat(auto-fit, minmax(260px, 1fr));

            gap: 25px;
        }

        /* ================= PRODUCT CARD ================= */

        .product-card {
            background: white;

            border-radius: 18px;

            overflow: hidden;

            border: 1px solid #e5eef2;

            box-shadow:
                0 5px 20px rgba(15, 23, 42, 0.06);

            transition: all 0.3s ease;
        }

        .product-card:hover {
            transform: translateY(-7px);

            box-shadow:
                0 15px 35px rgba(15, 118, 110, 0.14);
        }

        .image-wrapper {
            height: 220px;

            position: relative;

            background: #f0fdfa;

            overflow: hidden;
        }

        .product-image {
            width: 100%;
            height: 100%;

            object-fit: cover;

            transition: transform 0.4s;
        }

        .product-card:hover .product-image {
            transform: scale(1.06);
        }

        .medical-badge {
            position: absolute;

            top: 14px;
            left: 14px;

            background: white;
            color: #0f766e;

            padding: 6px 10px;

            border-radius: 20px;

            font-size: 11px;
            font-weight: 700;

            box-shadow:
                0 3px 10px rgba(0,0,0,0.1);
        }

        .product-details {
            padding: 20px;
        }

        .product-title {
            font-size: 18px;
            font-weight: 700;

            color: #134e4a;

            margin-bottom: 8px;
        }

        .product-description {
            font-size: 13px;

            line-height: 1.6;

            color: #64748b;

            min-height: 63px;
        }

        .product-footer {
            display: flex;
            align-items: center;
            justify-content: space-between;

            margin-top: 17px;

            padding-top: 14px;

            border-top: 1px solid #edf2f4;
        }

        .verified {
            color: #0f766e;

            font-size: 12px;

            font-weight: 600;
        }

        .view-btn {
            border: none;

            background: #ecfeff;

            color: #0891b2;

            padding: 7px 12px;

            border-radius: 8px;

            font-size: 12px;

            font-weight: 600;
        }

        /* ================= EMPTY STATE ================= */

        .empty {
            text-align: center;

            background: white;

            padding: 60px 20px;

            border-radius: 18px;

            color: #94a3b8;
        }

        .empty-icon {
            font-size: 50px;
            margin-bottom: 12px;
        }

        /* ================= FOOTER ================= */

        footer {
            background: #134e4a;

            color: #d1fae5;

            text-align: center;

            padding: 20px;

            font-size: 13px;
        }

        /* ================= RESPONSIVE ================= */

        @media (max-width: 768px) {

            header {
                padding: 18px 5%;
            }

            .header-btn {
                display: none;
            }

            .hero {
                margin: 25px 15px;

                padding: 25px;

                text-align: center;
            }

            .hero-text h2 {
                font-size: 29px;
            }

            .hero-icon {
                display: none;
            }

            .form-section,
            .products-section {
                margin-left: 15px;
                margin-right: 15px;
            }

            .form-grid {
                grid-template-columns: 1fr;
            }

            .form-group.full {
                grid-column: auto;
            }

            .submit-row {
                justify-content: stretch;
            }

            .submit-btn {
                width: 100%;
            }

        }

    </style>
</head>

<body>

<!-- ================= HEADER ================= -->

<header>

    <div class="logo">

        <div class="logo-icon">
            +
        </div>

        <div>
            <h1>MedCare</h1>
            <p>Trusted Medical Solutions</p>
        </div>

    </div>

    <button class="header-btn"
            onclick="document.getElementById('addProduct').scrollIntoView({behavior:'smooth'})">
        + Add Product
    </button>

</header>


<!-- ================= HERO ================= -->

<section class="hero">

    <div class="hero-text">

        <span>HEALTHCARE COLLECTION</span>

        <h2>
            Quality Medical Products
            For Better Care
        </h2>

        <p>
            Explore our collection of trusted healthcare and
            medical products designed to support better health,
            comfort, and patient care.
        </p>

    </div>

    <div class="hero-icon">
        🩺
    </div>

</section>


<!-- ================= ADD PRODUCT ================= -->

<section class="form-section" id="addProduct">

    <div class="section-title">

        <div class="icon">
            +
        </div>

        <div>
            <h3>Add New Product</h3>
            <p>Add a medical product to your showcase</p>
        </div>

    </div>

    <form method="post" action="showcase.jsp">

        <div class="form-grid">

            <div class="form-group">

                <label>Product Name</label>

                <input
                    type="text"
                    name="name"
                    placeholder="e.g. Digital Blood Pressure Monitor"
                    required
                >

            </div>


            <div class="form-group">

                <label>Image URL</label>

                <input
                    type="url"
                    name="imageUrl"
                    placeholder="https://example.com/product.jpg"
                    required
                >

            </div>


            <div class="form-group full">

                <label>Product Description</label>

                <textarea
                    name="description"
                    placeholder="Enter a short description of the medical product..."
                    required
                ></textarea>

            </div>

        </div>


        <div class="submit-row">

            <button class="submit-btn" type="submit">
                + Add Product
            </button>

        </div>

    </form>

</section>


<!-- ================= PRODUCTS ================= -->

<section class="products-section">

    <div class="products-header">

        <h2>Our Products</h2>

        <div class="product-count">
            <%= products.size() %> Products
        </div>

    </div>


    <% if (products.isEmpty()) { %>

        <div class="empty">

            <div class="empty-icon">
                🏥
            </div>

            <h3>No Products Yet</h3>

            <p>
                Add your first medical product using the form above.
            </p>

        </div>

    <% } else { %>

        <div class="product-container">

            <% for (Map<String, String> product : products) { %>

                <div class="product-card">

                    <div class="image-wrapper">

                        <img
                            src="<%= product.get("imageUrl") %>"
                            alt="<%= product.get("name") %>"
                            class="product-image"
                        >

                        <div class="medical-badge">
                            MEDICAL
                        </div>

                    </div>


                    <div class="product-details">

                        <div class="product-title">
                            <%= product.get("name") %>
                        </div>

                        <div class="product-description">
                            <%= product.get("description") %>
                        </div>


                        <div class="product-footer">

                            <span class="verified">
                                ✓ Healthcare Product
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


<!-- ================= FOOTER ================= -->

<footer>

    © 2026 MedCare Healthcare Solutions.
    All rights reserved.

</footer>

</body>

</html>
