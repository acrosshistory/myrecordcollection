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

<title>New record </title>
</head>
<body>
<%@ include file="/WEB-INF/nav.jsp"%>
<link rel="stylesheet" href="/css/styles.css" type="text/css">
<h1 align="center">Enter a Record</h1>

<form role="form" action="NewRecordServlet" method="post">
	<input type="hidden" name="action" value="addNewRecord">
	<div class="well well-sm">
	<div class="form-group">
		<label for="artist">Artist</label>
		<input id="artist" type="text" name="artist" placeholder="Artist" > <br>
	</div>
	
	<div class="form-group">
		<label for="album">Album</label>
		<input id="album" type="text" name="album" placeholder="Album"> <br>
	</div>
	
	<div class="form-group">
		<label for="genre">Genre</label>
		<input id="genre" type="text" name="genre" placeholder="Genre"> <br>
	</div>
	
	<div class="form-group">
		<label for="year">Year</label>
		<input id="year" type="text" name="year" placeholder="Year"> <br>
	</div>
	
	<div class="form-group">
		<label for="notes">Notes</label>
		<input id="notes" type="text" name="notes" placeholder="Notes"> <br>
	</div>
	
	<div class="form-group">
		<label for="art">Art</label>
		<input id="art" type="text" name="art" placeholder="Image Address"> <br>
		
	</div>
	</div>
	<div class="well well-sm">
	<button type="submit" class="btn btn-default">Submit</button>
	</div>

</form>

</body>
<%@ include file="/WEB-INF/footer.jsp"%>
</html>
