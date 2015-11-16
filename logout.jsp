<%
String user=session.getAttribute("user").toString();
if(user.equals(""))
{
response.sendRedirect("index.jsp");
}
else
{
%>
<%
session.setAttribute("user","");
///out.println("<a href='index.jsp'>Click to Continue</a>");

response.sendRedirect("index.jsp");
%>
<%
}
%>
