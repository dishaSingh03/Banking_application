package com.bank;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ApplyLoan
 */
@WebServlet("/ApplyLoan")
public class ApplyLoan extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) 
	{
		try
		{
			HttpSession session = request.getSession();
			String accNo=(String) session.getAttribute("accNo");
			String fname=request.getParameter("fname");
			String gender=request.getParameter("gender");
			 String DOB=request.getParameter("DOB");
			String email=request.getParameter("email");
			String mobileNo=request.getParameter("mobileNo");
			String nation=request.getParameter("nation");
			 String state=request.getParameter("state");
			String City=request.getParameter("City");
			String loanType=request.getParameter("loanType");
			String nature=request.getParameter("nature");
			 String income=request.getParameter("income");
			String Address=request.getParameter("Address");
			String accNo1=request.getParameter("accNo");
			Model m=new Model();
			m.setFname(fname);
			m.setGender(gender);
			m.setDOB(DOB);
			m.setEmail(email);
			m.setMobileNo(mobileNo);
			m.setNation(nation);
			m.setState(state);
			m.setCity(City);
			m.setLoanType(loanType);
			m.setNature(nature);
			m.setIncome(income);
			m.setAddress(Address);
			m.setAccNo(accNo1);
			boolean status=m.applyloan();
			if(status==true)
			{
				response.sendRedirect("/BankApp/loanSuccess.jsp");
			}
			else
			{
				response.sendRedirect("/BankApp/loanFail.jsp");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
