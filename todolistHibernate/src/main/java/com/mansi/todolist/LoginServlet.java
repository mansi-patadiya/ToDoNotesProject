package com.mansi.todolist;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.query.*;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.help.FactoryProvider;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public LoginServlet() {
        super();
        
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String loginid = request.getParameter("loginid");
		String password = request.getParameter("password");
		int flag=0;
		Session se = FactoryProvider.getFactory().openSession();
			Transaction transaction = se.beginTransaction();
				String query = "from Register";
				Query query2 = se.createQuery(query);
				List<Register> list = query2.list(); 
				for (Register register : list) {
					
					if(loginid.equals(register.getLoginid()) && password.equals(register.getPassword()))
					{
						int id1 = register.getId();
						ServletContext context = getServletContext();
						context.setAttribute("id", id1);
						flag=1;
					}
				}
			transaction.commit();
			//response.sendRedirect("AddTaskjsp.jsp");
			if(flag==0)
			{
				response.sendRedirect("login.jsp");
			}
			else 
			{
				RequestDispatcher dd=request.getRequestDispatcher("AddTaskjsp.jsp");
				dd.forward(request, response);
			}
		
		
		
		se.close();
		
	}

}
