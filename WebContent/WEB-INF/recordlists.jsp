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
<link rel="stylesheet" href="<c:url value='/bootstrap-3.2.0-dist/css/bootstrap.css'/>"/>
<link rel="stylesheet" href="/css/styles.css" type="text/css">
<!-- <link rel="stylesheet" type="text/css" href="/bootstrap-3.2.0-dist/style.css"> -->

</head>
<body>
<%@ include file="/WEB-INF/nav.jsp"%>

			<c:forEach items="${theRecords }" var="aRecord">
			
			<div class="table-responsive">
   <table class="table table-hover">
      
      <thead>
         <tr>
            <th>Artist</th>
            <th>Album</th>
            <th>Year</th>
            <th>Genre</th>
            <th>Notes</th>
            <th>Art</th>
         </tr>
      </thead>
      <tbody>
         <tr>
            <td><c:out value="${aRecord.artist }"/> </td>
            <td><c:out value="${aRecord.album}"/> </td>
            <td><c:out value="${aRecord.year}"/> </td>
            <td><c:out value="${aRecord.genre}"/> </td>
           <td><c:out value="${aRecord.notes}"/> </td>
            <td><img src="<c:out value="${aRecord.art}"/>"alt = "art" width="125" height="125" align="right" /></td>
      </tbody>
   </table>
</div>  	
					
						
</c:forEach> 

	

 


		
			
		
		
<c:forEach items="${Error}" var="Record didn't update! Let's Try again">
		</c:forEach> 
  

<script src="/bootstrap-3.2.0-dist/js/bootstrap.js"></script>
<%@ include file="/WEB-INF/footer.jsp"%>
</html>