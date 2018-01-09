<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>

<head>
  <title>Foodla</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="${css}/style.css" rel="stylesheet" type="text/css"> </head>

<body data-offset="60" data-spy="scroll" data-target=".navbar" id="myPage">
  <nav class="navbar navbar-default navbar-fixed-top w-25 h-25" style="background: rgba(204, 204, 204, 0.5);">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        <a class="navbar-brand text-dark" href="index.html">
        <img src="resources/images/logo.png" width="220px" height="70px"></a>
      </div>
      <a class="navbar-brand text-dark" href="index.html"> </a>
      <div class="collapse navbar-collapse" id="myNavbar">
        <a class="navbar-brand text-dark" href="index.html"> </a>
        <ul class="nav navbar-nav navbar-right">
          <a class="navbar-brand text-dark border border-dark" href="index.html"> </a>
          <li>
            <a class="navbar-brand text-dark" href="index.html"> </a>
            <a href="#"><strong><h4>Login</h4></strong></a>
          </li>
          <li>
            <a href="#"><strong><h4 class="w-25 h-25 p-0 mx-auto">Register</h4></strong></a>
          </li>
          <li>
            <a href="#contact" class="w-100"><strong><h4>Help</h4></strong></a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!---->
  <div class="jumbotron text-center" style="background: url(resources/images/foodla-background.png) no-repeat center;" data-stellar-background-ratio="0.5 ">
    <h1 class="text-center text-capitalize text-center">Turn You Appetite Into Satisfaction</h1>
    <p>Where there's Food there's Foodla</p>
    <div class="container align-bottom">
      <form class="form-inline" action="/action_page.php">
        <div class="row">
          <!-- <div class="col-md-8 input-group align-bottom">
            <input type="email" class="form-control input-lg" size="50" placeholder="Search food, restaurant etc" required="">
		
             <div class="input-group-btn">
				<a href="#" class="btn btn-info btn-lg">
					<span class="glyphicon glyphicon-search"/> Search 
				</a>
            </div> -->
          <!--<div class="form-group has-feedback">
				<div class="input-group">
					<input type="text" class="form-control" size="70" id="inputGroupSuccess1" placeholder="Search..." style="border-left: 0px;">
					<span class="input-group-addon" style="background-color:#FFFFFF;"><span class="glyphicon glyphicon-search"></span></span>
				</div>
			</div> -->
          <div class="container">
            <div>
              <div class="input-group add-on">
                <input type="text" class="form-control form-rounded" size="70" placeholder="Search" name="srch-term" id="srch-term">
                <div class="input-group-btn ">
                  <button class="btn btn-default btn-round" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
  <!-- Container (Services Section) -->
  <div id="services" class="container-fluid text-center">
    <h2>Get your Simple 4 Steps</h2>
    <br>
    <div class="row slideanim">
      <div class="col-sm-4"> <span class="glyphicon glyphicon-off logo-small"></span>
        <h4>POWER</h4>
        <p>Lorem ipsum dolor sit amet..</p>
      </div>
      <div class="col-sm-4"> <span class="glyphicon glyphicon-heart logo-small"></span>
        <h4>LOVE</h4>
        <p>Lorem ipsum dolor sit amet..</p>
      </div>
      <div class="col-sm-4"> <span class="glyphicon glyphicon-lock logo-small"></span>
        <h4>JOB DONE</h4>
        <p>Lorem ipsum dolor sit amet..</p>
      </div>
    </div>
    <br>
    <br> </div>
  <!-- Container (Portfolio Section) -->
  <div id="portfolio" class="container-fluid text-center bg-grey">
    <br>
    <div class="row text-center slideanim">
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="resources/images/download.jpg" alt="Paris" width="300" height="300"> </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="resources/images/download.jpg" alt="New York" width="300" height="300"> </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="resources/images/download (1).jpg" alt="San Francisco" width="300" height="300"> </div>
      </div>
    </div>
    <br>
    <h2>Popular this Month in India</h2>
    <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
      <!-- Indicators -->
      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">
        <img class="img-fluid d-block rounded mx-auto" src="resources/images/pizza_hut_logo_detail.png" width="200" height="200">
        <img class="img-fluid d-block rounded mx-auto" src="resources/images/Yum!_Brands_Logo.svg.png" width="200" height="200">
        <img class="img-fluid d-block rounded mx-auto" src="resources/images/1024px-KFC_logo.svg.png" width="200" height="200"> </div>
      <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next</span> </a>
    </div>
  </div>
  <!-- Container (Pricing Section) -->
  <div id="pricing" class="container-fluid">
    <div class="text-center">
      <h2>Browse By Cuisine</h2>
      <h4>Choose from &nbsp;your favorite cuisine</h4>
      <div class="row">
        <div class="col-md-3 bg-dark">Bangaluru</div>
        <div class="col-md-3 text-center">Pune</div>
        <div class="col-md-3">Patna</div>
        <div class="col-md-3">Kolkata</div>
      </div>
    </div>
  </div>
  <!-- Container (Contact Section) -->
  <div id="contact" class="container-fluid bg-grey">
    <h2 class="text-center">CONTACT</h2>
    <div class="row">
      <div class="col-sm-5">
        <p>Contact us</p>
        <p><span class="glyphicon glyphicon-map-marker"></span> Patna us,</p>
        <p>9325094725<span class="glyphicon glyphicon-phone"></span></p>
        <p><span class="glyphicon glyphicon-envelope"></span> info@techsewa.com</p>
      </div>
      <div class="col-sm-7 slideanim">
        <div class="row">
          <div class="col-sm-6 form-group">
            <input class="form-control" id="name" name="name" placeholder="Name" type="text" required=""> </div>
          <div class="col-sm-6 form-group">
            <input class="form-control" id="email" name="email" placeholder="Email" type="email" required=""> </div>
        </div> <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
        <br>
        <div class="row">
          <div class="col-sm-12 form-group">
            <button class="btn btn-default pull-right" type="submit">Send</button>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Add Google Maps -->
  <script>
    function myMap() {
    var myCenter = new google.maps.LatLng(41.878114, -87.629798);
    var mapProp = {center:myCenter, zoom:12, scrollwheel:false, draggable:false, mapTypeId:google.maps.MapTypeId.ROADMAP};
    var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
    var marker = new google.maps.Marker({position:myCenter});
    marker.setMap(map);
    }
  </script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&amp;callback=myMap"></script>
  <!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->
  <footer class="container-fluid text-center">
    <a href="#myPage" title="To Top"> <span class="glyphicon glyphicon-chevron-up"></span> </a>
    <p>&nbsp;Made By
      <a href="https://www.w3schools.com" title="Visit w3schools">www.techsewa.</a>in</p>
  </footer>
  <script>
    $(document).ready(function(){
      // Add smooth scrolling to all links in navbar + footer link
      $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
        // Make sure this.hash has a value before overriding default behavior
        if (this.hash !== "") {
          // Prevent default anchor click behavior
          event.preventDefault();
    
          // Store hash
          var hash = this.hash;
    
          // Using jQuery's animate() method to add smooth page scroll
          // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
          $('html, body').animate({
            scrollTop: $(hash).offset().top
          }, 900, function(){
       
            // Add hash (#) to URL when done scrolling (default click behavior)
            window.location.hash = hash;
          });
        } // End if
      });
      
      $(window).scroll(function() {
        $(".slideanim").each(function(){
          var pos = $(this).offset().top;
    
          var winTop = $(window).scrollTop();
            if (pos < winTop + 600) {
              $(this).addClass("slide");
            }
        });
      });
    })
  </script>
  
</body>

</html>