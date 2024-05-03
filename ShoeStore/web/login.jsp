<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>ShoeNet:login</title>
        <%@include file="All_component/allcss.jsp"%>
        

    </head>
    <body style="background-color: #f0f1f2;" >
         <%@include file="All_component/navbar.jsp"%>
         
         <div class="container">

             <div class="box">
                 
                 <h1>
                     Login Account
                 </h1>
                 <form action="LoginServlet" method="post">
                     <p>
                         Username
                     </p>
                     <input type="text"placeholder="password" name="email" required>
                     <p>
                         Password 
                     </p>
                     <input type="password" placeholder="password" name="password" required>
                     <input type="submit" value="Login">
                     <a href="registration.jsp">Create New Account</a>
                 </form>
             </div>
         </div>             
        </body>
</html>
