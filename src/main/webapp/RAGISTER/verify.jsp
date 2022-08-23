<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.mail.SendEmail" %>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("password");
%>
<%
 double num =  Math.random()*1000000;
int rand = (int)num;
int otp = rand;
%>
<%
String to= email;  
String subject= "Email for Create Account";  

String msg ="<div style='font-family: Helvetica,Arial,sans-serif;min-width:1000px;overflow:auto;line-height:2'>";
msg +="<div style='margin:50px auto;width:70%;padding:20px 0'>";
msg += "<div style='border-bottom:1px solid #eee'>";
msg +=  "<a href='' style='font-size:1.4em;color: #00466a;text-decoration:none;font-weight:600;'>eLibrary Team</a>";
msg += "</div>";
msg += "<p style='font-size:1.1em'>Hi, User</p>";
msg += "<p>Your One Time password is </p>";
msg += "<h2 style='background: #00466a;margin: 0 auto;width: max-content;padding: 0 10px;color: #fff;border-radius: 4px;'>";
msg += rand;
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
 SendEmail.email(to, subject, msg); 
 %>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../head.jsp" %>  
<link rel="stylesheet" href="CSS/ragister.css">
</head>
<body>
<div class="signup-form">
<center><h1 style="font-weight: 800;">eLibrary</h1></center><hr style="height: 4px;background-color: #ffff;border: none;" />
    <form action="verifyProcess.jsp" method="post">
		<h2>Verify OTP</h2>
		<p>OTP have Successfully send your Email Address</p>
		<hr>
        <div class="form-group">
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-user"></i></span>
				<input type="text" class="form-control input-lg" name="inputotp" placeholder="Enter OTP" required="required">
        	
        	<input type="hidden" value=<%=otp %>  name="otp">
        	    	<input type="hidden" value=<%=name %> name="name">
        	    	    	<input type="hidden" value=<%=email %>  name="email">
        	    	    	    	<input type="hidden" value=<%=password %>  name="password">
			</div>
        </div>
       
        <div class="form-group">
			<label class="checkbox-inline"><input type="checkbox" required="required"> I accept the <a href="#">Terms of Use</a> &amp; <a href="#">Privacy Policy</a></label>
		</div>
		<div class="form-group">
            <button type="submit" class="btn btn-primary btn-lg">Verify</button>
        </div>
    </form>
	<div class="text-center">Already have an account? <a href="../LOGIN/userLogin">Login here</a></div>
</div>
</body>
</html>


