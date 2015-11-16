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
		
			<div class="panel" title="Home">
				<div class="wrapper">
                
					<h2>Welcome to Book My Movie</h2>
                    
					<div class="image_wrapper fl_image">
	                    <a href="#" target="_parent"><img src="images/image_01.jpg" alt="image 1" /></a>
                    </div>
                    
                <p><h4><br> Book my movie is India's biggest online movie ticketing brand. The website caters to ticket sales for movies, trailors via the online platform. Launched nin 2015, it is headquartered in Patiala, Punjab. It also has offices in New Delhi, Bangalore, Hyderabad, Chennai and Kolkata. It reaches about 800 to 900 cinemas in 200 cities and towns.
				<br>
				<br>
				<br>
				<br>
				</h4>
				</p>
                
                <div class="image_wrapper fr_image">
                     <img src="images/image_09.jpg" alt="image 9"/>
                </div>
                <p><h4>BookMyMovie is an online ticketing facility like Movietickets.com and Ticketmaster.com. BookMyShow took the primary services provided by these two websites and consolidated it into one website for movies, trailors.</h4></p>
                	
					                    
                  <div class="cleaner_h20"></div>
                    
                    
					<p><a href="#5" class="cross-link" title="Go to Page 5">&#171; Previous</a> | <a href="#2" class="cross-link" title="Go to Page 2">Next &#187;</a></p>
				</div>
			</div>
			<div class="panel" title="Movies">
				<div class="wrapper">
					
            		<h2>Current Movies</h2>

                    <div class="portfolio_box margin_r50">
                    
                        <h3>Movie 1</h3>
                        <div class="port_img">
						
                            <a href="signin1.jsp#5?a='Zindgi na milegi dubara'" target="_parent"><img src="images/znmd.jpg" alt="project 1" /></a>
                        </div>
                        
                        
                        <div class="cleaner"></div>
                    </div>
                    
                    <div class="portfolio_box margin_r50">

                        <h3>Movie 2</h3>
                        
                        <div class="port_img">
                            <a href="signin2.jsp#5?a=harry potter" target="_parent" ><img src="images/harrypotter.jpg" alt="project 2" /></a>
                        </div>
                        
                        
                        <div class="cleaner"></div>                                               
                    </div>
                    
                    <div class="portfolio_box">

                        <h3>Movie 3</h3>
                        
                        <div class="port_img">
                            <a href="signin3.jsp#5?a=eclipse" target="_parent" ><img src="images/eclipse.jpg" alt="project 2" /></a>
                        </div>
                        
                        <div class="cleaner"></div>                                               
                    </div>
                    <script>
					function msg()
					{
					alert("you are not Signin, Please Signin First");
					
				}
					</script>
                                       
                    <div class="cleaner"></div>
                                        
                    <p><a href="#1" class="cross-link" title="Go to Page 2">&#171; Previous</a> | <a href="#3" class="cross-link" title="Go to Page 4">Next &#187;</a></p>
                     
				</div>
			</div>
			
			<%
			/*String log=session.getAttribute("user").toString();
			if(log.equals(""))
			{
			out.println("<script>alert('plsease login fisrt book the movie')</script>");
			}
			else
			{*/
			%>
			<div class="panel" title="Services">
				<div class="wrapper">
					<% String newcity; %>
					<h2>Show Details (<%out.println(session.getAttribute("movie"));   %>)</h2>
                    <form action="city.jsp#3" method="post">
                    <label for="author">City:</label> <select name=s1 ><option> Select</option> <option> Patiala</option> 	<option> Chandigarh</option> <option> Jalandhar</option> <option> Ludhiana</option> </select>
					<input type=submit value= "ok" name=b1  /></form>
					<%
					out.println("<table align=right><tr><td>"+session.getAttribute("user")+"</td></tr></table>");
					
					String str=request.getParameter("s1");
					session.setAttribute("city",str);
					newcity = str;
					
					if(str==null)
					{
					}
					else if(str.equals("Patiala"))
					{
						out.println(session.getAttribute("city"));
						%>
						<form action="city.jsp#3" method="post">
						<label for="author">Cinema's:</label> <select name=s2 ><option>SRS</option> <option>Mini Tagore</option>  </select><input type=submit value= "ok" name=b1  /></form>
						<%
					}
					
					else if(str.equals("Chandigarh"))
					{
						out.println(session.getAttribute("city"));
						%>
						
						<form action="city.jsp#3" method="post">
						<label for="author">Cinema's:</label> <select name=s2 ><option>Elante</option> <option>Fun Cinemas</option>  </select><input type=submit value= "ok" name=b1  />
						<%
					}
					
					else if(str.equals("Jalandhar"))
					{
						out.println(session.getAttribute("city"));
						%>
						
						<form action="city.jsp#3" method="post">
						<label for="author">Cinema's:</label> <select name=s2 ><option>PVR</option> <option>Big Cinemas</option>  </select><input type=submit value= "ok" name=b1  />
						<%
					}
					
					else if(str.equals("Ludhiana"))
					{
						out.println(session.getAttribute("city"));
						%>
						
						<form action="city.jsp#3" method="post">
						<label for="author">Cinema's:</label> <select name=s2 ><option>Cinepolis</option> <option>Wave Cinemas</option>  </select><input type=submit value= "ok" name=b1  />
						<%
					}
					
					%>
						
					<br>
					<% 
					
					String ss=request.getParameter("s2");
					session.setAttribute("cinema",ss);
					if(ss==null)
					{
					%>
						<label for="author"> select your cinema
					<%
					}
					else if(ss.equals("SRS")||ss.equals("Mini Tagore"))                  
					{
						session.setAttribute("city","Patiala");						
					%>
						
						<label for="author">Cinema's:</label> <select name=s2 ><option>SRS</option> <option>Mini Tagore</option>  </select><input type=submit value= "ok" name=b1  />
							
					<form action="seating.jsp" method="post" name=z1 onSubmit="return test()">	
					Select Show Time<input type=radio name=r1 value="10.00">10.00 Am<input type=radio name=r1 value="02.00">02.00 pm <input type=radio name=r1 value="06.00">06.00 pm
					<input type=submit value= "ok" name=b1  /></form>
					<br>
					<%
					out.println(session.getAttribute("city")+", "+session.getAttribute("cinema"));
					}
					else if(ss.equals("Elante")||ss.equals("Fun Cinemas"))
					{
						session.setAttribute("city","Chandigarh");
						
					%>
						
						<label for="author">Cinema's:</label> <select name=s2 ><option>Elante</option> <option>Fun Cinemas</option>  </select><input type=submit value= "ok" name=b1  />
						
					<form action="seating.jsp" method="post" name=z1 onSubmit="return test()">	
					Select Show Time<input type=radio name=r1 value="10.00">10.00 Am<input type=radio name=r1 value="02.00">02.00 pm <input type=radio name=r1 value="06.00">06.00 pm
					<input type=submit value= "ok" name=b1  /></form>
					<br>
					<%
					out.println(session.getAttribute("city")+", "+session.getAttribute("cinema"));
					}
					else if(ss.equals("PVR")||ss.equals("Big Cinemas")) 
					{
						session.setAttribute("city","Jalandhar");
					
					%>
						
						<label for="author">Cinema's:</label> <select name=s2 ><option>PVR</option> <option>Big Cinemas</option>  </select><input type=submit value= "ok" name=b1  />
						
					<form action="seating.jsp" method="post" name=z1 onSubmit="return test()">	
					Select Show Time<input type=radio name=r1 value="10.00">10.00 Am<input type=radio name=r1 value="02.00">02.00 pm <input type=radio name=r1 value="06.00">06.00 pm
					<input type=submit value= "ok" name=b1  /></form>
					<br>
					<%
						out.println(session.getAttribute("city")+", "+session.getAttribute("cinema"));
					}
					else if(ss.equals("Cinepolis")||ss.equals("Wave Cinemas")) 
					{
						session.setAttribute("city","Ludhiana");
						
					%>
						
						<label for="author">Cinema's:</label> <select name=s2 ><option>Cinepolis</option> <option>Wave Cinemas</option>  </select><input type=submit value= "ok" name=b1  />
						
					<form action="seating.jsp" method="post" name=z1 onSubmit="return test()">	
					Select Show Time<input type=radio name=r1 value="10.00">10.00 Am<input type=radio name=r1 value="02.00">02.00 pm <input type=radio name=r1 value="06.00">06.00 pm
					<input type=submit value= "ok" name=b1  /></form>
					<br>
					<%
					out.println(session.getAttribute("city")+", "+session.getAttribute("cinema"));
					}
					%>
					
					  <div class="cleaner_h10"></div> 
						
       
                    <div class="cleaner_h20"></div>
					
				</div>
				<script>
						function test()
						{
						if(!(z1.r1.value))
						{
						alert("Please select time");
						return false;
						}
						}
						</script>
			</div>		
            <%
			///}
			%>

            
			
			
			<div class="panel" title="Signing Up">
				<div class="wrapper">
					
                    <h2>SIGN UP</h2>
                    
                    <div id="contact_form">
                    
                        <form method="post" name="contact" action="signup.jsp">
                        
                            <input type="hidden" name="post" value=" Send " />
                            <label for="author">Username:</label> <input type="text" id="author" name="t1" class="required input_field" />
                            <div class="cleaner_h10"></div>
                            
                            <label for="email">Email:</label> <input type="text" id="email" name="t2" class="validate-email required input_field" />
                            <div class="cleaner_h10"></div>
                            
                            <label for="url">Phone no:</label> <input type="text" name="t3" id="url" class="input_field" />
                            <div class="cleaner_h10"></div>
                            
							<label for="url">Password:</label> <input type="password" name="t4" id="url" class="input_field" />
                            <div class="cleaner_h10"></div>
							
							<label for="url">Confirm Password:</label> <input type="password" name="t5" id="url" class="input_field" />
                            <div class="cleaner_h10"></div>
							
                            <input style="font-weight: bold;" type="submit" class="submit_btn" name="submit" id="submit" value=" Sign up " />
                            <input style="font-weight: bold;" type="reset" class="submit_btn" name="reset" id="reset" value=" Reset " />
                        
                        </form>
                    </div>

                      
                    <div class="address_info">
						
					
                    	<h3>Office Location</h3>
                    	333-335, Urban Estate<br />
                        Patiala, 147001<br />
                        <br /><br />

                    	<strong>Email:</strong> <a href="http://www.freecsstemplates.in" target="_parent">info-bookmymovie@gmail.com</a><br />
                        <strong>Web:</strong> <a href="http://www.freecsstemplates.in" target="_parent">www.bookmymovie.in</a>          
                    </div>
                    
                    <div class="cleaner_h20"></div>
                    
				</div>
			</div>
			
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
