<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<title>record list</title>
</head>
<body>
<h1> records </h1>

	
	<c:forEach items="${theRecords }" var="aRecord">
	
	
	<c:out value="${ aRecord.album }"/>
	<c:out value="${ aRecord.year }"/>
	<c:out value="${ aRecord.genre }"/>
	<c:out value="${ aRecord.notes }"/>
	<c:out value="${ aRecord.art }"/>
	</c:forEach>

	

</body>
</html>