<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Customer registration form</title>
	<style>
		.error {
		color: red;
		}
	</style>
</head>
<body>
	<p>
		<i>Fill out the form. Asterisk (*) means required.</i>
	</p>
	<form:form action="processForm" modelAttribute="customer">
		<label>First name: </label><form:input path="firstName"/>
		<br><br>
		<label>Last name (*): </label><form:input path="lastName"/>
		<form:errors path="lastName" cssClass="error" />
		<br><br>
		<label>Free passes: </label><form:input path="freePasses"/>
		<form:errors path="freePasses" cssClass="error" />
		<br><br>
		<label>Postal code: </label><form:input path="postalCode"/>
		<form:errors path="postalCode" cssClass="error" />
		<br><br>				
		<input type="submit" value="submit"/>
	</form:form>
</body>
</html>