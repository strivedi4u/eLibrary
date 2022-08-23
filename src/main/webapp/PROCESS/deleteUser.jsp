<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import = "com.shashank.ragister.RagisterDao" %>  
   <jsp:useBean id="a" class="com.shashank.ragister.Ragister"></jsp:useBean>  
<jsp:setProperty property="*" name="a"/>  
<body>
<%
String pageURL = request.getParameter("pageURL");
int i = RagisterDao.delete(a);
if(i>0){
%>  
<c:redirect url="<%=pageURL %>">
<c:param name="page" value="1"></c:param>
<c:param name="success" value="User Details Sussessfully Deleted">
</c:param>
</c:redirect>
<%
}else{
%>
<c:redirect url="<%=pageURL %>">
<c:param name="page" value="2"></c:param>
<c:param name="error" value="User Details Unsussessfully Deleted">
</c:param>
</c:redirect>
<%}%>
</body>
</html>