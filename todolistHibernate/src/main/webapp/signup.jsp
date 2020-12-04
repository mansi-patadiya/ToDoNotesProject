<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	.divider-text {
	    position: relative;
	    text-align: center;
	    margin-top: 15px;
	    margin-bottom: 15px;
		}
		.divider-text span {
		    padding: 7px;
		    font-size: 12px;
		    position: relative;   
		    z-index: 2;
		}
		.divider-text:after {
		    content: "";
		    position: absolute;
		    width: 100%;
		    border-bottom: 1px solid #ddd;
		    top: 55%;
		    left: 0;
		    z-index: 1;
		}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="css_script.jsp" %>
</head>
<body>
	<div class="container">
		<div class="container text-center m-5">
			<div class="row">
				<div class="col">
					<h1 style="color:blue;">SignUP Form</h1>
				</div>
			</div>
		</div>
				
		
		
		<div class="container">
		
		
		
		
		
		
		<div class="card bg-light">
		<article class="card-body mx-auto" style="max-width: 400px;">
			<h4 class="card-title mt-3 text-center">Create Account</h4>
			
			
			<form action="signIn" method="post">
			<div class="form-group input-group">
				<div class="input-group-prepend">
				    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
				 </div>
		        <input name="fullname" class="form-control" placeholder="Full name" type="text">
		    </div> <!-- form-group// -->
		    <div class="form-group input-group">
		    	<div class="input-group-prepend">
				    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
				 </div>
		        <input name="email" class="form-control" placeholder="Email address" type="email">
		    </div> <!-- form-group// -->
		    <div class="form-group input-group">
		    	<div class="input-group-prepend">
				    <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
				</div>
				
		    	<input name="phonenumber" class="form-control" placeholder="Phone number" type="text">
		    </div> <!-- form-group// -->
		    <div class="form-group input-group">
		    	<input class="form-control" placeholder="Enter Your LoginId to use" type="text" name="loginid">
				
			</div> <!-- form-group end.// -->
		    <div class="form-group input-group">
		    	<div class="input-group-prepend">
				    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
				</div>
		        <input name="pass" class="form-control" placeholder="Create password for login" type="password">
		    </div> <!-- form-group// -->
		    <div class="form-group input-group">
		    	
				<!--  <div class="input-group-prepend">
				    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
				</div>
				<input name="repass" class="form-control" placeholder="Repeat password" type="password">
				-->
		        
		    </div> <!-- form-group// -->                                      
		    <div class="form-group">
		        <button type="submit" class="btn btn-primary btn-block"> Create Account  </button>
		    </div> <!-- form-group// -->    
		    
		    <p class="text-center">Have an account? <a href="login.jsp">Log In</a> </p>                                                                 
		</form>
		
	</div>
</body>
</html>