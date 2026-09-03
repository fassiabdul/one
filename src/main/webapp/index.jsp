<%@ page import="java.util.*, javax.servlet.*, javax.servlet.http.*" %>
<%
    // Initialize product list if not already
    List<Map<String, String>> products = (List<Map<String, String>>) session.getAttribute("products");
    if (products == null) {
        products = new ArrayList<>();
        session.setAttribute("products", products);
    }

    // Handle new product submission
    String name = request.getParameter("name");
    String description = request.getParameter("description");
    String imageUrl = request.getParameter("imageUrl");

    if ("POST".equalsIgnoreCase(request.getMethod())) {
        if (name != null && description != null && imageUrl != null 
            && !name.trim().isEmpty() 
            && !description.trim().isEmpty() 
            && !imageUrl.trim().isEmpty()) {
            Map<String, String> newProduct = new HashMap<>();
            newProduct.put("name", name);
            newProduct.put("description", description);
            newProduct.put("imageUrl", imageUrl);
            products.add(newProduct);
        }
    }
%>
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
        .add-form {
            margin: 20px auto;
            width: 80%;
            max-width: 600px;
            background: #fff;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .add-form input, .add-form textarea {
            width: 100%;
            padding: 8px;
            margin: 8px 0;
            box-sizing: border-box;
        }
        .add-form button {
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
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

    <!-- Form to add new product -->
    <div class="add-form">
        <h2>Add New Product</h2>
        <form method="post" action="showcase.jsp">
            <input type="text" name="name" placeholder="Product Name" required />
            <textarea name="description" placeholder="Product Description" required></textarea>
            <input type="text" name="imageUrl" placeholder="Image URL" required />
            <button type="submit">Add Product</button>
        </form>
    </div>

    <!-- Display products -->
    <div class="product-container">
        <% for (Map<String, String> product : products) { %>
            <div class="product-card">
                <img src="<%= product.get("imageUrl") %>" alt="<%= product.get("name") %>" class="product-image"/>
                <div class="product-details">
                    <div class="product-title"><%= product.get("name") %></div>
                    <div class="product-description"><%= product.get("description") %></div>
                </div>
            </div>
        <% } %>
    </div>

    <footer>
        &copy; 2024 Your Medical Company. All rights reserved.
    </footer>
</body>
</html>
