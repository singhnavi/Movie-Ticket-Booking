<%@page language="java" session="true" %>
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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Book My Movie </title>
<link href="style.css" rel="stylesheet" type="text/css" />

    <script src="js/jquery-1.2.1.pack.js" type="text/javascript"></script>
    <script src="js/jquery-easing.1.2.pack.js" type="text/javascript"></script>
    <script src="js/jquery-easing-compatibility.1.2.pack.js" type="text/javascript"></script>
    <script src="js/coda-slider.1.1.1.pack.js" type="text/javascript"></script>
    
    <script type="text/javascript">
    jQuery(window).bind("load", function() {
    jQuery("div#slider1").codaSlider()
    // jQuery("div#slider2").codaSlider()
    // etc, etc. Beware of cross-linking difficulties if using multiple sliders on one page.
    });
    </script>
    
</head>
<body>

<div id="site_title_bar_wrapper">

	<div id="site_title_bar">
    
    	<div id="site_title">
            <h1><a href="#" target="_parent">
               <!-- <img src="images/logo.png" alt="logo" width="200" height="40" />-->
                <span><h1 style="color:black;margin-top:20px;">Book My Movie</h1></span>
            </a></h1>
      	</div>
        
        <div id="twitter"><a href="#"></a></div>
      
	</div> <!-- end of site_title_bar -->
</div> <!-- end of site_title_bar_wrapper -->

<div id="content_wrapper">

  <div id="content">

    <!-- start of slider -->
    
<div class="slider-wrap">
	<div id="slider1" class="csw">
		<div class="panelContainer">
		
			
            
			
            
			<div class="panel" title="Confirmation">
				<div class="wrapper">
					
                    <h2>Confirmation and Payment</h2>
						
					<form action="finalslip.jsp" name="f1" method="post" onSubmit="return test()">
					<h4>
					<% out.println("<table align=right><tr><td>"+session.getAttribute("user")+"</td></tr></table>");%>
					<table>
					<tr><td>Movie Name:</td><td> <%out.println(session.getAttribute("movie"));%> </td></tr>
					<tr><td>City:</td><td> <%out.println(session.getAttribute("newcity")); %> </td></tr>
					<tr><td>Cinema:</td><td> <%out.println(session.getAttribute("newcinema")); %> </td></tr>
 					<tr><td>Time:</td><td> <%out.println(session.getAttribute("tim")); %> </td></tr>
					<tr><td>Seats:</td><td> <%out.println(session.getAttribute("seat1")); out.println(session.getAttribute("seat2"));out.println(session.getAttribute("seat3")); %> </td></tr>
					<tr><td><% 
					String sss1=session.getAttribute("seat1").toString();
					String sss2=session.getAttribute("seat2").toString();
					String sss3=session.getAttribute("seat3").toString();
					int count=0;
					if(sss1.length()!=0)
					count++;
					if(sss2.length()!=0)
					count++;
					if(sss3.length()!=0)
					count++;
					out.println("Payment:"); %> </td> <td> <% out.println("(150 * "+count+") = "+150*count + ".00 rupees only");
					%></td></tr>
					<tr><td>ATM card no.:</td><td> <input type=text name=tx1 size=20> </td></tr>
					<tr><td>Pin no.: </td><td><input type=password name=tx2 size=20> </td></tr>
					</table>
					</h4>
					<input type=submit value= "Done" name=b1  /></form>
					<br>
					<script>
						function empty(a)
						{
						b=a.length;
						if(b==0)
						{
						return true;
						}
						}
						function num(a)
						{
						return isNaN(a-0);
						}
						function nodigitpin(a)
						{
						c=a.length;
						if(c!=4)
						return true;
						}
						function nodigitatm(a)
						{
						c=a.length;
						if(c!=16)
						return true;
						}
						function test()
						{
						if(empty(f1.tx1.value))
						{
						alert("Please Enter your atm no.");
						return false;
						}

						else if(empty(f1.tx2.value))
						{
						alert("Please enter your pin");
						return false;
						}
						else if(num(f1.tx1.value))
						{
						alert("Please enter numbers only");
						return false;
						}
						else if(num(f1.tx2.value))
						{
						alert("Please enter numbers only");
						return false;
						}
						else if(nodigitatm(f1.tx1.value))
						{
						alert("Please enter 16 digits atm no.");
						return false;
						}
						else if(nodigitpin(f1.tx2.value))
						{
						alert("Please enter 4 digit pin");
						return false;
						}
						
						}
						
						</script>







				   
                    <div class="cleaner"></div>
			
				</div>
			</div>
			<script>
			
			
			</script>
			
			
			
		</div><!-- .panelContainer -->
	</div><!-- #slider1 -->
</div><!-- .slider-wrap -->

<p id="cross-links" style="width:0px; height: 0px; font-size:0; overflow: hidden;">
	Same-page cross-link controls:<br />
	<a href="#1" class="cross-link">Page 1</a> | <a href="#2" class="cross-link">Page 2</a> | <a href="#3" class="cross-link">Page 3</a> | <a href="#4" class="cross-link">Page 4</a> | <a href="#5" class="cross-link">Page 5</a>
</p>
   
    <!-- end of slider -->
      
	</div> 
	<!-- end of content -->
</div> <!-- end of content_wrapper -->

<div id="footer_wrapper">

	<div id="footer">
	   
        
	</div> <!-- end of footer -->
</div> <!-- end of footer_wrapper -->

</body>
</html>
<%
}
%>
