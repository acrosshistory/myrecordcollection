<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${sessionScope.isLoggedIn == true}">								
	<p>You are logged in as  
	<c:out value="${sessionScope.username}"></c:out></p>
</c:if>	
<table><td width="980" bgcolor="gray">
<strong><font color="black">&nbsp;&nbsp;&copy;&nbsp;2014 My Record Collection </font></strong></td></table>