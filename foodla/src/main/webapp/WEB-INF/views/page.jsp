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
    
  <!-- Container (Contact Section) -->
  <%@include file="./contact.jsp" %>
  
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