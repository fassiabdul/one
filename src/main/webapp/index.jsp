<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Medical Products Showcase</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #007BFF;
            color: white;
            padding: 20px;
            text-align: center;
        }
        h1 {
            margin: 0;
        }
        .product-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
        }
        .product-card {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            width: 300px;
            margin: 15px;
            overflow: hidden;
            transition: transform 0.2s;
        }
        .product-card:hover {
            transform: scale(1.05);
        }
        .product-image {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }
        .product-details {
            padding: 15px;
        }
        .product-title {
            font-size: 1.2em;
            margin-bottom: 10px;
        }
        .product-description {
            font-size: 0.9em;
            color: #555;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 15px;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>
    <header>
        <h1>Our Medical Products</h1>
    </header>
    <div class="product-container">
        <%-- Example product item --%>
        <div class="product-card">
            <img src="images/product1.jpg" alt="Product 1" class="product-image"/>
            <div class="product-details">
                <div class="product-title">Medical Device A</div>
                <div class="product-description">
                    High-quality medical device designed for optimal performance and safety.
                </div>
            </div>
        </div>
        <%-- You can add more products dynamically, for example, from a database --%>
        <%-- Example of dynamic content: --%>
        <%-- 
        List<Product> products = (List<Product>) request.getAttribute("products");
        for(Product product : products){
        --%>
        <!--
        <div class="product-card">
            <img src="<%=product.getImagePath()%>" alt="<%=product.getName()%>" class="product-image"/>
            <div class="product-details">
                <div class="product-title"><%=product.getName()%></div>
                <div class="product-description"><%=product.getDescription()%></div>
            </div>
        </div>
        -->
        <%-- } --%>
    </div>
    <footer>
        &copy; 2024 Your Medical Company. All rights reserved.
    </footer>
</body>
</html>
