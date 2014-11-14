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

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">

<!-- Optional theme -->
<link rel="stylesheet" href="<c:url value="/css/bootstrap-theme.min.css"/>">
      
<title>Users</title>
</head>
<body>

	<h1>Users</h1>
	<div class="well well-sm">
	<div class="container">
	
		<table class="table table-striped">
			<c:forEach items="${theUsers }" var="aUser">
				<tr>
					<td>
						<blockquote class="blockquote">
							<p>${aUser.id } - ${aUser.username }</p>
						</blockquote>
					</td>
				</tr>
			</c:forEach> 
		</table>
	</div>
	</div>
</body>
</html>


