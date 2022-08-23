<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ page import = "com.shashank.ragister.Ragister" %>
<%@ page import = "com.shashank.ragister.RagisterDao" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../head.jsp" %>  
</head>
<body>
<%
String otp = request.getParameter("otp");
String name = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("password");
String inputotp = request.getParameter("inputotp");
%>
<%
if(otp.equals(inputotp)){
Ragister r = new Ragister();
r.setEmail(email);
r.setPassword(password);
r.setName(name);
int i =0;
try{
i= RagisterDao.save(r); 
}
catch(Exception e){
	%>

		<c:redirect url="../ragister">
		<c:param name="page" value="2"></c:param>
		<c:param name="error" value="Email is already exist"></c:param>
		</c:redirect>

	<% 
}
if(i>0){
%>

		<c:redirect url="../userLogin">
		<c:param name="page" value="1"></c:param>
		<c:param name="success" value="Account is Successfully Created."></c:param>
		</c:redirect>
	<%
}
else{
%>
 
		<c:redirect url="../ragister">
		<c:param name="page" value="2"></c:param>
		<c:param name="error" value="Unfortunately Error Occupied."></c:param>
		</c:redirect>


<%
}
}
else{
%>

		<c:redirect url="../ragister">
		<c:param name="page" value="2"></c:param>
		<c:param name="error" value="OTP is not Matched. Please write correct OTP."></c:param>
		</c:redirect>
<%
}
%>
</body>
</html>