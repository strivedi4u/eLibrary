<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../head.jsp" %>  
<link rel="stylesheet" href="CSS/ragister.css">
</head>
<body>
<div class="signup-form">
<center><h1 style="font-weight: 800;">eLibrary</h1></center><hr style="height: 4px;background-color: #ffff;border: none;" />
    <form action="./RAGISTER/forgotProcess.jsp" method="post">
		<h2>Forgot Password</h2>
		<p>Please Enter the email for getting the Password!</p>
		<hr>
        <div class="form-group">
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-user"></i></span>
				<input type="text" class="form-control input-lg" name="email" placeholder="Enter Email Address" required="required">
        	</div>
        </div>
       
        <div class="form-group">
			<label class="checkbox-inline"><input type="checkbox" required="required"> I accept the <a href="#">Terms of Use</a> &amp; <a href="#">Privacy Policy</a></label>
		</div>
		<div class="form-group">
            <button type="submit" class="btn btn-primary btn-lg">Verify</button>
        </div>
    </form>
<div class="text-center">Already have an account? <a href="./userLogin">Login here</a></div>
</div>
</body>
</html>


