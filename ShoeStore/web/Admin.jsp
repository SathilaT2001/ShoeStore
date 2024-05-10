<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ADMIN HOME</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
   
    <%@include file="All_component/allcss.jsp"%>
   
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f7f7;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        .card {
            flex: 0 0 calc(20% - 40px);
            margin: 30px; 
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .card-body {
            padding: 20px;
        }

        .card-body i {
            font-size: 3rem;
            margin-bottom: 10px;
        }

        .card-body h4 {
            margin: 0;
            font-size: 1.2rem;
            color: #333;
        }

        a {
            text-decoration: none;
            color: #333;
        }

        a:hover {
            text-decoration: none;
            color: #555;
        }

        @media screen and (max-width: 768px) {
            .card {
                flex-basis: calc(100% - 40px);
            }
        }
    </style>
</head>
<body>
    <%@include file="All_component/navbar.jsp"%>
    <br>
    <div class="container">
        <div class="card">
            <a href="product_Form.jsp">
                <div class="card-body text-center">
                    <i class="fas fa-plus-square"></i>
                    <h4>ADD SHOES</h4>
                </div>
            </a>
        </div>

        <div class="card">
            <a href="Admin_all books.jsp">
                <div class="card-body text-center">
                    <i class="fas fa-layer-group"></i>
                    <h4>COLLECTION</h4>
                </div>
            </a>
        </div>

        <div class="card">
            <a href="Order.jsp">
                <div class="card-body text-center">
                    <i class="fas fa-shopping-cart"></i>
                    <h4>ORDERS</h4>
                </div>
            </a>
        </div>

        <div class="card">
            <a href="logout.jsp">
                <div class="card-body text-center">
                    <i class="fas fa-sign-out-alt"></i>
                    <h4>LOG OUT</h4>
                </div>
            </a>
        </div>
    </div>
    <br>

    <footer>
        <%@include file="All_component/footer.jsp" %>
    </footer>
</body>
</html>
