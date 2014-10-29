<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<title>list of Records</title>
</head>
<link rel="stylesheet" href="<c:url value='/bootstrap-3.2.0-dist/css/bootstrap.css'/>"/>
<link rel="stylesheet" type="text/css" href="/bootstrap-3.2.0-dist/style.css">
<body>
	<div class="jumbotron">
		<h1><del>The Great List of records</del></h1>
	</div>
	
	<form action="NewRecordServlet" method="get" name="newRecord">
		<input class="btn btn-primary" type="submit" title="newRecord" value="New Record">
	</form>
	

<div class="container">
		<table class="table table-striped">
			<c:forEach items="${theRecords }" var="aRecord">
					<td>
						<blockquote class="blockquote">
							<c:out value="${aRecord.artist }"/> 
								<br/>
								<c:out value="${aRecord.album}"/>
								<br/>
								<c:out value="${aRecord.year}"/>
								<br/>
								<c:out value="${aRecord.genre}"/>
								<br/>
								<c:out value="${aRecord.notes}"/>
								<br/>
								<img src="<c:out value="${aRecord.art}"/>"alt =art/>
								
						</blockquote>
					</td>
				</tr>
			</c:forEach> 
		</table>
	
	
	
	
	

 
</body>

<div class="container">
		<footer>
			<p> The movie database contains ${fn:length(Record)} records as of
				<fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${now}" />
			</p>
		</footer>
	
  </div>

<script src="/js/bootstrap.js"></script>
</html>