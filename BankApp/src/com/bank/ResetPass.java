package com.bank;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ResetPass
 */
@WebServlet("/ResetPass")
public class ResetPass extends HttpServlet
{
	protected void service(HttpServletRequest request, HttpServletResponse response)
	{
		try
		{
			String newP=request.getParameter("newP");
			HttpSession session = request.getSession();
			String toEmail=(String) session.getAttribute("toEmail");
			Model m=new Model();
			m.setPassword(newP);
			boolean status=m.forgetPass();
			if(status==true)
			{
				response.sendRedirect("/BankApp/changePass.jsp");
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
