package com.bank;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class changePass
 */
@WebServlet("/changePass")
public class changePass extends HttpServlet 
{
	protected void service(HttpServletRequest request, HttpServletResponse response) 
	{
		try
		{
			String newP = request.getParameter("newP");
			HttpSession session = request.getSession();
			String accNo=(String) session.getAttribute("accNo");
			Model m=new Model();
			m.setAccNo(accNo);
			m.setPassword(newP);
			boolean status=m.changePass();
			if(status==true)
			{
				response.sendRedirect("/BankApp/changePSuccess.jsp");
			}
			else
			{
				response.sendRedirect("/BankApp/changePFail.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
}
