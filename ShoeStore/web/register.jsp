<%-- 
    Document   : register
    Created on : Apr 20, 2024, 10:38:13 AM
    Author     : Dell Latitude 7290
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ShoiNet</title>
        <%@include file="All_component/allcss.jsp"%>
    </head>
    <body style="background-color: #f0f1f2;">
        <%@include file="All_component/navbar.jsp"%>
        <div class="container p-2">
        <div class="row">
        <div class="col-md-4 oofset-md-4">
        <div class="card">
        <div class="card-body">
        <h4 class="text-center"><b>Sign Up</h4></b>
                     
<form>
                      
  <div class="form-group">
    <label for="exampleInputEmail1">Enter Full Name </label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required">
    
  </div>
                      
       <div class="form-group">
    <label for="exampleInputEmail1">Email address </label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required">
    
         </div> 
                      
         <div class="form-group">
    <label for="exampleInputPassword1">Phone number</label>
    <input type="number" class="form-control" id="exampleInputPassword1" required="required">
    
  </div>
                   
                      
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" required="required">
    
  </div>
                      
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
    
  </div>
                   
  <button type="submit" class="btn btn-primary">Submit</button>
</form> 
    </div>
    </div>
    </div> 
    </div>
    </div>
  
    </body>
</html>
