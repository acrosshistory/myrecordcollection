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

<%-- 
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">

<!-- <!-- Optional theme --> 
<link rel="stylesheet" href="<c:url value="/bootstrap-3.2-3.0-dist/css/bootstrap-theme.min.css"/>">

<!-- Latest compiled and minified JavaScript -->
<script src="<c:url value="/js/bootstrap.min.js"/>"></script> --%>
<!-- JQuery -->
<script src="<c:url value="/jquery/jquery-2.1.1.js"/>"></script>

<title>Users</title>
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <img src="/img/logo.jpg" alt="logo" align="left" height="75" width="75">
      <a class="navbar-brand" href=></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
      
        <li class="active"><a href="/EditRecordServlet">Edit a Record</a></li>
        <li><a href="/NewRecordServlet">New Record</a></li>
        <li><a href="/DeleteRecordServlet">Delete a Record</a></li>
        <li><a href="">list of Records</a></li>
        <li><a href="/UsersServlet">users</a></li>
       
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/LogOutServlet">Logout</a></li>
       
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
  <img src="/img/DSC01398.jpg" alt="logo" width="2000" height="150">
		
			
			<div class="table-responsive">
   <table class="table table-hover">
      <c:forEach items="${theUsers }" var="aUser">
      <thead>
        
      </thead>
      <tbody>
         <tr>
         	<td><c:out value="${aUser.id }"/> </td>
            <td><c:out value="${aUser.username }"/> </td>
          <td><c:out value="${aUser.password }"/> </td>
          <td><button><a href="/DeleteUsersServlet?id=${aUser.id}">Delete</a></button></td>
            
      </tbody>
      </c:forEach>
     
      		
      
   </table>
</div>  	
				

</body>
</html>


