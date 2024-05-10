<%-- 
    Document   : Admin_All books
    Created on : Apr 25, 2024, 1:37:16 AM
    Author     : Dilina
--%>
<%@page import="MA_package.KidsProduct.ImageUtils"%>
<%@page import="MA_package.WomenProduct"%>
<%@page import="MA_package.WomenPro"%>
<%@page import="MA_package.New_Arrivals_Product"%>
<%@page import="MA_package.New_Arrivals_Pro"%>
<%@page import="MA_package.SaleProduct"%>
<%@page import="MA_package.SalePro"%>
<%@page import="MA_package.KidsPro"%>
<%@page import="MA_package.KidsProduct"%>
<%@page import="MA_package.MenProduct"%>
<%@page import="java.util.List"%>
<%@page import="MA_package.MenPro"%>
<%
    MenPro men = new MenPro();
    List<MenProduct> men1 = men.getAllProducts();
    
    KidsPro kids = new KidsPro();
    List<KidsProduct> kids1 = kids.getAllProducts();
    
        SalePro sale = new SalePro();
    List<SaleProduct> sale1 = sale.getAllProducts();
    
    New_Arrivals_Pro ne = new New_Arrivals_Pro();
    List<New_Arrivals_Product> new1 = ne.getAllProducts();
    
  WomenPro women = new WomenPro();
    List<WomenProduct> women1 = women.getAllProducts();

%>
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
        <h1>Hello Admin <h3>  <%= new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new java.util.Date())  %></h3></h1>
        <h3>-Welcome to Your Collection</h3>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Shoe Name</th>
                    <th>Price</th>
                    <th>Categories</th>
                    <th>Description</th>
                    <th>Image</th>
                    <th>Action</th>
                </tr>
            </thead>
             <tr>
             <td colspan="5"><h3>Men Shoes</h3></td>
         </tr>
            
                <% if (!men1.isEmpty()) { %>
         <% for (MenProduct m : men1) {  %>
        
                <tr>
                    <td><%= m.getId()%></td>
                    <td><%= m.getName()%></td>
                    <td><%= m.getPrice()%></td>
                    <td><%= m.getCategory()%></td>
                     <td><%= m.getDescription()%></td>
                     
                    <td>
                        <a href="delete" class="btn btn-primary">Edit</a>
                        <a href="" class="btn btn-danger">Delete</a>
                    </td>
                     <% }}%>
                </tr>

                <tr>
             <td colspan="5"><h3>Kids Shoes</h3></td>
         </tr>
               
                     <% if (!kids1.isEmpty()) { %>
         <% for (KidsProduct k : kids1) {  %>
                <tr>
                    <td><%= k.getId()%></td>
                    <td><%= k.getName()%></td>
                    <td><%= k.getPrice()%></td>
                    <td><%= k.getCategory()%></td>
                     <td><%= k.getDescription()%></td>
                     
                    <td>
                        <a href="#" class="btn btn-primary">Edit</a>
                        <a href="delete?id=<%= k.getId()%>" class="btn btn-danger">Delete</a>
                    </td>
                    <% }}%>
                </tr>
 <tr>
             <td colspan="5"><h3>Sale Shoes</h3></td>
         </tr>
                
                     <% if (!sale1.isEmpty()) { %>
         <% for (SaleProduct s : sale1) {  %>
                <tr>
                    <td><%= s.getId()%></td>
                    <td><%= s.getName()%></td>
                    <td><%= s.getPrice()%></td>
                    <td><%= s.getCategory()%></td>
                     <td><%= s.getDescription()%></td>
                     
                    <td>
                        <a href="#" class="btn btn-primary">Edit</a>
                        <a href="#" class="btn btn-danger">Delete</a>
                    </td>
                     <% }}%>
                </tr>
 <tr>
             <td colspan="5"><h3>New Arrivals Shoes</h3></td>
         </tr>
               
                     <% if (!new1.isEmpty()) { %>
         <% for (New_Arrivals_Product n : new1) {  %>
                <tr>
                    <td><%= n.getId()%></td>
                    <td><%= n.getName()%></td>
                    <td><%= n.getPrice()%></td>
                    <td><%= n.getCategory()%></td>
                     <td><%= n.getDescription()%></td>
                     
                    <td>
                        <a href="#" class="btn btn-primary">Edit</a>
                        <a href="#" class="btn btn-danger">Delete</a>
                    </td>
                    <% }}%>
                </tr>

                 <tr>
             <td colspan="5"><h3>Women Shoes</h3></td>
         </tr>
                     <% if (!women1.isEmpty()) { %>
         <% for (WomenProduct w : women1) {  %>
                <tr>
                    <td><%= w.getId()%></td>
                    <td><%= w.getName()%></td>
                    <td><%= w.getPrice()%></td>
                    <td><%= w.getCategory()%></td>
                     <td><%= w.getDescription()%></td>
                     
                    <td>
                        <a href="#" class="btn btn-primary">Edit</a>
                        <a href="#" class="btn btn-danger">Delete</a>
                    </td>
                     <% }}%>
                </tr>

            
        </table>
    </div>
     
     
     <footer>
    <%@include file="All_component/footer.jsp" %>
</footer>
</body>
</html>
