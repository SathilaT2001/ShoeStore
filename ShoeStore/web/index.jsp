<%-- 
    Document   : index
    Created on : Apr 9, 2024, 9:53:15 AM
    Author     : sathi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
    <head>
        <title>TO DO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
       
        <%@include file="All_component/allcss.jsp" %>
         
        
        
    </head>
    <body class="body-change">
        <%@include file="All_component/navbar.jsp" %>
        
      
    <!-- home section starts -->  
    
    <section class="home" id="home">
        
        <div class="row">
            <div class="content">
                <h3> upto 50% off</h3>
                <p>Step into savings with our incredible sale! 
                    Enjoy discounts of up to 50% off on a wide range of stylish shoes. 
                    Upgrade your footwear collection for less today!
                </p>
                
                <a href="#" class="sbtn">shop now</a>
        </div>
            

            <div class="shoe-slider">
                <div class="wraper">
                <a href="#"><img src="img/1.jpeg"  alt="" class="cpic"></a>
                <a href="#"><img src="img/2.jpeg"  alt="" class="cpic"></a>
                <a href="#"><img src="img/3.jpeg"  alt="" class="cpic"></a>
                <a href="#"><img src="img/4.jpeg"  alt="" class="cpic"></a>
                <a href="#"><img src="img/5.jpeg"  alt="" class="cpic"></a>
                <a href="#"><img src="img/6.jpeg"  alt="" class="cpic"></a>
                </div>
       
            </div>
    </section>
        
    <!-- Icons -->
    
    <section class="icons-container1">
        
        <div class="iconss">
            <i class="fas fa-plane"></i>
            <h4>free shipping</h4>
            <p class="ppp">order over $40</p>
        </div>
        
        <div class="iconss">
            <i class="fas fa-lock"></i>
            <h4>secure payment</h4>
            <p class="ppp">100% secure payment</p>
        </div>
        
        <div class="iconss">
            <i class="fas fa-redo-alt"></i>
            <h4>easy returns</h4>
            <p class="ppp">10 days returns</p>
        </div>
        
        <div class="iconss">
            <i class="fas fa-headset"></i>
            <h4>24/7 support</h4>
            <p class="ppp">call us anytime</p>
        </div>
        
    </section>
       <footer>
            <%@include file="All_component/footer.jsp" %>
     </footer>   

    </body>
</html>
