package com.mansi.todolist;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.help.FactoryProvider;

@WebServlet("/add")
public class SaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public SaveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String Title = request.getParameter("title");
			String Content = request.getParameter("discription");
			//Dependency Injection
			ApplicationContext context = new AnnotationConfigApplicationContext(SpringConfiguration.class);
			ToDoMaker task1 = context.getBean(ToDoMaker.class);
			
			//get id of login through servletcontext
			ServletContext context2 = getServletContext();
			int id = (Integer) context2.getAttribute("id");
			if (context2.getAttribute("id")==null) {
				response.sendRedirect("signup.jsp");
			}
			else 
			{
				Register register = new Register();
				register.setId(id);
				
				System.out.println(id);
				
				task1.setTitle(Title);
				task1.setAddDate(new Date());
				task1.setDescription(Content);
				task1.setRegister(register);
				
				//Hibernate
				Session session = FactoryProvider.getFactory().openSession();
					Transaction transaction = session.beginTransaction();
						session.save(task1);
					transaction.commit();
					
				session.close();
				PrintWriter out = response.getWriter();
				
				out.println("<h1 style='background-color:pink; text-align:center'>Added SuccessFully.</h1>");
				out.println("<a style='text-align=center;' href='ShowAll.jsp'>Show all Task</a>");
				
			} 
		}
			catch (Exception e) {
				System.out.println(e);
			
			}
			
			
			
	}

}
