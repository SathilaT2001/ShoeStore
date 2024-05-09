<%@page import="MA_package.MenProduct"%>
<%@page import="MA_package.SaleProduct"%>
<%@page import="MA_package.New_Arrivals_Product"%>
<%@page import="MA_package.WomenProduct"%>
<%@page import="MA_package.KidsProduct"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%
    ArrayList<KidsProduct> cartListKids1 = (ArrayList<KidsProduct>) session.getAttribute("cart-list-kids");
    ArrayList<MenProduct> cartListMen1 = (ArrayList<MenProduct>) session.getAttribute("cart-list-men");
    ArrayList<WomenProduct> cartListWomen1 = (ArrayList<WomenProduct>) session.getAttribute("cart-list-women");
    ArrayList<SaleProduct> cartListSale1 = (ArrayList<SaleProduct>) session.getAttribute("cart-list-sale");
    ArrayList<New_Arrivals_Product> cartListNewArrivals1 = (ArrayList<New_Arrivals_Product>) session.getAttribute("cart-list-new-arrivals");

    int totalCartItems = 0;
    if (cartListKids1 != null) {
        totalCartItems += cartListKids1.size();
    }
    if (cartListMen1 != null) {
        totalCartItems += cartListMen1.size();
    }
    if (cartListWomen1 != null) {
        totalCartItems += cartListWomen1.size();
    }
    if (cartListSale1 != null) {
        totalCartItems += cartListSale1.size();
    }
    if (cartListNewArrivals1 != null) {
        totalCartItems += cartListNewArrivals1.size();
    }
%>

<header class="header">
    <div class="hedder-1">
        <a href="index.jsp" class="logo"><img src="img/Logo_1.jpeg" width="70" height="70" class="ilogo"></img> ShoiNet</a>
        <form action="" class="search-form">
            <input type="search" name="" placeholder="Search here..." id="search-box">
            <label for="search-box" class="fas fa-search"></label>
        </form>
        <div class="icons">

           
            <a href="cart.jsp" class="fas fa-shopping-cart">
                <span class="badge badge-primary<%= (totalCartItems > 0) ? "" : " d-none" %>"><%= totalCartItems %></span></a>

            <a href="login.jsp" id="login-btn" class="fas fa-user"></a>
        </div>
    </div>

    <div class="hedder-2">
        <nav class="navbar1">
            <a href="index.jsp">Home</a>
            <a href="Men.jsp">Men</a>
            <a href="Women.jsp">Women</a>
            <a href="Kids.jsp">Kids</a>
            <a href="New_Arrival.jsp">New Arrival</a>
            <a href="contactus.jsp">Contact Us</a>
        </nav>
    </div>
</header>

<!-- bottom navbar -->

<nav class="bottom-navbar1">
    <a href="index.jsp">Home</a>
    <a href="Men.jsp">Men</a>
    <a href="Women.jsp">Women</a>
    <a href="Kids.jsp">Kids</a>
    <a href="New_Arrival.jsp">New Arrival</a>
    <a href="contactus.jsp">Contact Us</a>
</nav>

