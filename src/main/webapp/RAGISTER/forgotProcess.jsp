<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import = "com.shashank.ragister.Ragister" %>
<%@ page import = "com.shashank.ragister.RagisterDao" %>
<%@ page import = "com.mail.SendEmail" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../head.jsp" %>  
</head>
<body>
<%
String to=request.getParameter("email");  
String subject= "Forgot Password message";  
String output = "";
String outs= "";
//String msg= "Your Email is not Ragistered";  
%>
<%
String mail = request.getParameter("email");
Ragister r = RagisterDao.getRecordById(mail);
if(r != null){
	outs = "Your Password is";
	output = r.getPassword();
}
else{
	output = "Your Email is not Ragistered";
}

String msg ="<div style='font-family: Helvetica,Arial,sans-serif;min-width:1000px;overflow:auto;line-height:2'>";
msg +="<div style='margin:50px auto;width:70%;padding:20px 0'>";
msg += "<div style='border-bottom:1px solid #eee'>";
msg +=  "<a href='' style='font-size:1.4em;color: #00466a;text-decoration:none;font-weight:600;'>eLibrary Team</a>";
msg += "</div>";
msg += "<p style='font-size:1.1em'>Hi, User</p>";
msg += "<p>"+outs+"</p>";
msg += "<h2 style='background: #00466a;margin: 0 auto;width: max-content;padding: 0 10px;color: #fff;border-radius: 4px;'>";
msg += output;
msg += "</h2>";
msg += "<p style='font-size:0.9em;'>Regards,<br />eLibray Team</p>";
msg += "<hr style='border:none;border-top:1px solid #eee' />";
msg += "<div style='float:right;padding:8px 0;color:#aaa;font-size:0.8em;line-height:1;font-weight:300'>";
msg +=  "<p>eLibrary</p>";
msg +=  "<p>Uttar Pradesh</p>";
msg +=   "<p>India</p>";
msg += "</div>";
msg += "</div>";
msg += "</div>";


%>
<%
SendEmail.email(to, subject, msg ); 
%>
	
		<c:redirect url="../userLogin">
		<c:param name="page" value="1"></c:param>
		<c:param name="success" value="Password is sent on Ragistered Email"></c:param>
		</c:redirect>
		
</body>
</html>