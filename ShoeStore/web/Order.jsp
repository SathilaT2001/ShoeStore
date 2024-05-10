<%-- 
    Document   : Order
    Created on : May 7, 2024, 8:21:56 PM
    Author     : vinumi
--%>
<%@page import="MA_package.call_Orders"%>
<%@page import="MA_package.callorders"%>
<%
    callorders pd = new callorders();
    List<call_Orders> products = pd.getAllProducts();

    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
          <h3>-Welcome to Your Orders</h3>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Country</th>
                    <th>Zip code</th>
                    <th>Phone Number</th>
                    <th>Email</th>
                    
           
         </tr>
         </thead>
          
            
                <% if (!products.isEmpty()) { %>
         <% for (call_Orders m : products) {  %>
        
                <tr>
                    <td><%= m.getFname() %> <%=  m.getLname()%></td>
                    <td><%= m.getHouseadd()%> <%= m.getApartment() %><%= m.getState() %> <%= m.getCity() %></td>
                    <td><%= m.getSelection()%></td>
                    <td><%= m.getZip()%></td>
                    <td><%= m.getPhone()%></td>
                     <td><%= m.getEmail()%></td>
                     
                    
                     <% }}%>
                </tr>
        </table><!-- comment -->
             <footer>
    <%@include file="All_component/footer.jsp" %>
</footer>
    </body>
</html>
