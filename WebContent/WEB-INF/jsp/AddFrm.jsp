<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>Add Employee</h1>
	<hr />
	<form:form action="addclientdetails.htm" commandName="user"
		method="post">
		<table cellpadding='10' bgcolor='#e7e7e7'>
			
			<tr>
				<td>Email</td>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><form:input path="password" /></td>
			</tr>
			<tr>
				<td>FullName</td>
				<td><form:input path="fullname" /></td>
			</tr>
			<tr>
				<td>Contact</td>
				<td><form:input path="contactno" /></td>
			</tr>
			
			
			<tr>
				<td>Sex</td>
				<td><form:input path="sex" /></td>
			</tr>
			<tr><td><input type="submit" value="submit"/></td></tr>
		</table>
	</form:form>
</body>
</html>