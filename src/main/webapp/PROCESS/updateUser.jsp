<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import = "com.shashank.ragister.RagisterDao" %>  
<jsp:useBean id="u" class="com.shashank.ragister.Ragister"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%=u.getEmail() %>
<%  
String pageURL = request.getParameter("pageURL");
int i= RagisterDao.update(u);  
if(i>0){
%>  
<c:redirect url="<%=pageURL %>">
<c:param name="id" value="${param.id}"></c:param>
<c:param name="page" value="1"></c:param>
<c:param name="success" value="User Details Sussessfully Updated">
</c:param>
</c:redirect>
<%
}else{
%>
<c:redirect url="<%=pageURL %>">
<c:param name="page" value="2"></c:param>
<c:param name="error" value="User Details Unsussessfully Updated">
</c:param>
</c:redirect>
<%}%>