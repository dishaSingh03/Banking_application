package com.bank;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class GetStatement
 */
@WebServlet("/GetStatement")
public class GetStatement extends HttpServlet
{
	protected void service(HttpServletRequest request, HttpServletResponse response) 
	{
		try
		{
			
			HttpSession session=request.getSession();
			String accNo= (String) session.getAttribute("accNo");
			Model m=new Model();
			m.setAccNo(accNo);
			ArrayList al=new ArrayList();
			al=m.getstatement();
			session.setAttribute("al", al);
			System.out.println(al);
			String arr1=(String) al.get(0);
			System.out.println(arr1);
			if(al.isEmpty()==true)
			{
				response.sendRedirect("/BankApp/GetStateFail.jsp");
			}
			else
			{
				response.sendRedirect("/BankApp/GetStatement.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	

}
