<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<link rel="stylesheet" href="<c:url value='/bootstrap-3.2.0-dist/css/bootstrap.css'/>"/>
<link rel="stylesheet" href="/css/styles.css" type="text/css">

<title>Add New User</title>


</head>
<body>
 


		<h1 align="center">Add A New User</h1>

		<p class="bg-danger">${errorMessage}</p>
		<div class="well well-sm">
		
		<form  role="form" action="NewUsersServlet" method="post" >
			<input type="hidden" name="action" value="addNewUser">
			<div class="form-group">
				<label for="username">User</label>
				<input id="username" type="text" name="username" placeholder="Username"> <br>
			</div>
			<div class="form-group">
				<label for="password">Password</label>
				<input id="password" type="text" name="password" placeholder="Password" > <br>
			</div>
			<button type="submit" class="btn btn-default">Submit</button>
		</form>
	</div>

</body>
</html>