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
		
			
			<div class="panel" title="Signing In">
				<div class="wrapper">
					
                    <h2>SIGN IN</h2>
                    
                    <div id="contact_form">
                    
                        <form method="post" name="contact" action="signin.jsp">

<%                        
 session.setAttribute("movie","Harry Potter");
 
////out.println(session.getAttribute("movie"));

 %>
 <input type="hidden" name="post" value=" Send " />
                            <label for="author">Useremail:</label> <input type="text" id="author" name="t1" class="required input_field" />
                            <div class="cleaner_h10"></div>
                            
							<label for="url">Password:</label> <input type="password" name="t2" id="url" class="input_field" />
                            <div class="cleaner_h10"></div>
							
                            <input style="font-weight: bold;" type="submit" class="submit_btn" name="submit" id="submit" value=" Sign in " />
                            <input style="font-weight: bold;" type="reset" class="submit_btn" name="reset" id="reset" value=" Reset " />
                        
                        </form>
                    </div>

                    
                    <div class="address_info">
                    	<h3>Office Location</h3>
                    	333-335, Urban Estate, <br />
                        Patiala, 147002<br />
                        <br /><br />

                    	<strong>Email:</strong> <a href="http://www.freecsstemplates.in" target="_parent">info-bookmymovie@gmail.com</a><br />
                        <strong>Web:</strong> <a href="http://www.freecsstemplates.in" target="_parent">www.bookmymovie.in</a>          
                    </div>
                    
                    <div class="cleaner_h20"></div>
                    
					<p><a href="#4" class="cross-link" title="Go to Page 4">&#171; Previous</a> | <a href="#1" class="cross-link" title="Go to Page 1">Next &#187;</a></p>
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