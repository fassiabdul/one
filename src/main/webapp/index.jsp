<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Shoe Product</title>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">

    <style>
        body {
            background: #f5f6fa;
            font-family: Arial, sans-serif;
        }

        .product-card {
            max-width: 1000px;
            margin: 60px auto;
            background: white;
            border-radius: 20px;
            padding: 35px;
            box-shadow: 0 10px 30px rgba(0,0,0,.08);
        }

        .shoe-img {
            width: 100%;
            border-radius: 15px;
            background: #f1f1f1;
        }

        .price {
            font-size: 30px;
            font-weight: bold;
            color: #111;
        }

        .add-btn {
            background: #111;
            color: white;
            border: none;
            padding: 14px 30px;
            border-radius: 10px;
            width: 100%;
        }

        .add-btn:hover {
            background: #333;
        }
    </style>
</head>

<body>

<div class="product-card">
    <div class="row align-items-center">

        <div class="col-md-6">
            <img src="images/shoe.jpg"
                 class="shoe-img"
                 alt="Running Shoe">
        </div>

        <div class="col-md-6 p-4">
            <h1>Air Runner X</h1>

            <p class="text-muted">
                Lightweight premium running shoes designed
                for everyday comfort and performance.
            </p>

            <div class="price mb-4">₹4,999</div>

            <label class="fw-bold">Select Size</label>
            <select class="form-select mb-3">
                <option>6</option>
                <option>7</option>
                <option>8</option>
                <option>9</option>
                <option>10</option>
            </select>

            <label class="fw-bold">Quantity</label>
            <input type="number"
                   class="form-control mb-4"
                   value="1"
                   min="1">

            <button class="add-btn">
                Add to Cart
            </button>
        </div>

    </div>
</div>

</body>
</html>
