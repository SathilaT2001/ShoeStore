<%-- 
    Document   : contactUs
    Created on : 3 May 2024, 13:41:06
    Author     : Nirmani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact us Page</title>
        <%@include file="All_component/allcss.jsp"%>
        
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.4.2/css/fontawesome.min.css" integrity="sha384-BY+fdrpOd3gfeRvTSMT+VUZmA728cfF9Z2G42xpaRkUGu2i3DyzpTURDo5A6CaLK" crossorigin="anonymous">
    <style type="text/css">
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght;300;400;500;600;700;900&display=swap');

        *
        {        
            margin: 0;
            padding: 0;
            box-sizing:border-box;
            font-family: 'Poppins', sans-serif;
        }
        
        .contact
        {
            position:relative;
            min-height: 100vh;
            padding: 50px 100px;
            display:flex;
            justify-content:center;
            align-items:center;
            flex-direction:column;
            background: url(img/bg.jpeg);
            background-size: cover;
        }
        .contact .content
        {
            max-width:800px;
            text-align:center;
        }
        .contact .content h2
        {
            font-size:36px;
            font-weight:500;
            color:white;
        }
        .contact .content p
        {
            font-weight:300;
            color:white;
        }
        .container
        {
            width:100%;
            display:flex;
            justify-content:center;
            align-items:center;
            margin-top:30px;  
        }
        .container .contactInfo
        {
            width:50%;
            display:flex;
            flex-direction:column;
            
        }
        
        .box{
            padding-top: 1rem;
        }
        .container .contactInfo .box .icon
        {
            width:40px;
            height:40px;
            background:#fff;
            display:flex;
            justify-content:center;
            align-items:center;
            border-radius:50px;
            font-size:22px;
            
        }
        .container .contactInfo .box .text
        {
            display:flex;
            margin-left:20px;
            font-size:16px;
            color:white;
            flex-direction:column;
            font-weight:300;
        }
        .container .contactInfo .box .text h3
        {
            font-weight:500;
            color:#00bcd4;
        }
        .contactForm
        {
            width:50%;
            padding:40px;
            background:#fff;
            
        }
        .contactForm h2
        {
            font-size:30px;
            color:#333;
            font-weight:500;
        }
        .contactForm .inputBox
        {
            position:relative;
            width:100%;
            margin-top:10px;
        }
        .contactForm .inputBox input,
        .contactForm .inputBox textarea
        {
            width:100%;
            padding:5px 0;
            font-size:15px;
            margin:10px 0;
            border:none;
            border-bottom:2px solid #333;
            outline:none;
            resize:none;
        }
        .contactForm .inputBox span
        {
            position:absolute;
            left: 0;
            padding:5px 0;
            font-size:16px;
            margin:10px 0;
            pointer-events:none;
            transition:0.5s;
            color:#666;
        }
        .contactForm .inputBox input:focus ~span,
        .contactForm .inputBox input:valid ~span,
        .contactForm .inputBox textarea:focus ~span,
        .contactForm .inputBox textarea:valid ~span
        {
            color:#e91e63;
            font-size:12px;
            transform:translateY(-20px);
        }
        .contactForm .inputBox input[type="submit"]
        {
            width:100px;
            background:#00bcd4;
            color:#fff;
            border:none;
            cursor:pointer;
            padding:10px;
            font-size:18px;
        }
        .btn{
            font-size: 1.3rem;
        }
        @media (max-width:991px)
        {
            .contact
            {
                padding:50px;
            }
            .container
            {
                flex-direction:column;
            }
            .container .contactInfo
            {
                margin-bottom:40px;
            }
            .container .contactInfo,
            .contactForm
            {
                width:100%;
            }
        }
    </style>   
</head>
<body> 
    <%@include file="All_component/navbar.jsp"%>
    <section class="contact">
        <div class="content">
            <h2>Contact Us</h2>
            
        </div>
        <div class="container">
            <div class="contactInfo">
                <div class="box">
                    <div class="icon"><i class="fa fa-map-marker" aria-hidden="true"></i></div>
                    <div class="text">
                        <h3>Address</h3>
                        <p>4671 Sugar Camp Road<br>Kandy<br>55453</p>
                    </div>
                </div>
                <div class="box">
                    <div class="icon"><i class="fa fa-phone" aria-hidden="true"></i></div>
                    <div class="text">
                        <h3>Phone</h3>
                        <p>0812302030</p>
                    </div>
                </div>
                <div class="box">
                    <div class="icon"><i class="fa fa-envelope" aria-hidden="true"></i></div>
                    <div class="text">
                        <h3>Email</h3>
                        <p>shoestore@gmail.com</p>
                    </div>
                </div>
            </div>
            <div class="contactForm">
                <form action="contact" method="post"> 
                    <h2>Send Message</h2> 
                    <div class="inputBox"> 
                        <input type="text" name="name" required="required"> 
                        <span>Full Name</span> 
                    </div>
                    <div class="inputBox"> 
                        <input type="text" name="email" required="required"> 
                        <span>Email</span> 
                    </div>        
                    <div class="inputBox"> 
                        <textarea name="message"required="required"></textarea>
                        <span>Type Your Message...</span> 
                    </div>
                    <div class="input box"> 
                        <input class="btn btn-block btn-success submit-button" type="submit" name="" value="Send"> 
                    </div>
                </form>
            </div>
        </div>
    </section>
    <footer>
            <%@include file="All_component/footer.jsp" %>
        </footer> 
</body>
</html>
