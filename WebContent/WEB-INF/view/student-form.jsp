<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student form</title>
</head>
<body>
	<form:form action="processForm" modelAttribute="student">
	
	<label>First name: </label><form:input path="firstName"/>
	
	<br><br>
	
	<label>Last name: </label><form:input path="lastName"/>
	
	<br><br>
	
	<label>Country:</label>	
	
	<form:select path="country">		
		<form:options items="${theCountryOptions}"/>		
	</form:select>
	
	<br><br>
	
	<label>Favorite Language: </label>
	<br>
	<label>Java:</label><form:radiobutton path="favoriteLanguage" value="Java"/>
	<br>
	<label>C#</label><form:radiobutton path="favoriteLanguage" value="C#"/>
	<br>
	<label>PHP</label><form:radiobutton path="favoriteLanguage" value="PHP"/>
	<br>
	<label>Ruby</label><form:radiobutton path="favoriteLanguage" value="Ruby"/>				
	
	<br><br>	
	
	<label>Operating Systems: </label>
	<br>
	<label>Linux: </label><form:checkbox path="operatingSystems" value="Linux" />
	<br>
	<label>Mac OS: </label><form:checkbox path="operatingSystems" value="Mac OS" />
	<br>	
	<label>MS Windows: </label><form:checkbox path="operatingSystems" value="MS Windows" />	
	<br><br>
	
	<input type="submit" value="submit"/>	
	
	</form:form>
</body>
</html>