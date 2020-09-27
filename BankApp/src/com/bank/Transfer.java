package com.bank;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Transfer
 */
@WebServlet("/Transfer")
public class Transfer extends HttpServlet
{
	protected void service(HttpServletRequest request, HttpServletResponse response)
	 {
		try
		{
		HttpSession session = request.getSession();
		String accNo=(String) session.getAttribute("accNo");
		String ToaccountNo=request.getParameter("ToaccountNo");
		String Toamount=request.getParameter("Toamount");
		 String Toname=request.getParameter("Toname");
		String TophoneNo=request.getParameter("TophoneNo"); 
		Model m=new Model();
		m.setAccNo(accNo);
		m.setToAmount(Toamount);
		m.setToaccountNo(ToaccountNo);
		m.setToName(Toname);
		m.setTophoneNo(TophoneNo);
		boolean status=m.Transfer();
		if(status==true)
		{
			response.sendRedirect("/BankApp/transferSuccess.jsp");
		}
		else
		{
			response.sendRedirect("/BankApp/transferFail.jsp");
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	 }
}
