<%-- 
    Document   : Kids
    Created on : Apr 18, 2024, 4:45:06 PM
    Author     : Asus
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="MA_package.KidsProduct.ImageUtils"%>
<%@page import="MA_package.KidsProduct"%>
<%@page import="MA_package.KidsPro"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    KidsPro pd = new KidsPro();
    List<KidsProduct> products = pd.getAllProducts();
ArrayList<KidsProduct> cart_list_kids = (ArrayList<KidsProduct>) session.getAttribute("cart-list-kids");
if (cart_list_kids != null) {
	request.setAttribute("cart_list_kids", cart_list_kids);
}

%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>ShoiNet Kids</title>
              <%@include file="All_component/allcss.jsp"%>
    <style>
            * {
                box-sizing: border-box;
            }
            body {
                margin: 0;
                padding: 0;
                font-family: Arial, sans-serif;
            }
            .container {
                max-width: 1400px;
                margin: 0 auto;
                padding: 20px;
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
            }
            .card {
                border: 1px solid #e0e0e0;
                border-radius: 8px;
                overflow: hidden;
                transition: box-shadow 0.3s ease;
                margin: 18px;
                width: calc(25% - 36px);
                margin: 13px;
                padding: 5px;

            }
            .card:hover {
                box-shadow: 0 8px 12px rgba(0, 0, 0, 0.5);
                border-color: black;
            }
            .card-img-top {
                width: 100%;
                height: 300px;
                border: 2px solid #ddd;
                box-shadow: 0 8px 12px rgba(0, 0, 0, 0.1);

            }
            .card-body {
                padding: 20px;

            }
            .card-title {
                font-size: 1.5rem;
                font-weight: bold;
            }
            .description {
                
                color: #737070;
                font-family: 'Poppins',sans-serif;
                height: 150px;
                font-size: 1.2rem;
            }
            .category {
                font-style: italic;
                margin-bottom: 10px;
                color: #666;

            }
            .cart-button {
                cursor: pointer;
                display: flex;
                justify-content: center;
                align-items: center;
                gap: 0.25rem;
                padding: 0.5rem;
                width: 100%;
                background-color: #43766C;
                font-size: 1.1rem;
                font-weight: 500;
                color: #fff;
                text-wrap: nowrap;
                border-radius: 0.5rem;
                box-shadow: inset 0 0 0.25rem 1px #d9d9d9;
            }
            .cart-button .cart-icon {
                width: 1rem;
            }
            .cart-button:hover{
                background: #F8FAE8;
                text-decoration: none;
            }

            .price {
                font-size: 1.8rem;
                font-weight: 700;
                color: #023020;
                margin: 10px;
                padding-top: 0.5rem;
            }
            .size {
                font-size: 20px;

            }

            @media only screen and (max-width: 768px) {
                .container{
                    margin-top: 30px;
                }
                .card {
                    width: calc(50% - 36px);
                }
                .card-img-top {
                    width: 100%;
                    height: auto;

                }
                .category {
                    font-size: 1.5rem;
                    height: auto;
                }
                .description{
                    font-size: 1.5rem;
                    height: 90px;
                }
            }

            @media only screen and (max-width: 480px) {
                .container{
                    margin-top: 30px;
                }
                .card {
                    width: calc(100% - 36px);
                    height: auto;
                    margin: 10px;

                }
                .category {
                    font-size: 1.5rem;
                    height: auto;
                }
                .description{
                    font-size: 1.5rem;
                    height: auto;
                }
            }
        </style>
    </head>
    <body>
         <%@include file="All_component/navbar.jsp"%>
     <form action="${pageContext.request.contextPath}/addToCartKids" method="GET" enctype="multipart/form-data">          
<div class="container">
    
    <% if (!products.isEmpty()) { %>
        <% for (KidsProduct p : products) { 
        %>
            <div class="card">
                <img class="card-img-top" src="data:image/jpeg;base64,<%= ImageUtils.blobToBase64(p.getImage()) %>" alt="Card image cap">
                <div class="card-body">
                    <h1 class="card-title"><%= p.getName() %></h1>                        
                    <h3 class="description"><%= p.getDescription() %></h3>
                    <label></label>
                    <div class="size">
                        <span>Size: </span><%= p.getSize() %><br>
                        
                    </div>
                    <div class="available">
                        Available : <%= p.getQuantity() %>         
                    </div>
                    <table>
                        <tr>
                            <td class="price"> $<%= p.getPrice() %> &nbsp;</td>
                            <td>                                  
                                <a href="addToCartKids?id=<%= p.getId() %>" class="cart-button">
                                    <svg class="cart-icon" stroke="currentColor" stroke-width="1.5" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M2.25 3h1.386c.51 0 .955.343 1.087.835l.383 1.437M7.5 14.25a3 3 0 0 0-3 3h15.75m-12.75-3h11.218c1.121-2.3 2.1-4.684 2.924-7.138a60.114 60.114 0 0 0-16.536-1.84M7.5 14.25 5.106 5.272M6 20.25a.75.75 0 1 1-1.5 0 .75.75 0 0 1 1.5 0Zm12.75 0a.75.75 0 1 1-1.5 0 .75.75 0 0 1 1.5 0Z" stroke-linejoin="round" stroke-linecap="round"></path>
                                    </svg>
                                    <span>Add to cart</span>
                                </a>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        <% } %>
    <% } %>
</div>
     </form>
         <%@include file="All_component/footer.jsp"%>
    </body>
</html>
