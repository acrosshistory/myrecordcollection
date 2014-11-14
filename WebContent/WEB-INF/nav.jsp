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
<link rel="stylesheet" href="<c:url value='/bootstrap-3.2.0-dist/css/bootstrap.css'/>"/>
<link rel="stylesheet" href="/css/grayscale.css" type="text/css">

<%-- 
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>">

<!-- <!-- Optional theme --> 
<link rel="stylesheet" href="<c:url value="/bootstrap-3.2-3.0-dist/css/bootstrap-theme.min.css"/>">

<!-- Latest compiled and minified JavaScript -->
<script src="<c:url value="/js/bootstrap.min.js"/>"></script> --%>
<title>Nav bar</title>
</head>
<body>



<c:if test="${ not empty error }">
	<h3 style="color:red;">Error:  ${error }</h3>
</c:if>

<c:url var="rootURL" value="/"/>

<c:choose>
	<c:when test="${sessionScope.isLoggedIn != true}">
	<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <img src="/img/logo.jpg" alt="logo" align="left" height="75" width="75">
      <a class="navbar-brand" href=></a>
    </div>

    
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="/LogInServlet"></a>please log in</li>
        
        
       
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->


</c:when>
    <c:otherwise>
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
        <li><a href="/EditRecordServlet">Edit a Record</a></li>
        <li><a href="/NewRecordServlet">New Record</a></li>
        <li><a href="/DeleteRecordServlet">Delete a Record</a></li>
        <li><a href="/HomeServlet">list of Records</a></li>
       
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/LogOutServlet">Logout</a></li>
       
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
  <img src="/img/DSC01398.jpg" alt="logo" height="200" width="1175">
</nav>
    
   </c:otherwise>
   </c:choose>
</nav>
    

</body>
</html>