<%@page language="java" session="true" %>
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
                    
                <p><h4><br> Book my movie is India's biggest online movie ticketing brand. The website caters to ticket sales for movies, trailors via the online platform. Launched in 2015, it is headquartered in Patiala, Punjab. It also has offices in New Delhi, Bangalore, Chandigarh, Chennai and Kolkata. It reaches about 800 to 900 cinemas in 200 cities and towns.
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
						
                            <a href="signin1.jsp?a='Zindgi na milegi dubara'" target="_parent"><img src="images/znmd.jpg" alt="project 1" /></a>
                        </div>
                        
                        
                        <div class="cleaner"></div>
                    </div>
                    
                    <div class="portfolio_box margin_r50">

                        <h3>Movie 2</h3>
                        
                        <div class="port_img">
                            <a href="signin2.jsp?a=harry potter" target="_parent" ><img src="images/harrypotter.jpg" alt="project 2" /></a>
                        </div>
                        
                        
                        <div class="cleaner"></div>                                               
                    </div>
                    
                    <div class="portfolio_box">

                        <h3>Movie 3</h3>
                        
                        <div class="port_img">
                            <a href="signin3.jsp?a=eclipse" target="_parent" ><img src="images/eclipse.jpg" alt="project 2" /></a>
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
			
			
			
			<div class="panel" title="Signing Up">
				<div class="wrapper">
					
                    <h2>SIGN UP</h2>
                    
                    <div id="contact_form">
                    
                        <form method="post" name="f1" action="signup.jsp" onSubmit="return test()">
                        
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
						function equal()
						{
						c=(f1.t4.value);
						d=(f1.t5.value);
						if(c==d)
						return 0;
						else 
						return 1;
						}
						function test()
						{
						if(empty(f1.t1.value))
						{
						alert("Please enter your Name");
						return false;
						}
						else if(empty(f1.t2.value))
						{
						alert("Please enter your email");
						return false;
						}
						else if(empty(f1.t3.value))
						{
						alert("Please enter your Phone number");
						return false;
						}
						else if(num(f1.t3.value))
						{
						alert("Please enter digits only in Phone no.");
						return false;
						}
						else if(equal())
						{
						alert("Password and confirm password do not match.");
						return false;
						}
						}
						</script>
                      
                    <div class="address_info">
						
					
                    	<h3>Office Location</h3>
                    	333-335, Urban Estate<br />
                        Patiala, 147002<br />
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