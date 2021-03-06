<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">

<!-- Optional theme -->
<link rel="stylesheet" href="<c:url value="/css/bootstrap-theme.min.css"/>">

<%--
	We moved these <script> tags down to the bottom at the body tag
	so that content is loaded before interactivity.

<!-- JQuery -->
<script src="<c:url value="/jquery/jquery-2.1.1.js"/>"></script>

<!-- Latest compiled and minified JavaScript -->
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>

 --%>

<title>Login</title>
</head>
<body>
<%@ include file="/WEB-INF/nav.jsp"%>
	<h2>Login</h2>
	
	<p> 

	<c:if test="${ not empty error }">
		<h3 style="color:red;">Error:  ${error }</h3>
	</c:if>
	

	<form  role="form" action="/LogInServlet" method="post" >
		<input type="hidden" name="action" value="login">
		<div class="well well-sm">
		<div class="form-group">
			<label for="username">User Name</label>
			<input id="username" type="text" name="username" placeholder="Username" > <br>
		</div>
		<div class="form-group">
			<label for="password">Password</label>
			<input id="password" type="password" name="password" placeholder="Password" > <br>
		</div>
		</div>
		<button type="submit" class="btn btn-default">Login</button>
	</form>
		
	


	<!-- JQuery -->
	<script src="<c:url value="/jquery/jquery-2.1.1.js"/>"></script>

	<!-- Latest compiled and minified JavaScript -->
	<script src="<c:url value="/js/bootstrap.min.js"/>"></script>

</body>
</html>