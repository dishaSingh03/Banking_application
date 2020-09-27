package com.bank;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet 
{
	protected void service(HttpServletRequest request, HttpServletResponse response)
	{
		// TODO Auto-generated method stub
		try
		{
			
			String name= request.getParameter("name");
			String email=request.getParameter("email");
			String accNo=request.getParameter("accNo");
			String balance=request.getParameter("balance");
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			Model m=new Model();
			m.setName(name);
			m.setEmail(email);
			m.setAccNo(accNo);
			m.setBalance(balance);
			m.setUsername(username);
			m.setPassword(password);
			boolean status=m.register();
			if(status==true)
			{
				response.sendRedirect("/BankApp/registerSuccess.jsp");
			}
			else
			{
				response.sendRedirect("/BankApp/registerFail.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
}
