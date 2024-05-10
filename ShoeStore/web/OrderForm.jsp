<%-- 
    Document   : OrderForm
    Created on : May 10, 2024, 6:18:01 PM
    Author     : sathi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Order</title>
        <%@include file="All_component/allcss.jsp"%>

        <style>

            @import url('https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700');

            body{
                background: #FEF8F8;
                font-family: 'Poppins', sans-serif;

                margin: 5% 0;
            }
            .container{
                width: 100%;
                padding-top: 8rem;
                padding-right: 15px;
                padding-left: 15px;
                margin-right: auto;
                margin-left: auto;
            }
            @media (min-width: 1200px)
            {
                .container{
                    max-width: 1140px;
                }
            }
            .d-flex{
                display: flex;
                flex-direction: row;
                background: #fff;
                border-radius: 0 0 5px 5px;
                padding: 25px;
            }
            form{
                flex: 4;
            }
            .Yorder{
                flex: 2;
            }
            .title{
                background: #EEF2F4;
                border-radius:5px 5px 0 0 ;
                padding: 20px;
                color: #000;
                text-align: center;
            }
            h2{
                margin: 0;
                padding-left: 15px;
            }
            .required{
                color: red;
            }
            label, table{
                display: block;
                margin: 15px;
            }
            label>span{
                float: left;
                width: 25%;
                margin-top: 12px;
                padding-right: 10px;
            }
            input[type="text"], input[type="tel"], input[type="email"], select
            {
                width: 70%;
                height: 30px;
                padding: 5px 10px;
                margin-bottom: 10px;
                border: 1px solid #dadada;
                color: #888;
            }
            select{
                width: 72%;
                height: 45px;
                padding: 5px 10px;
                margin-bottom: 10px;
            }
            .Yorder{
                margin-top: 15px;
                height: 600px;
                padding: 20px;
                border: 1px solid #dadada;
            }

            p{
                display: block;
                color: #888;
                margin: 0;
                padding-left: 25px;
            }
            .Yorder>div{
                padding: 15px 0;
            }

            .button{
                width: 100%;
                margin-top: 10px;
                padding: 10px;
                border: none;
                border-radius: 30px;
                background: #52ad9c;
                color: #fff;
                font-size: 15px;
                font-weight: bold;
                box-sizing: border-box;
            }
            .button:hover{
                cursor: pointer;
                background: #428a7d;
            }
        </style>
    </head>
    <body>
        <%@include file="All_component/navbar.jsp"%>
        <div class="container">
            <div class="title">
                <h2>Product Order Form</h2>
            </div>
            <div class="d-flex">
                <form action="" method="">
                    <label>
                        <span class="fname">First Name <span class="required">*</span></span>
                        <input type="text" name="fname">
                    </label>
                    <label>
                        <span class="lname">Last Name <span class="required">*</span></span>
                        <input type="text" name="lname">
                    </label>
                    
                    <label>
                        <span>Country <span class="required">*</span></span>
                        <select name="selection">
                            <option value="select">Select a country...</option>
                            <option value="AFG">Afghanistan</option>
                            <option value="ALA">Åland Islands</option>
                            <option value="MDV">Maldives</option>
                            <option value="MLI">Mali</option>
                            <option value="MLT">Malta</option>
                            <option value="MHL">Marshall Islands</option>
                            <option value="MTQ">Martinique</option>
                            <option value="MRT">Mauritania</option>
                            <option value="SOM">Somalia</option>
                            <option value="ZAF">South Africa</option>
                            <option value="SGS">South Georgia and the South Sandwich Islands</option>
                            <option value="SSD">South Sudan</option>
                            <option value="ESP">Spain</option>
                            <option value="LKA">Sri Lanka</option>
                            <option value="SDN">Sudan</option>
                            <option value="SUR">Suriname</option>

                        </select>
                    </label>
                    <label>
                        <span>Street Address <span class="required">*</span></span>
                        <input type="text" name="houseadd" placeholder="House number and street name" required>
                    </label>
                    <label>
                        <span>&nbsp;</span>
                        <input type="text" name="apartment" placeholder="Apartment, suite, unit etc. (optional)">
                    </label>
                    <label>
                        <span>Town / City <span class="required">*</span></span>
                        <input type="text" name="city"> 
                    </label>
                    <label>
                        <span>State / County <span class="required">*</span></span>
                        <input type="text" name="city"> 
                    </label>
                    <label>
                        <span>Postcode / ZIP <span class="required">*</span></span>
                        <input type="text" name="city"> 
                    </label>
                    <label>
                        <span>Phone <span class="required">*</span></span>
                        <input type="tel" name="city"> 
                    </label>
                    <label>
                        <span>Email Address <span class="required">*</span></span>
                        <input type="email" name="city"> 
                    </label>
                    <a href="checkout.jsp" class="mx-3 button">Place Order</a></div>
        </form>
        <!-- Yorder -->
    </div>
</div>
</body>
</html>
