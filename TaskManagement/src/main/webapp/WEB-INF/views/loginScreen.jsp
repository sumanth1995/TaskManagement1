<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Task Management</title>
</head>
<body>
<form:form action="validateUser.html" modelAttribute="city">
	<br><br><br><br><br><br><br><br><br><br><br>
	<table align="center">
		<tr><td>Username:</td><td><input type="text" name="userName"></td></tr>
		<tr><td>Password:</td><td><input type="text" name="password"></td></tr>
		<tr><td colspan="4"><input type="submit" value="Login" class="button"></td></tr>
	</table>
		
</form:form>

</body>
</html>