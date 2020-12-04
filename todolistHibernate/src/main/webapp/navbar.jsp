<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="index.jsp">ToDoMaker</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="AddTaskjsp.jsp">AddTask</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link disabled" href="ShowAll.jsp">ShowTask</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
    	<ul class="navbar-nav mr-auto">
    	<%
    		ServletContext context1 = getServletContext();
	    	if(context1.getAttribute("id")==null)
			{
    	%>
    		<li class="nav-item active">
    			<a class="nav-link" href="signup.jsp">SignIn</a>
    		</li>
    		<li class="nav-item active">
    			<a class="nav-link" href="login.jsp">Login</a>
    		</li>
    	</ul>
    	<%
			}
	    	else
	    	{
	    %>
	    		
    			<ul class="navbar-nav ml-auto nav-flex-icons">
    				<li class="nav-item active">
    				<a class="nav-link" href="logout">LogOut</a>
    			</li>
			      	<li class="nav-item avatar">
			        <a class="nav-link p-0" href="profile.jsp">
			          <img src="image/profile-user.png" class="rounded-circle z-depth-0"
			            alt="avatar image" height="35">
			        </a>
			      </li>
    			</ul>
	    <% 	
	    	}
    	%>
    	
    </form>
    <!--  
    	<form class="form-inline my-2 my-lg-0">
      		<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      		<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    	</form>
    -->
    
  </div>
</nav>