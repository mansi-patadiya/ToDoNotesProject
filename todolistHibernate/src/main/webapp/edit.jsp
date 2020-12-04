<%@page import="com.mansi.todolist.ToDoMaker"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.help.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
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
	<div class="container">
		<h2>This is an update page.</h2>
		<!-- hibernate coding -->
		<%
			response.setHeader("Cache-Control", "no-cache,no-store,must-validate");
			Session se = FactoryProvider.getFactory().openSession();
				//Transaction transaction = se.beginTransaction();
				int id = Integer.parseInt(request.getParameter("id").trim());
				ToDoMaker todo = (ToDoMaker)se.get(ToDoMaker.class, id);
				
				//transaction.commit();
			se.close();
		%>
		<div class="container">
		<h4 style="text-align:center" padding="5px">Update your Task Here!!</h4>
			
			
		<form action="update" method="post">
			<input name="todoid"  value="<%= todo.getId() %>" type="hidden" />
		  <div class="form-group">
		    <label for="exampleInputEmail1">Enter Your Task Title</label>
		    <input required 
		    type="text" name="title" 
		    class="form-control" 
		    id="exampleInputEmail1" 
		    placeholder="Enter Title"
		    value="<%= todo.getTitle() %>"
		    >
		    
		  </div>
		  <div class="form-group">
		    <label for="exampleInputPassword1">Enter your Discription</label>
		    <textarea required 
		    name="discription" 
		    class="form-control" 
		    id="exampleInputPassword1" 
		    rows="5">
		    <%= todo.getDescription() %>
		    
		    </textarea>
		  </div>
		  
		  <div class="container text-center">
		  	<button type="submit" class="btn btn-primary">Save Tasks</button>
		  </div>
		  
		  
		  
			</form>
		</div>
	</div>
</body>
</html>