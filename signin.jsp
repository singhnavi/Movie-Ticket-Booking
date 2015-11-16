
<%@page import="java.sql.*;" %>
<html>
<body>

<%

Statement ps;
ResultSet rs;
String useremail=request.getParameter("t1");
String password=request.getParameter("t2");
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:seating");
	ps=con.createStatement();
	rs=ps.executeQuery("select * from st where email='"+useremail+"' and password='"+password+"'");
	int flag=0;
	while(rs.next())
	{
		///out.println("congrats found");
		flag=1;
	}
	if(flag==0)
	{
		out.println("<script>alert('incorrect username or password');</script>");
		//out.println("incorrect username or password");
	}
		else
		{
		session.setAttribute("user",useremail);
		rs=ps.executeQuery("select * from st where email='"+useremail+"' and password='"+password+"'");
		while(rs.next())
		out.println("Hello "+rs.getString(1)+" <br>You are Successfully logged in  <br><a href='city.jsp#3'>Please Click to Continue</a>");
		}
	con.close();
}
catch(Exception e)
{
	out.println("error");
}
%>