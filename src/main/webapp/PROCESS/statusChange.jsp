<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.io.*"%>
<%@page import="java.io.InputStream"%>
<%@ page import = "com.shashank.crud.AdminDao" %>  
<!DOCTYPE html>
<html>
<body>
<%
String pageURL = request.getParameter("pageURL");
String id = request.getParameter("id");
int ids = Integer.parseInt(id);
int i = AdminDao.updateStatus(ids);
if(i>0){
%>  
<c:redirect url="<%=pageURL %>">
<c:param name="page" value="1"></c:param>
<c:param name="success" value="Book Sussessfully Added">
</c:param>
</c:redirect>
<%
}else{
%>
<c:redirect url="<%=pageURL %>">
<c:param name="page" value="2"></c:param>
<c:param name="error" value="Book Unsussessfully Added">
</c:param>
</c:redirect>
<%}%>
</body>
</html>