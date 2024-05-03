<%-- 
    Document   : cart
    Created on : Apr 27, 2024, 2:13:14 PM
    Author     : sathi
--%>
<%@page import="MA_package.New_Arrivals_Pro"%>
<%@page import="MA_package.SalePro"%>
<%@page import="MA_package.WomenPro"%>
<%@page import="MA_package.MenPro"%>
<%@page import="MA_package.New_Arrivals_Product"%>
<%@page import="MA_package.SaleProduct"%>
<%@page import="MA_package.WomenProduct"%>
<%@page import="MA_package.MenProduct"%>
<%@page import="MA_package.KidsPro"%>
<%@page import="java.util.List"%>
<%@page import="MA_package.KidsProduct"%>
<%@page import="java.util.ArrayList"%>

<%
    ArrayList<KidsProduct> cart_list_kids = (ArrayList<KidsProduct>) session.getAttribute("cart-list-kids");
    List<KidsProduct> cartProductkids = null;

    ArrayList<MenProduct> cart_list_men = (ArrayList<MenProduct>) session.getAttribute("cart-list-men");
    List<MenProduct> cartProductMen = null;

    ArrayList<WomenProduct> cart_list_women = (ArrayList<WomenProduct>) session.getAttribute("cart-list-women");
    List<WomenProduct> cartProductWomen = null;

    ArrayList<SaleProduct> cart_list_sale = (ArrayList<SaleProduct>) session.getAttribute("cart-list-sale");
    List<SaleProduct> cartProductSale = null;

    ArrayList<New_Arrivals_Product> cart_list_new_arrivals = (ArrayList<New_Arrivals_Product>) session.getAttribute("cart-list-new-arrivals");
    List<New_Arrivals_Product> cartProductNewArrivals = null;

    if (cart_list_kids != null) {
        KidsPro kidsPro = new KidsPro();
        cartProductkids = kidsPro.getCartProducts(cart_list_kids);
        float total = kidsPro.getTotalCartPrice(cart_list_kids);
        request.setAttribute("cart_list_kids", cart_list_kids);
        request.setAttribute("total", total);
    }

    if (cart_list_men != null) {
        MenPro men = new MenPro();
        cartProductMen = men.getCartProducts(cart_list_men);
        float total = men.getTotalCartPrice(cart_list_men);
        request.setAttribute("cart_list_men", cart_list_men);
        request.setAttribute("total", total);
    }

    if (cart_list_women != null) {
        WomenPro women = new WomenPro();
        cartProductWomen = women.getCartProducts(cart_list_women);
        float total = women.getTotalCartPrice(cart_list_women);
        request.setAttribute("cart_list_women", cart_list_women);
        request.setAttribute("total", total);
    }
    if (cart_list_sale != null) {
        SalePro sale = new SalePro();
        cartProductSale = sale.getCartProducts(cart_list_sale);
        float total = sale.getTotalCartPrice(cart_list_sale);
        request.setAttribute("cart_list_sale", cart_list_sale);
        request.setAttribute("total", total);
    }

    if (cart_list_new_arrivals != null) {
        New_Arrivals_Pro pDao = new New_Arrivals_Pro();
        cartProductNewArrivals = pDao.getCartProducts(cart_list_new_arrivals);
        float total = pDao.getTotalCartPrice(cart_list_new_arrivals); // Use pDao to calculate the total cart price
        request.setAttribute("cart_list_new_arrivals", cart_list_new_arrivals);
        request.setAttribute("total", total);
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
                margin-top: 3rem;
            }

            .container{
                margin-top: 7rem;
            }
        </style>


    </head>
    <body class="body-change">
        <%@include file="All_component/navbar.jsp" %>

        <div class="container">
            <div class="d-flex py-3"><h3>Total Price : $ ${ (total>0)?total:0 }</h3><a href="#" class="mx-3 btn btn-primary">Check Out</a></div>

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
                    <%    if (cart_list_kids != null) {
                            for (KidsProduct c : cartProductkids) {
                    %> 
                    <tr>
                        <td><%= c.getName()%></td>
                        <td><%= c.getCategory()%></td>
                        <td><%= c.getPrice()%></td>
                        <td>
                            <form method="post" class="from-inline" action="">
                                <input type="hidden" name="id" value="1" class="form-input">
                                <div class="form-group d-flex justify-content-between">
                                    <a class="btn btn-sm btn-decre" href="quantity-inc-dec?action=dec&id=<%= c.getId()%>"><i class="fas fa-minus-square"></i></a>

                                    <input type="text" name="quntity" class="form-control" value="1" readonly="">

                                    <a class="btn btn-sm btn-incre" href="quantity-inc-dec?action=inc&id=<%= c.getId()%>"><i class="fas fa-plus-square"></i></a>

                                </div>
                            </form>
                        </td>
                        <td><a href=""><i class="fa fa-trash" aria-hidden="true"></i></a></td>
                    </tr>


                    <%
                            }
                        }
                        if (cart_list_men != null) {
                            for (MenProduct c : cartProductMen) {

                    %>

                    <tr>
                        <td><%= c.getName()%></td>
                        <td><%= c.getCategory()%></td>
                        <td><%= c.getPrice()%></td>
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
                        if (cart_list_women != null) {
                            for (WomenProduct c : cartProductWomen) {
                    %>


                    <tr>
                        <td><%= c.getName()%></td>
                        <td><%= c.getCategory()%></td>
                        <td><%= c.getPrice()%></td>
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
                        if (cart_list_sale != null) {
                            for (SaleProduct c : cartProductSale) {
                    %>



                    <tr>
                        <td><%= c.getName()%></td>
                        <td><%= c.getCategory()%></td>
                        <td><%= c.getPrice()%></td>
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
                        if (cart_list_new_arrivals != null) {
                            for (New_Arrivals_Product c : cartProductNewArrivals) {
                    %>



                    <tr>
                        <td><%= c.getName()%></td>
                        <td><%= c.getCategory()%></td>
                        <td><%= c.getPrice()%></td>
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
