<%@page import="java.sql.*;" %>
<%
PreparedStatement ps;
String name,email,phone,password,confpassword;
name=request.getParameter("t1");
email=request.getParameter("t2");
phone=request.getParameter("t3");
password=request.getParameter("t4");
confpassword=request.getParameter("t5");
int flag=1;
try
{

if(password.equals(confpassword) && name.length()!=0 && email.length()!=0 && password.length()!=0)
{

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	
	Connection con = DriverManager.getConnection("jdbc:odbc:seating");
	ps=con.prepareStatement("insert into st (username,email,phone,password,confpassword)values(?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,email);
	ps.setString(3,phone);
	ps.setString(4,password);
	ps.setString(5,confpassword);
	ps.executeUpdate();
	con.close();
	
	out.println("Sign up successfully. <br><a href='index.jsp'>Please Click to Continue</a>");
	
}
else
{
out.println("incorrect input");
out.println("<script>alert('passwords didn't matched');</script>");
}
}
catch(Exception e)
{
out.println(e);
}

%>
