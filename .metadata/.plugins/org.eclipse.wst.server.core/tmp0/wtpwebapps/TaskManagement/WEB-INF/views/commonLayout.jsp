<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<tiles:insertAttribute name="header" />

<table>
   <tr> 
     <td style="border-width:1px; border-color:Black ; border-style :groove ;" width="20">
     	<tiles:insertAttribute name="userDetails" />
     </td>
     <td style="border-width:1px; border-color:Black ; border-style :groove ;" width="80">
     <tiles:insertAttribute name="taskList" />
     </td>
    </tr></table>
    
 <%-- <table border="1">
      
      <tr width="200">
        <td>
          <tiles:insertAttribute name="userDetails" />
        </td>
        <td>
          <tiles:insertAttribute name="taskList" />
        </td>
      </tr>
      <tr>
        <td colspan="2">
          <tiles:insertAttribute name="footer" />
        </td>
      </tr>
    </table> --%>
</body>
</html>