

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    
     <%@include file="All_component/allcss.jsp"%>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            margin: 50px auto;
            width: 80%;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
        .btn {
            text-decoration: none;
            padding: 5px 10px;
            border-radius: 3px;
        }
        .btn-primary {
            background-color: #007bff;
            color: white;
        }
        .btn-danger {
            background-color: #dc3545;
            color: white;
        }
    </style>
</head>
<body>
     <%@include file="All_component/navbar.jsp"%>
     <br>
    
    <div class="container">
        <h1>Hello Admin</h1>
        <table>
            <thead>
                <tr>
                    <th>Order ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone Number</th>
                    <th>Shoe Name</th>
                    <th>Price</th>
                    <th>Payment Type</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>bro</td>
                    <td>bro</td>
                    <td>bro</td>
                    <td>bro</td>
                    <td>bro</td>
                    <td>bro</td>
                   
                </tr>
                <tr>
                    <td>2</td>
                    <td>bro</td>
                    <td>bro</td>
                    <td>bro</td>
                    <td>bro</td>
                    <td>bro</td>
                    <td>bro</td>
                   
                </tr>
                <tr>
                    <td>3</td>
                    <td>bro</td>
                    <td>bro</td>
                    <td>bro</td>
                    <td>bro</td>
                    <td>bro</td>
                    <td>bro</td>
                    
                </tr>
            </tbody>
        </table>
    </div>
     
     <footer>
    <%@include file="All_component/footer.jsp" %>
</footer>
     
</body>
</html>
