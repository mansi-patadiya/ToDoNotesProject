<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="css_script.jsp"%>
</head>
<body>

	<%@include file="navbar.jsp"
	%>
	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-validate");
		ServletContext context = getServletContext();
		if(context.getAttribute("id")==null)
		{
			response.sendRedirect("signup.jsp");
		}
		else
		{
	%>
			<div class="container">
		<h1 style="text-align:center" padding="5px">Add your Task Here!!</h1>
	
	
				<form action="add" method="post">
				
			  <div class="form-group">
			    <label for="exampleInputEmail1">Enter Your Task Title</label>
			    <input required type="text" name="title" class="form-control" id="exampleInputEmail1" placeholder="Enter Title">
			    
			  </div>
			  <div class="form-group">
			    <label for="exampleInputPassword1">Enter your Discription</label>
			    <textarea required name="discription" class="form-control" id="exampleInputPassword1" rows="3"></textarea>
			  </div>
			  
			  <div class="container text-center">
			  	<button type="submit" class="btn btn-primary">Add</button>
			  </div>
			  
			  
			  
				</form>
			</div>
	<% 		
		}
	%>
	
	
</body>
</html>