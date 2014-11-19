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
<title>Delete your record </title>
</head>
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
<link rel="stylesheet" href="/css/styles.css" type="text/css">
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
      
       
        
        <li><a href="/AdminServlet">List Of All Records</a></li>
        <li><a href="/UsersServlet">List Of All Users</a></li>
       
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/LogOutServlet">Logout</a></li>
       
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
  <img src="/img/DSC01398.jpg" alt="logo" width="2000" height="150">
	<h2>Delete a user</h2>


	<h5>The Record is: <c:out value="${users }"/></h5>
	<form  role="form" action="<c:url value="/DeleteUsersServlet" />" method="post" >

		
		<div class="well well-sm">
		<div class="form-group">
			<label for="id">ID</label>
			
			<input id="id" type="text" name="id" value="${ id }" readonly> <br>
		</div>
		
		
			
		<div class="form-group">
			
		</div>
		</div>
		<div class="well well-sm">
		<button type="submit" class="btn btn-default">delete</button>
		</div>
	</form>
</div>
</body>
<%@ include file="/WEB-INF/footer.jsp"%>
</html>