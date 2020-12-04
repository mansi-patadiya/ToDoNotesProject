package com.mansi.todolist;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.help.FactoryProvider;

@WebServlet("/signIn")
public class SignInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SignInServlet() {
        super();
       
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fullnamString = request.getParameter("fullname");
		String emailString = request.getParameter("email");
		long phone = Long.parseLong(request.getParameter("phonenumber"));
		String loginid = request.getParameter("loginid");
		String password = request.getParameter("pass");
		String repassword = request.getParameter("repass");
		
		PrintWriter outPrintWriter = response.getWriter();
		//outPrintWriter.print(fullnamString+loginid);
		
		ApplicationContext context = new AnnotationConfigApplicationContext(SpringConfiguration.class);
		Register register1 = context.getBean(Register.class);
		
		register1.setFullname(fullnamString);
		register1.setEmail(emailString);
		register1.setLoginid(loginid);
		register1.setPassword(password);
		register1.setPhoneno(phone);
		
		Session se = FactoryProvider.getFactory().openSession();
			Transaction transaction = se.beginTransaction();
				se.save(register1);
			transaction.commit();
		se.close();
		response.sendRedirect("login.jsp");
	}

}
