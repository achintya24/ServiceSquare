
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form"  prefix="form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:if test="${sessionScope.vname ne null }">
<form:form action="addinbooking.htm" commandName="book">
<table><tr><td>
Booking Start Date:</td><td><form:input type="text" path="book_start_date"/></td></tr>
<tr>
<td>Booking End Date:</td><td><form:input type="text" path="book_end_date"/></td></tr>
<tr><td>Booking ID:</td><td>
<form:input type="text" path="book_wid"  value="${param['worker_id']}"/></td></tr>
<tr><td>Start Time:</td><td>
<form:input type="text" path="book_start_time"/></td></tr>
<tr><td>End Time:</td><td>
<form:input type="text" path="book_end_time"/>
</td><tr><td>Locality</td><td>
<form:input type="text" path="book_locality"/></td></tr>
<tr><td>Address</td><td>
<form:input type="text" path="book_address"/>
</td></tr>
<tr><td>Pincode:</td>
<td>
<form:input type="text" path="book_pincode"/></td></tr>
<tr><td>
<input type="submit" /></td></tr>
</table>
</form:form>
</c:if>
<c:if test="${sessionScope.vname eq null }">
	<h2>You are not authenticated</h2>
	</c:if>
</body>
</html>