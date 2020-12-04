package com.mansi.todolist;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.help.FactoryProvider;

@WebServlet("/update")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UpdateServlet() {
        super(); 
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			Session session = FactoryProvider.getFactory().openSession();
				Transaction transaction = session.beginTransaction();
					String title = request.getParameter("title");
					String Discription = request.getParameter("discription").trim();
					int id =Integer.parseInt(request.getParameter("todoid"));
					
					ToDoMaker toDoMaker = (ToDoMaker)session.get(ToDoMaker.class, id);
					
					toDoMaker.setAddDate(new Date());
					toDoMaker.setDescription(Discription);
					toDoMaker.setTitle(title);
					
					
				transaction.commit();
			session.close();
			response.sendRedirect("ShowAll.jsp");
		}
		catch (Exception e) {
			System.out.println(e);
		}
	}

}
