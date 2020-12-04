<%@page import="com.mansi.todolist.Register"%>
<%@page import="java.util.List"%>
<%@page import="com.help.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.query.Query"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="css_script.jsp"%>


	<style>
				body{
			    background: -webkit-linear-gradient(left, #3931af, #00c6ff);
			}
			.emp-profile{
			    padding: 3%;
			    margin-top: 3%;
			    margin-bottom: 3%;
			    border-radius: 0.5rem;
			    background: #fff;
			}
			.profile-img{
			    text-align: center;
			}
			.profile-img img{
			    width: 70%;
			    height: 100%;
			}
			.profile-img .file {
			    position: relative;
			    overflow: hidden;
			    margin-top: -20%;
			    width: 70%;
			    border: none;
			    border-radius: 0;
			    font-size: 15px;
			    background: #212529b8;
			}
			.profile-img .file input {
			    position: absolute;
			    opacity: 0;
			    right: 0;
			    top: 0;
			}
			.profile-head h5{
			    color: #333;
			}
			.profile-head h6{
			    color: #0062cc;
			}
			.profile-edit-btn{
			    border: none;
			    border-radius: 1.5rem;
			    width: 70%;
			    padding: 2%;
			    font-weight: 600;
			    color: #6c757d;
			    cursor: pointer;
			}
			.proile-rating{
			    font-size: 12px;
			    color: #818182;
			    margin-top: 5%;
			}
			.proile-rating span{
			    color: #495057;
			    font-size: 15px;
			    font-weight: 600;
			}
			.profile-head .nav-tabs{
			    margin-bottom:5%;
			}
			.profile-head .nav-tabs .nav-link{
			    font-weight:600;
			    border: none;
			}
			.profile-head .nav-tabs .nav-link.active{
			    border: none;
			    border-bottom:2px solid #0062cc;
			}
			.profile-work{
			    padding: 14%;
			    margin-top: -15%;
			}
			.profile-work p{
			    font-size: 12px;
			    color: #818182;
			    font-weight: 600;
			    margin-top: 10%;
			}
			.profile-work a{
			    text-decoration: none;
			    color: #495057;
			    font-weight: 600;
			    font-size: 14px;
			}
			.profile-work ul{
			    list-style: none;
			}
			.profile-tab label{
			    font-weight: 600;
			}
			.profile-tab p{
			    font-weight: 600;
			    color: #0062cc;
			}
	</style>
</head>
<body>
		<div class="container emp-profile">
			
			
            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="image/profile-user.png" alt=""/>
                            
                        </div>
                    </div>
                    <%
                    response.setHeader("Cache-Control", "no-cache,no-store,must-validate");
                              ServletContext context = getServletContext();
                              int id = (Integer)context.getAttribute("id");
                              Session session2 = FactoryProvider.getFactory().openSession();
                              String query = "from Register where id=:x";
                              Query query1 = session2.createQuery(query);
                              query1.setParameter("x", id);
                                            	
                              Register r = (Register)query1.uniqueResult();
                              session2.close();
                                            	
                    %>
                    <div class="col-md-6">
                        <div class="profile-head">
                                    <h5>
                                        <%= r.getFullname()  %>
                                    </h5>
                                    <h6>
                                        <%= r.getLoginid() %>
                                    </h6>
                                    
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                                </li>
                                
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-2">
                    	<a class="nav-link mr-auto" href="logout">
    						<img alt="logout image" height="35" src="image/logout.png">
    					</a>
                    </div>
                    
                </div>
                <div class="row">
                    <div class="col-md-4">
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>User Id</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%= r.getId() %></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Name</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%= r.getFullname() %></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Email</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%= r.getEmail() %></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Phone</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%= r.getPhoneno() %></p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Login Id</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p><%= r.getLoginid() %></p>
                                            </div>
                                        </div>
                           		 </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>           
        </div>
</body>
</html>