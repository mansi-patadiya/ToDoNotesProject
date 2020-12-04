package com.mansi.todolist;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.help.FactoryProvider;

//when we create new->servlet there is no need to write
//@webServlet annonatation cause automatic mapping in web.xml
@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DeleteServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try 
		{
			//Hibernate
			Session session = FactoryProvider.getFactory().openSession();
				Transaction transaction = session.beginTransaction();
				int Todo_id = Integer.parseInt(request.getParameter("id"));
				ToDoMaker taskDoMaker = session.get(ToDoMaker.class, Todo_id);
				session.delete(taskDoMaker);
				transaction.commit();
			session.close();
			response.sendRedirect("ShowAll.jsp");
		} catch (Exception e) 
		{
			System.out.println(e);
		}
	}

	
}
