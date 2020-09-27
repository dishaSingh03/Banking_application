package com.bank;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet
{
	protected void service(HttpServletRequest request, HttpServletResponse response)
	{
		try
		{
			String username=request.getParameter("Username");
			String password=request.getParameter("Password");
			Model m=new Model();
			m.setUsername(username);
			m.setPassword(password);
			boolean status=m.login();
			if(status==true)
			{
				String accNo=m.getAccNo();
				String name=m.getName();
				HttpSession session=request.getSession(true);
				session.setAttribute("accNo", accNo);
				session.setAttribute("name", name);
				response.sendRedirect("/BankApp/loginSuccess.jsp");
			}
			
			else
			{
				response.sendRedirect("/BankApp/loginFail.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}


}
