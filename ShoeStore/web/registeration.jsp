<%-- 
    Document   : register
    Created on : Apr 20, 2024, 10:38:13 AM
    Author     : Dell Latitude 7290
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ShoiNet</title>
        <%@include file="All_component/allcss.jsp"%>

        <style>
            /* Import Google font - Poppins */
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }
            body{
                min-height: 100vh;
                width: 100%;
                background: #009579;
            }
            .container{
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
                max-width: 430px;
                width: 100%;
                background: #fff;
                border-radius: 7px;
                box-shadow: 0 5px 10px rgba(0,0,0,0.3);
                margin-top: 8rem;
            }
            .container .registration{
                display: none;
            }
            #check:checked ~ .registration{
                display: block;
            }
            #check:checked ~ .login{
                display: none;
            }
            #check{
                display: none;
            }
            .container .form{
                padding: 2rem;

            }
            .form header{
                font-size: 2rem;
                font-weight: 500;
                text-align: center;
                margin-bottom: 1.5rem;
            }
            .form input{
                height: 60px;
                width: 100%;
                padding: 0 15px;
                font-size: 17px;
                margin-bottom: 1.3rem;
                border: 1px solid #ddd;
                border-radius: 6px;
                outline: none;
            }
            .form input:focus{
                box-shadow: 0 1px 0 rgba(0,0,0,0.2);
            }
            .form a{
                font-size: 16px;
                color: #009579;
                text-decoration: none;
            }
            .form a:hover{
                text-decoration: underline;
            }
            .form input.button{
                color: #fff;
                background: #009579;
                font-size: 1.2rem;
                font-weight: 500;
                letter-spacing: 1px;
                margin-top: 1.7rem;
                cursor: pointer;
                transition: 0.4s;
            }
            .form input.button:hover{
                background: #006653;
            }
            .signup{
                font-size: 17px;
                text-align: center;
            }
            .signup label{
                color: #009579;
                cursor: pointer;
            }
            .signup label:hover{
                text-decoration: underline;
            }
        </style>

    </head>
    <body>
        <%@include file="All_component/navbar.jsp"%>



        <div class="container">
            <input type="checkbox" id="check">

            <div class="login form">
                <header>Signup</header>
                <form action="RegisterServlet" method="post">
                    <input type="text" placeholder="Enter your Name" name="name">
                    <input type="email" placeholder="Enter your email" name="email">
                    <input type="password" placeholder="Enter your password" name="password">
                    <input type="submit" class="button" value="Register">
                </form>
                <div class="signup">
                    <span class="signup">Already have an account?
                        <a href="login.jsp">Login</a>

                    </span>
                </div>
            </div>
        </div>


    </body>
</html>

