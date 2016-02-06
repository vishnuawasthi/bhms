<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="resources/css/style.css" type="text/css">

<title>Login</title>
</head>
<body>
<form:form action="login"  method="POST"   modelAttribute="loginForm">
	<table>
		<tr>
			<td>Username :</td>
			<td><form:input path="username" /></td>
			<td><form:errors path="username" cssClass="field-error"></form:errors>
			</td>
		</tr>
		<tr>
			<td>Password :</td>
			<td><form:input path="password" /></td>
			<td><form:errors path="password" cssClass="field-error"></form:errors>
			</td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="Login"></td>
			<td></td>
		</tr>

	</table>
</form:form>


</body>
</html>