<%-- 
    Document   : cart
    Created on : Apr 27, 2024, 2:13:14 PM
    Author     : sathi
--%>
<%@page import="MA_package.KidsPro"%>
<%@page import="java.util.List"%>
<%@page import="MA_package.KidsProduct"%>
<%@page import="java.util.ArrayList"%>
<%
ArrayList<KidsProduct> cart_list_kids = (ArrayList<KidsProduct>) session.getAttribute("cart-list-kids");
List<KidsProduct> cartProductkids = null;


if (cart_list_kids != null) {
	KidsPro pDao = new KidsPro();
	cartProductkids = pDao.getCartProducts(cart_list_kids);
	request.setAttribute("cart_list_kids", cart_list_kids);
}

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        
        <%@include file="All_component/allcss.jsp" %>
        <style type="text/css">
            .btn-incre, .btn-decre{
                box-shadow: none;
                font-size: 20px;
            }
            .fa-trash{
                box-shadow: none;
                font-size: 25px;
                color: red;
                margin-top: .5rem;
                margin-left: 1rem;
            }
            .table-loght{
                font-size: 1.5rem;
            }
        </style>
        
        
    </head>
    <body class="body-change">
        <%@include file="All_component/navbar.jsp" %>
        
        <div class="container">
            <div class="d-flex py-3"><h3>Total Price : $452</h3><a href="#" class="mx-3 btn btn-primary">Check Out</a></div>
                
                <table class="table table-loght">
                    <thead>
                        <tr>
                            <th scope="col">Name</th>
                            <th scope="col">Category</th>
                            <th scope="col">Price</th>
                            <th scope="col">Buy Now</th>
                            <th scope="col">Cancel</th>
                           
                        </tr>
                    </thead>
                    <tbody>
<%
if (cart_list_kids != null) {
        for (KidsProduct c : cartProductkids) {
%> 
            <tr>
                <td><%= c.getName() %></td>
                <td><%= c.getCategory() %></td>
                <td><%= c.getPrice() %></td>
                            <td>
                                <form method="post" class="from-inline" action="">
                                    <input type="hidden" name="id" value="1" class="form-input">
                                    <div class="form-group d-flex justify-content-between">
                                        <a class="btn btn-sm btn-decre" href=""><i class="fas fa-minus-square"></i></a>
                                        
                                        <input type="text" name="quntity" class="form-control" value="1" readonly="">
                                        
                                        <a class="btn btn-sm btn-incre" href=""><i class="fas fa-plus-square"></i></a>
                                        
                                    </div>
                                </form>
                            </td>
                            <td><a href=""><i class="fa fa-trash" aria-hidden="true"></i></a></td>
                        </tr>
                        <%
        }
    }

%>
                    </tbody>
                </table>
                
            
        </div>
        
        <footer>
            <%@include file="All_component/footer.jsp" %>
     </footer>  
    </body>
</html>
