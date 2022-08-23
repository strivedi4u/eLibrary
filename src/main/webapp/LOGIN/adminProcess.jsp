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
out.print(obj);
boolean status = LoginDao.validate(obj);
if(status){
	session.setAttribute("session", obj.getEmail());
	%>
	<c:redirect url = "../ADMIN/home1"/>
	<%
}
else{
	 %>
		<c:redirect url="../adminLogin">
		<c:param name="page" value="2"></c:param>
		<c:param name="error" value="EmailId or Password Error ">
		</c:param>
		</c:redirect>
		<%
}
%>
</body>
</html>