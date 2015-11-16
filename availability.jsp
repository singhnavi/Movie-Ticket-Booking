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
Availability
<form action="confirm.jsp#4" method=post name=f1>
<%
Statement st;
PreparedStatement ps;
ResultSet rs;
String movie,city,cinema,tm;
String s1,s2,s3;
s1=request.getParameter("tt1");
s2=request.getParameter("tt2");
s3=request.getParameter("tt3");
int flag1,flag2,flag3;
flag1=flag2=flag3=0;
if(s1.length()==0||s1.equals("A1")||s1.equals("A2")||s1.equals("A3")||s1.equals("A4")||s1.equals("A5")||s1.equals("A6")||s1.equals("A7")||s1.equals("A8")||s1.equals("A9")||s1.equals("A10")||s1.equals("B10")||s1.equals("B1")||s1.equals("B2")||s1.equals("B3")||s1.equals("B4")||s1.equals("B5")||s1.equals("B6")||s1.equals("B7")||s1.equals("B8")||s1.equals("B9")||s1.equals("B10")||s1.equals("C1")||s1.equals("C2")||s1.equals("C3")||s1.equals("C4")||s1.equals("C5")||s1.equals("C6")||s1.equals("C7")||s1.equals("C8")||s1.equals("C9")||s1.equals("C10")||s1.equals("D1")||s1.equals("D2")||s1.equals("D3")||s1.equals("D4")||s1.equals("D5")||s1.equals("D6")||s1.equals("D7")||s1.equals("D8")||s1.equals("D9")||s1.equals("D10")||s1.equals("E1")||s1.equals("E2")||s1.equals("E3")||s1.equals("E4")||s1.equals("E5")||s1.equals("E6")||s1.equals("E7")||s1.equals("E8")||s1.equals("E9")||s1.equals("E10"))
flag1=1;
if(s2.length()==0||s2.equals("A1")||s2.equals("A2")||s2.equals("A3")||s2.equals("A4")||s2.equals("A5")||s2.equals("A6")||s2.equals("A7")||s2.equals("A8")||s2.equals("A9")||s2.equals("A10")||s2.equals("B10")||s2.equals("B1")||s2.equals("B2")||s2.equals("B3")||s2.equals("B4")||s2.equals("B5")||s2.equals("B6")||s2.equals("B7")||s2.equals("B8")||s2.equals("B9")||s2.equals("B10")||s2.equals("C1")||s2.equals("C2")||s2.equals("C3")||s2.equals("C4")||s2.equals("C5")||s2.equals("C6")||s2.equals("C7")||s2.equals("C8")||s2.equals("C9")||s2.equals("C10")||s2.equals("D1")||s2.equals("D2")||s2.equals("D3")||s2.equals("D4")||s2.equals("D5")||s2.equals("D6")||s2.equals("D7")||s2.equals("D8")||s2.equals("D9")||s2.equals("D10")||s2.equals("E1")||s2.equals("E2")||s2.equals("E3")||s2.equals("E4")||s2.equals("E5")||s2.equals("E6")||s2.equals("E7")||s2.equals("E8")||s2.equals("E9")||s2.equals("E10"))
flag2=1;
if(s3.length()==0||s3.equals("A1")||s3.equals("A2")||s3.equals("A3")||s3.equals("A4")||s3.equals("A5")||s3.equals("A6")||s3.equals("A7")||s3.equals("A8")||s3.equals("A9")||s3.equals("A10")||s3.equals("B10")||s3.equals("B1")||s3.equals("B2")||s3.equals("B3")||s3.equals("B4")||s3.equals("B5")||s3.equals("B6")||s3.equals("B7")||s3.equals("B8")||s3.equals("B9")||s3.equals("B10")||s3.equals("C1")||s3.equals("C2")||s3.equals("C3")||s3.equals("C4")||s3.equals("C5")||s3.equals("C6")||s3.equals("C7")||s3.equals("C8")||s3.equals("C9")||s3.equals("C10")||s3.equals("D1")||s3.equals("D2")||s3.equals("D3")||s3.equals("D4")||s3.equals("D5")||s3.equals("D6")||s3.equals("D7")||s3.equals("D8")||s3.equals("D9")||s3.equals("D10")||s3.equals("E1")||s3.equals("E2")||s3.equals("E3")||s3.equals("E4")||s3.equals("E5")||s3.equals("E6")||s3.equals("E7")||s3.equals("E8")||s3.equals("E9")||s3.equals("E10"))
flag3=1;
int emptyfg=0;
if(s1.length()==0 && s2.length()==0 && s3.length()==0)
emptyfg=1;
int finalflag=0;
if(flag1==1 && flag2==1 && flag3==1)
{
	if((s1.equals(s2)||s1.equals(s3)||s2.equals(s3))&& ((s1.length()==0 && s2.length()!=0 && s3.length()!=0)||(s1.length()!=0 && s2.length()==0 && s3.length()!=0)||(s1.length()!=0 && s2.length()!=0 && s3.length()==0)))
	finalflag=1;
}

if(emptyfg==0 && finalflag==0 && flag1==1 && flag2==1 && flag3==1)
{
movie=(session.getAttribute("movie")).toString();
city=(session.getAttribute("city")).toString();
cinema=(session.getAttribute("cinema")).toString();
tm=(session.getAttribute("tim")).toString();
int seatcount=0;
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:seating");
st=con.createStatement();
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"' and seat='"+s1+"'");
if(rs.next())
{
//out.println("<script>alert('seat is not available');</script>");
seatcount++;
}

rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"' and seat='"+s2+"'");
if(rs.next())
{
	//out.println("<script>alert('seat is not available');</script>");
	seatcount++;
}
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"' and seat='"+s3+"'");
if(rs.next())
{
	seatcount++;
}
if(seatcount>=1)
{
out.println("<script>alert('seats are not available');</script>");
}
else
{
	session.setAttribute("newcity",city);
	session.setAttribute("newcinema",cinema);
	session.setAttribute("seat1",s1);
	session.setAttribute("seat2",s2);
	session.setAttribute("seat3",s3);

	out.println("seats are available. <br><a href='confirm.jsp#4'>Please Click to Continue</a>");
}
	con.close();
}
catch(Exception e)
{
out.println(e);
}
}
else
{
	out.println("<script>alert('incorrect input');</script>");
}




%>



</center>
</form>
</body>
</html>
<%
}
%>