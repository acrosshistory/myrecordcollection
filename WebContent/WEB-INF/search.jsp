<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
</head>
<body>
<p> search with in...</p>

<form action="SearchServlet" method="get" name="SearchArtist">
<select>
  <option value="artist">Artist</option>
  <option value="album">Album</option>
  <option value="year">Year</option>
  <option value="genre">Genre</option>
  <option value="notes">Notes</option>
  <option value="art">artwork</option>
</select>
<input class="btn btn-primary" type="submit" title="SearchArtist" value="search">
	</form>

<c:forEach items="${theRecords }" var="aRecord">
					<td>
						<blockquote class="blockquote">
							<c:out value="${aRecord.artist }"/> 
								
					</td>
				</tr>
			</c:forEach> 
		</table>
</body>
</html>