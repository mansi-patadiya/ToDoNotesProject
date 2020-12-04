<%@page import="com.mansi.todolist.Register"%>
<%@page import="javax.xml.crypto.Data"%>
<%@page import="com.mansi.todolist.ToDoMaker"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.help.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<%@include file="css_script.jsp"%>
	<%@include file="navbar.jsp"
	%>
	<h1 class="text-center">:Your Tasks:</h1>
	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-validate");
		ServletContext context = getServletContext();
		if(context.getAttribute("id")==null)
		{
			response.sendRedirect("signup.jsp");
		}
		else
		{
			int id = (Integer)context.getAttribute("id");
			Session se = FactoryProvider.getFactory().openSession();
			Query query = se.createQuery("from ToDoMaker where register_id=:x");
			query.setParameter("x", id);
			List<ToDoMaker> list1 = query.list();
			System.out.print(list1.size());
			//applicatin scopr
			
			
			for(ToDoMaker data:list1)
			{
		%>
		
		
			
					<div class="card mt-3">
	  					<img class="card-img-top m-2" style="width:100px" src="image/notes.png" alt="Card image cap">
						  <div class="card-body">
						    <h5 class="card-title"><%= data.getTitle() %></h5>
						    <p class="card-text"><%= data.getDescription() %></p>
						    <p class="card-text"><%= data.getAddDate() %></p>
						    <!-- Here we have used url rewriting -->
						    <a href="DeleteServlet?id=<%= data.getId() %>" class="btn btn-danger">Delete</a>
						    <a href="edit.jsp?id=<%= data.getId()  %>" class="btn btn-success">Update</a>
						  </div>
					</div>
		<%
			//System.out.println(data.getDescription() + data.getTitle() + data.getId() + data.getAddDate());
			}
			
			
			se.close();
		}
		%>
		
		
			
	
	
</div>
</body>
</html>