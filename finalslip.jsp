<%@page import="java.sql.*;" %>

<%
String user=session.getAttribute("user").toString();
if(user.equals(""))
{
response.sendRedirect("index.jsp");
}
else
{

%>



<html>
<body>
<%
String atmno=request.getParameter("tx1");
String atmpin=request.getParameter("tx2");
if(atmno!=null && atmpin!=null)
{
PreparedStatement ps;
String movie,city,cinema,tm;
String s1,s2,s3;
s1=(session.getAttribute("seat1")).toString();
s2=(session.getAttribute("seat2")).toString();
s3=(session.getAttribute("seat3")).toString();

movie=(session.getAttribute("movie")).toString();
city=(session.getAttribute("newcity")).toString();
cinema=(session.getAttribute("newcinema")).toString();
tm=(session.getAttribute("tim")).toString();
int seatcount=0;
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:seating");
if(s1.length()!=0)
{
	ps=con.prepareStatement("insert into seat(movie,city,cinema,tym,seat) values(?,?,?,?,?)");
	ps.setString(1,movie);
	ps.setString(2,city);
	ps.setString(3,cinema);
	ps.setString(4,tm);
	ps.setString(5,s1);
	ps.executeUpdate();
	
}
if(s2.length()!=0)
{	
	ps=con.prepareStatement("insert into seat(movie,city,cinema,tym,seat) values(?,?,?,?,?)");
	ps.setString(1,movie);
	ps.setString(2,city);
	ps.setString(3,cinema);
	ps.setString(4,tm);
	ps.setString(5,s2);
	ps.executeUpdate();
}
if(s3.length()!=0)
{	
	ps=con.prepareStatement("insert into seat(movie,city,cinema,tym,seat) values(?,?,?,?,?)");
	ps.setString(1,movie);
	ps.setString(2,city);
	ps.setString(3,cinema);
	ps.setString(4,tm);
	ps.setString(5,s3);
	ps.executeUpdate();
}
}
catch(Exception e)
{
out.println("exception : "+e);
}

%>
Congratulations your seats are booked.
<%
out.println("<br><a href='logout.jsp'>Logout</a>");


}
else
{
out.println("seats are not booked");
}
%>

</body>
</html>

<%
}
%>
