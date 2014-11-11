<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<title>list of Records</title>
</head>
<link rel="stylesheet" href="<c:url value='/bootstrap-3.2.0-dist/css/bootstrap.css'/>"/>
<link rel="stylesheet" type="text/css" href="/bootstrap-3.2.0-dist/style.css">
<body>
<%@ include file="/WEB-INF/nav.jsp"%>
<img src="/img/DSC01398.jpg" alt="logo" height="200" width="1175">
	

 <div class="container">
		<table class="table table-striped" border="1">
			<c:forEach items="${theRecords }" var="aRecord">
					<td>
						<blockquote class="blockquote">
							<tr><td><c:out value="${aRecord.artist }"/> </td>
								<br/>
								<td><c:out value="${aRecord.album}"/></td>
								<br/>
								<td><c:out value="${aRecord.year}"/></td>
								<br/>
								<td><c:out value="${aRecord.genre}"/></td>
								<br/>
								<td><c:out value="${aRecord.notes}"/></td>
								<br/>
							
							
							<td><img src="<c:out value="${aRecord.art}"/>"alt = "art" width="150" height="150" align="right" /></td>
							
							</blockquote>
							
							<table style="width:100%">
 
					</td>
				</tr>
			</c:forEach> 
		<c:forEach items="${Error}" var="Record didn't update! Let's Try again">
		</c:forEach> 
		</table> 

  

<script src="/bootstrap-3.2.0-dist/js/bootstrap.js"></script>
<%@ include file="/WEB-INF/footer.jsp"%>
</html>