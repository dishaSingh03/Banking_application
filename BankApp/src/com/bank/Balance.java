package com.bank;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Balance
 */
@WebServlet("/Balance")
public class Balance extends HttpServlet
{
	protected void service(HttpServletRequest request, HttpServletResponse response)  
	{
		try
		{
			HttpSession session = request.getSession();
			String accNo= (String) session.getAttribute("accNo");
			Model m=new Model();
			m.setAccNo(accNo);
			boolean status=m.Balance();
			if(status==true)
			{
				String balance=m.getBalance();
				session.setAttribute("balance", balance);
				response.sendRedirect("/BankApp/BalSuccess.jsp");
			}
			else
			{
				response.sendRedirect("/BankApp/BalFail.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}	
}
