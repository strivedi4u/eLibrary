<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.io.*"%>
<%@page import="java.io.InputStream"%>
<%@ page import = "com.shashank.crud.AdminDao" %>  
<jsp:useBean id="a" class="com.shashank.crud.Admin"></jsp:useBean>  
<jsp:setProperty property="*" name="a"/>  
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<%
String pageURL = request.getParameter("pageURL");
String FileName = a.getId()+ ".pdf";
File file = new File("D:\\EclipseWorkspace\\Test\\src\\main\\webapp\\Files\\"+FileName);
out.print(FileName);
if(file.delete()){
	out.print("Deleted");
}
else{
	out.print("No");
}
int i = AdminDao.delete(a);
if(i>0){
%>  
<c:redirect url="<%=pageURL %>">
<c:param name="page" value="1"></c:param>
<c:param name="success" value="Book Sussessfully Deleted">
</c:param>
</c:redirect>
<%
}else{
%>
<c:redirect url="<%=pageURL %>">
<c:param name="page" value="2"></c:param>
<c:param name="error" value="Book Unsussessfully Deleted">
</c:param>
</c:redirect>
<%}%>
</body>
</html>