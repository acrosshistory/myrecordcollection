<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${sessionScope.isLoggedIn == true}">								
	<h6>You are logged in as  
	<c:out value="${sessionScope.username}"></c:out></h6>
</c:if>	
<table><td width="980" bgcolor="black">
<strong><font color="white">&nbsp;&nbsp;&copy;&nbsp;2014 My Record Collection </font></strong></td></table> 