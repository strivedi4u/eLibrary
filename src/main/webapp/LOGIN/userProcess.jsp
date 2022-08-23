<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page import="com.shashank.login.LoginDao" %>
<jsp:useBean id="obj" class="com.shashank.login.LoginBean"/>  
<jsp:setProperty property="*" name="obj" />
<!DOCTYPE html>
<html>
<head>
  
</head>
<body>
<%
boolean status = LoginDao.userValidate(obj);
out.print(status);
if(status){
	session.setAttribute("user", obj.getEmail());
	%>
	<c:redirect url = "../USER/home1"/>
	<%
}
else{
	 %>
		<c:redirect url="../userLogin">
		<c:param name="page" value="2"></c:param>
		<c:param name="error" value="EmailId or Password Error ">
		</c:param>
		</c:redirect>
		<%
}
%>
</body>
</html>