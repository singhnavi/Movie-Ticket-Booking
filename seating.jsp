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
Seating arrangement 
<br>
<table>
<tr> <td bgcolor=red> Red</td> <td>seats are booked.</td></tr>
</table>
<form action="availability.jsp" method=post name=f1 onSubmit="return test()">
<center>
Screen this way
<br>
<br>
<%
String tm=request.getParameter("r1");
session.setAttribute("tim",tm);
//out.println(session.getAttribute("tim"));

int i=0;
%>
<table width= align = center border=1 cellspacing=8 cellpadding=8 >

<%

Statement st;
PreparedStatement ps;
ResultSet rs;
String movie,city,cinema;
movie=(session.getAttribute("movie")).toString();
city=(session.getAttribute("city")).toString();
cinema=(session.getAttribute("cinema")).toString();

try
{
String aa[]={"A1","A2","A3","A4","A5","A6","A7","A8","A9","A10"};
String bb[]=new String[50];
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:seating");
st=con.createStatement();
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("A1")) 
	{
	out.println("<td bgcolor=red> A1</td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> A1 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");

i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("A2")) 
	{
	out.println("<td bgcolor=red> A2</td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> A2 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");

i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("A3")) 
	{
	out.println("<td bgcolor=red> A3</td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> A3 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("A4")) 
	{
	out.println("<td bgcolor=red> A4 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> A4 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("A5")) 
	{
	out.println("<td bgcolor=red> A5 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> A5 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("A6")) 
	{
	out.println("<td bgcolor=red> A6 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> A6 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("A7")) 
	{
	out.println("<td bgcolor=red> A7 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> A7 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("A8")) 
	{
	out.println("<td bgcolor=red> A8 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> A8 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("A9")) 
	{
	out.println("<td bgcolor=red> A9</td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> A9 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("A10")) 
	{
	out.println("<td bgcolor=red> A10 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> A10 </td>");

//B row
%> </tr> <%
i=0;
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("B1")) 
	{
	out.println("<td bgcolor=red> B1</td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> B1 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");

i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("B2")) 
	{
	out.println("<td bgcolor=red> B2</td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> B2 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");

i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("B3")) 
	{
	out.println("<td bgcolor=red> B3</td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> B3 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("B4")) 
	{
	out.println("<td bgcolor=red> B4 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> B4 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("B5")) 
	{
	out.println("<td bgcolor=red> B5 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> B5 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("B6")) 
	{
	out.println("<td bgcolor=red> B6 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> B6 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("B7")) 
	{
	out.println("<td bgcolor=red> B7 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> B7 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("B8")) 
	{
	out.println("<td bgcolor=red> B8 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> B8 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("B9")) 
	{
	out.println("<td bgcolor=red> B9</td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> B9 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("B10")) 
	{
	out.println("<td bgcolor=red> B10 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> B10 </td>");
//C row
%> </tr> <%
i=0;
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
while(rs.next())
{
	String sit=rs.getString(5);
	
	if(sit.equals("C1")) 
	{
	out.println("<td bgcolor=red> C1</td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> C1 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");

i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("C2")) 
	{
	out.println("<td bgcolor=red> C2</td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> C2 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");

i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("C3")) 
	{
	out.println("<td bgcolor=red> C3</td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> C3 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("C4")) 
	{
	out.println("<td bgcolor=red> C4 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> C4 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("C5")) 
	{
	out.println("<td bgcolor=red> C5 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> C5 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("C6")) 
	{
	out.println("<td bgcolor=red> C6 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> C6 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("C7")) 
	{
	out.println("<td bgcolor=red> C7 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> C7 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("C8")) 
	{
	out.println("<td bgcolor=red> C8 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> C8 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("C9")) 
	{
	out.println("<td bgcolor=red> C9</td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> C9 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("C10")) 
	{
	out.println("<td bgcolor=red> C10 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> C10 </td>");
//D row
%> </tr> <%
i=0;
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("D1")) 
	{
	out.println("<td bgcolor=red> D1</td>");	
	i++;
	}
}
if(i==0)
out.println("<td > D1 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");

i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("D2")) 
	{
	out.println("<td bgcolor=red> D2</td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> D2 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");

i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("D3")) 
	{
	out.println("<td bgcolor=red> D3</td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> D3 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("D4")) 
	{
	out.println("<td bgcolor=red> D4 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> D4 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("D5")) 
	{
	out.println("<td bgcolor=red> D5 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> D5 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("D6")) 
	{
	out.println("<td bgcolor=red> D6 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> D6 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("D7")) 
	{
	out.println("<td bgcolor=red> D7 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> D7 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("D8")) 
	{
	out.println("<td bgcolor=red> D8 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> D8 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("D9")) 
	{
	out.println("<td bgcolor=red> D9</td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> D9 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("D10")) 
	{
	out.println("<td bgcolor=red> D10 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> D10 </td>");
//E row
%> </tr> <%
i=0;
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("E1")) 
	{
	out.println("<td bgcolor=red> E1</td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> E1 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");

i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("E2")) 
	{
	out.println("<td bgcolor=red> E2</td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> E2 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");

i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("E3")) 
	{
	out.println("<td bgcolor=red> E3</td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> E3 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("E4")) 
	{
	out.println("<td bgcolor=red> E4 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> E4 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("E5")) 
	{
	out.println("<td bgcolor=red> E5 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> E5 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("E6")) 
	{
	out.println("<td bgcolor=red> E6 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> E6 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("E7")) 
	{
	out.println("<td bgcolor=red> E7 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> E7 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("E8")) 
	{
	out.println("<td bgcolor=red> E8 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> E8 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("E9")) 
	{
	out.println("<td bgcolor=red> E9</td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> E9 </td>");
rs=st.executeQuery("select * from seat where movie='"+movie+"' and city='"+city+"'and cinema='"+cinema+"' and tym='"+tm+"'");
i=0;
while(rs.next())
{
	String sit=rs.getString(5);
	if(sit.equals("E10")) 
	{
	out.println("<td bgcolor=red> E10 </td>");	
	i++;
	}
}
if(i==0)
out.println("<td bgcolor=white> E10 </td>");

}
catch(Exception e)
{
}


%>

</tr>
</table>
<br>
Enter your seat number 1 <input type=text name=tt1><br>
Enter your seat number 2 <input type=text name=tt2><br>
Enter your seat number 3 <input type=text name=tt3><br>
<br>
<input type=submit value="Select" name=b1>
<br>
</center>

<script>
function check()
{
	int count=0;
	if((f1.tt1.value).length==0)
	count++;
	if((f1.tt2.value).length==0)
	count++;
	if((f1.tt3.value).length==0)
	count++;
	if(count==3)
	return true;	
}
function test()
{
	if(check())
	{
		alert("Please Enter atleat one seat no.");
		return false;
	}
}
</script>
</form>
</body>
</html>
<%
}
%>