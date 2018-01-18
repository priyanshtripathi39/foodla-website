<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>

<head>

 
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Online Shopping Website Using Spring MVC and Hibernate">
<meta name="author" content="Khozema Nullwala">
<meta name="_csrf" content="${_csrf.token}">
<meta name="_csrf_header" content="${_csrf.headerName}">
 
<title>Foodla -${title}</title>

<script>
	window.menu = '${title}';
	
	window.contextRoot = '${contextRoot}'
	
</script>

<!-- Bootstrap Core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Readable Theme -->
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">


<!-- Bootstrap DataTables -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">


<!-- Custom CSS -->
<link href="${css}/myapp.css" rel="stylesheet">


</head>



<body data-offset="60" data-spy="scroll" data-target=".navbar"
	id="myPage">

	<div class="wrapper">
	
	
	
	<div class="navbar navbar-inverse navvar-fixed-top" role="navigation"></div>
 		<div class="container">
 			<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<a class="navbar-brand" href="${contextRoot}/home">Home</a>
				</div> 		
		
		
		<div class="content">
			<div class="container">
			
			<div class="row">
				<div class="col-xs-12">
			
					<div class="jumbotron">
						<h1>${errorTitle}</h1>
						<hr/>
						<blockquote>
							${errorDescription}
						</blockquote>
					</div>
				</div>
			
			</div>
			
			</div>

   		</div>

		<!-- Footer -->
		<%@include file="./shared/footer.jsp"%>

	</div>	

</body>
</html>