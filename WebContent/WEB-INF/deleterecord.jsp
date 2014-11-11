<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<title>Delete your record </title>
</head>
<body>
<%@ include file="/WEB-INF/nav.jsp"%>
<div class="container">
	<h2>Edit a Record</h2>


	<h5>The Record is: <c:out value="${record }"/></h5>
	<form  role="form" action="DeleteRecordServlet" method="post" >

		<input type="hidden" name="action" value="deleteRecord">
		<input type="hidden" name="id" value="${ id }">
		
		<div class="form-group">
			<label for="id">ID</label>
			<input id="id" type="text" name="id" value="${ id }"  disabled readonly> <br>
		</div>
		
		
			
		<div class="form-group">
			
		</div>
		<button type="submit" class="btn btn-default">delete</button>
	</form>
</div>
	


</body>
</html>