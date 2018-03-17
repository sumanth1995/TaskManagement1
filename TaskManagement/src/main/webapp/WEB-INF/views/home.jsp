<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="/TaskManagement/resources/js/jquery-3.1.1.js"></script>
<script src="/TaskManagement/resources/js/jquery-ui.js"></script>
<script src="/TaskManagement/resources/js/jquery.validate.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js"
	type="text/javascript"></script>
<link
	href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/blitzer/jquery-ui.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script language="javascript" type="text/javascript">

	$(document).ready(function() {
		$('#createNewId').click(function() {
			$("#myModal").dialog("open")
		});
		
	});
</script>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<dialog id="window">  
    <h3>Sample Dialog!</h3>  
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum, inventore!</p>  
    <button id="exit">Close Dialog  
</dialog>  
<button id="show">Show Dialog</button>



	<input type="button" id="createNewId" name="Create New"
		onclick="openModel" tabindex="3" value="Create New">
	<div id="myModal" style="display: none" align="center" class="modal">
	</div>
</body>
</html>