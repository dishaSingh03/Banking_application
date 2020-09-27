package com.bank;

import java.io.IOException;import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class Mail1
 */
@WebServlet("/Mail1")
public class Mail1 extends HttpServlet
{
	protected void service(HttpServletRequest request, HttpServletResponse response)
	{
	try
	{
	System.out.println("control in servlet");
	String mail=request.getParameter("email");
	System.out.println(mail);
	HttpSession session=request.getSession(true);
	session.setAttribute("toemail", mail);
	String fromEmail=""; //sender's mail id. Enter your gmail id by activating less secure app access in your gmail account
	String pwd=""; //sender's mail pwd. Password of the above gmail
	String toEmail= "";  //reciever's mail id.

	String subject="Link to reset the password"; // mail subject line
	String msg="http://localhost:8080/BankApp/resetPass.jsp"; //mail body. Your localhost port no. might be different from mine

	//Creating Session Object
	Properties prop = new Properties();
	prop.put("mail.smtp.host", "smtp.gmail.com");
	prop.put("mail.smtp.port", 587);
	prop.put("mail.smtp.auth", "true");
	prop.put("mail.smtp.starttls.enable", "true");

	Session session1 = Session.getDefaultInstance(prop, new javax.mail.Authenticator()
	{
	protected PasswordAuthentication getPasswordAuthentication()
	{
	//sender's mail id and pwd is encapsulated inside "SendersCredentials.java"
	return new PasswordAuthentication(fromEmail, pwd);
	}
	});


	//Composing the Mail
	MimeMessage mesg = new MimeMessage(session1);
	mesg.setFrom(new InternetAddress(fromEmail));
	mesg.addRecipient(Message.RecipientType.TO,new InternetAddress(toEmail));
	mesg.setSubject(subject);  
	mesg.setText(msg);  

	//Sending the Mail
	Transport.send(mesg);
	System.out.println("Mail Sent!!");
	response.sendRedirect("/BankApp/mailsent.jsp");
	}
	catch(Exception e)
	{
	e.printStackTrace();
	}
	}
}
