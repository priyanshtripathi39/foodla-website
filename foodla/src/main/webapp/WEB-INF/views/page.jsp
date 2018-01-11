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
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="${css}/style.css" rel="stylesheet" type="text/css"> </head>

<title>Foodla -${title}</title>

<script>
	window.menu='${title}';
</script>

<body data-offset="60" data-spy="scroll" data-target=".navbar" id="myPage">
   
   <div class="wrapper">
   <!-- Navigation -->
   <%@include file="./shared/navbar.jsp" %>
  
   <!-- Home page-->
   <c:if test="${userClickHome==true }">
   	   <%@include file="home.jsp" %>
   </c:if>
   
   <!-- load only when user clicks all products-->
   <c:if test="${userClickAllProducts==true  or userClickCategoryProducts==true}">
   	   <%@include file="listProducts.jsp" %>
   </c:if>
   
   
  
  <div class="content">
  
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
 
  <!-- Container (Location Section) -->
 <%@include file="./location.jsp" %>
  
  <!-- Container (Contact Section) -->
  <%@include file="./contact.jsp" %>
  
  <!-- Container (Contact Section) -->
  <%@include file="./contact.jsp" %>
  
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
  
  <!-- Footer -->
  <%@include file="./shared/footer.jsp" %>
  
  <!-- jQuery -->
  <script src="${js}/jquery.js"></script>
  
  <!-- myjquery -->
  <script src="${js}/myapp.js"></script>
  </div>
  </div>
</body>
</html>