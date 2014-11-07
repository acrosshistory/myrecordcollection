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
<title>Edit your record </title>
</head>
<body>

<div class="container">
	<h2>Edit a Record</h2>


	<h5>The Record is: <c:out value="${record }"/></h5>
	<form  role="form" action="EditRecordServlet" method="post" >

		<input type="hidden" name="action" value="updateRecord">
		<input type="hidden" name="id" value="${ id }">
		
		<div class="form-group">
			<label for="id">ID</label>
			<input id="id" type="text" name="id" value="${ id }"  disabled readonly> <br>
		</div>
		
		
			
		<div class="form-group">
			<label for="artist">artist</label>
			<textarea id="artist" name="artist" rows="4" cols="50"><c:out value="${record.artist }"/></textarea>
			<label for="album">album</label>
			<input id="album" type="text" name="album" value="${record.album }" > <br>
			<label for="year">year</label>
			<input id="year" type="text" name="year" value="${record.year }" > <br>
			<label for="genre">genre</label>
			<input id="genre" type="text" name="genre" value="${record.genre }" > <br>
			<label for="notes">notes</label>
			<input id="notes" type="text" name="notes" value="${record.notes }" > <br>
			<label for="art">art</label>
			<input id="art" type="text" name="art" value="${record.art }" > <br>
		</div>
		<button type="submit" class="btn btn-default">Save</button>
	</form>
</div>
	


</body>
</html>