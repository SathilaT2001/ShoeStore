<%-- 
    Document   : welcome
    Created on : May 1, 2024, 4:45:37 PM
    Author     : vinumi
--%>

<%@page import="newpackage.User"%>
<%@page contentType="text/html"  pageEncoding="UTF-8"%>
<% User user = (User) session.getAttribute("loguser");
    if (user==null){
        response.sendRedirect("index.jsp");
    }
 %>
 <!DOCTYPE html>
 <html>
     <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>JSP page</title>
     </head>
     <body>
         <h1>
             Welcome, <%= user.getName()%></h1> 
             
         <h3>
                 
             Your Account ID: <%=user.getId()%></h3>
             
         <h3>
                 
             Your Email: <%=user.getEmail()%></h3>
                     
         <h3>
                 
             Your Password: <%=user.getPassword()%></h3> 
             
             <button><a href="LogoutServlet">Log Out</a></button>
         
     </body>
</html>
