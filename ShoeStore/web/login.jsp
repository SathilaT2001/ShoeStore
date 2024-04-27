<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>ShoiNet: Login</title>
    <%@include file="All_component/allcss.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
<%@include file="All_component/navbar.jsp"%>
<form action="login_validation" method="POST">
    <div class="container">
        <div class="row mt-2">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body">
                        <h4><center><b>Sign In</center></b></h4>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" name="email"
                                   aria-describedby="emailHelp" required="required">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" name="password" id="exampleInputPassword1"
                                   required="required">
                        </div>

                        <div class="text-center">
                            <button type="submit" class="btn btn-primary">Login</button></br>
                            <a href="register.jsp">Create Account</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>
