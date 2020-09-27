package com.bank;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Model 
{
	private String name;
	private String accNo;
	private String balance;
	private String username;
	private String password;
	private String email;
	Connection con;
	PreparedStatement pstmt;
	private ResultSet res;
	private String ToaccountNo;
	private String Toamount;
	private String Toname;
	private String TophoneNo;
	private String fname;
	private String gender;
	private String DOB;
	private String mobileNo;
	private String state;
	private String nation;
	private String City;
	private String loanType;
	private String nature;
	private String income;
	private String Address;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAccNo() {
		return accNo;
	}
	public void setAccNo(String accNo) {
		this.accNo = accNo;
	}
	public String getBalance() {
		return balance;
	}
	public void setBalance(String balance) {
		this.balance = balance;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getToaccountNo() {
		return ToaccountNo;
	}
	public void setToaccountNo(String ToaccountNo) {
		this.ToaccountNo = ToaccountNo;
	}
	public String getToAmount() {
		return Toamount;
	}
	public void setToAmount(String Toamount) {
		this.Toamount = Toamount;
	}
	
	public String getToName() {
		return Toname;
	}
	public void setToName(String Toname) {
		this.Toname = Toname;
	}
	
	public String TophoneNo() {
		return TophoneNo;
	}
	public void setTophoneNo(String TophoneNo) {
		this.TophoneNo = TophoneNo;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDOB() {
		return DOB;
	}
	public void setDOB(String dOB) {
		DOB = dOB;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getLoanType() {
		return loanType;
	}
	public void setLoanType(String loanType) {
		this.loanType = loanType;
	}
	public String getNature() {
		return nature;
	}
	public void setNature(String nature) {
		this.nature = nature;
	}
	public String getIncome() {
		return income;
	}
	public void setIncome(String income) {
		this.income = income;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	
	public Model()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("driver loaded");
			
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
			System.out.println("connection passed");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public boolean login()
	{
		try
		{
			pstmt = con.prepareStatement("SELECT *FROM bankcustomer WHERE USERNAME=? AND PASSWORD=?");
			pstmt.setString(1,username);
			pstmt.setString(2,password);
			res=pstmt.executeQuery();
			if(res.next()==true)
			{
				accNo=res.getString("ACCNO");
				name=res.getString("NAME");
				return true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean register()
	{
		try
		{
			pstmt=con.prepareStatement("INSERT INTO bankcustomer VALUES(?,?,?,?,?,?)");
			pstmt.setString(1, name);
			pstmt.setString(2, accNo);
			pstmt.setString(3, balance);
			pstmt.setString(4, username);
			pstmt.setString(5, password);
			pstmt.setString(6, email);
			int row=pstmt.executeUpdate();
			if(row==0)
			{
				return false;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return true;
	}
	public boolean Balance()
	{
		try
		{
			pstmt=con.prepareStatement("SELECT * FROM bankcustomer WHERE ACCNO=?");
			pstmt.setString(1, accNo);
			res=pstmt.executeQuery();
			if(res.next()==true)
			{
				balance=res.getString("BALANCE");
				return true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean Transfer()
	{
		try
		{
			pstmt=con.prepareStatement("UPDATE bankcustomer SET BALANCE = BALANCE - ? WHERE ACCNO=?");
			pstmt.setString(1, Toamount);
			pstmt.setString(2, accNo);
			int row=pstmt.executeUpdate();
			pstmt=con.prepareStatement("INSERT INTO statement Values (?,?,?,?,?)");
			pstmt.setString(1, accNo);
			pstmt.setString(2, Toname);
			pstmt.setString(3, ToaccountNo);
			pstmt.setString(4, Toamount);
			pstmt.setString(5, TophoneNo);
			pstmt.executeUpdate();
			if(row==0)
			{
				return false;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return true;
	}
	
	public boolean changePass()
	{
		try
		{
			pstmt=con.prepareStatement("UPDATE bankcustomer SET PASSWORD=? WHERE ACCNO=?");
			pstmt.setString(1, password);
			pstmt.setString(2, accNo);
			int row=pstmt.executeUpdate();
			if(row==0)
			{
				return false;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return true;
	}
	
	public boolean forgetPass()
	{
		try
		{
			pstmt=con.prepareStatement("UPDATE bankcustomer SET PASSWORD=? WHERE EMAIL=?");
			pstmt.setString(1, password);
			pstmt.setString(2, email);
			int row=pstmt.executeUpdate();
			if(row==0)
			{
				return false;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return true;
	}
	
	public ArrayList getstatement()
	{
		ArrayList al=new ArrayList();
		try
		{
			pstmt=con.prepareStatement("SELECT * FROM statement WHERE accNo=?");
			pstmt.setString(1, accNo);
			res=pstmt.executeQuery();
			while(res.next()==true)
			{
				Toamount=res.getString("TOAMOUNT");
				Toname=res.getString("NAME");
				ToaccountNo=res.getString("TOACCOUNTNO");
				TophoneNo=res.getString("MOBILENO");
				al.add(Toamount);
				al.add(Toname);
				al.add(ToaccountNo);
				al.add(TophoneNo);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return al;
	}

	public boolean applyloan()
	{
		try
		{
			pstmt=con.prepareStatement("SELECT *FROM bankcustomer WHERE accNo=?");
			pstmt.setString(1, accNo);
			pstmt.executeQuery();
			pstmt=con.prepareStatement("INSERT INTO loan values (?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1, fname);
			pstmt.setString(2, gender);
			pstmt.setString(3, DOB);
			pstmt.setString(4, email);
			pstmt.setString(5, mobileNo);
			pstmt.setString(6, nation);
			pstmt.setString(7, state);
			pstmt.setString(8, City);
			pstmt.setString(9, loanType);
			pstmt.setString(10, nature);
			pstmt.setString(11, income);
			pstmt.setString(12, Address);
			pstmt.setString(13, accNo);
			int row= pstmt.executeUpdate();
			if(row==0)
			{
				return false;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return true;
	} 
}
