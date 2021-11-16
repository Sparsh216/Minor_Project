package com.login;
//import com.login.doa.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;

@WebServlet("/login")
public class Login extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		
		//LoginDao dao=new LoginDao();
		
		if((uname.equals("admin")&&pass.equals("admin"))||(uname.equals("student")&&pass.equals("student"))||(uname.equals("teacher")&&pass.equals("teacher")))//dao.check(uname, pass)
		{
			HttpSession session=request.getSession();
			session.setAttribute("username", uname);
			response.sendRedirect("Welcome.jsp");
		}
		else
		{
			response.sendRedirect("login.jsp");
		}
	}

}
