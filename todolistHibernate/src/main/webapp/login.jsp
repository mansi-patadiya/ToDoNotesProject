<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="css_script.jsp" %>
</head>
<body>
	<div class="container m-5">
		<div class="container text-center m-3">
			<div class="row ">
				<div class="col">
					<h1 style="color:blue;">Login Page</h1>
				</div>
			</div>
			
		</div>
	
		<form action="login" method="post">
		  <div class="form-group">
		    <label for="exampleInputEmail1">LoginID</label>
		    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="loginid" placeholder="Enter your LoginID">
		    
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1">Password</label>
		    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Enter Password">
		  </div>
		  
		  <button type="submit" class="btn btn-primary">Login</button>
	</form>
	</div>
</body>
</html>