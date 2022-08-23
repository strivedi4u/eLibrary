<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../head.jsp" %>  
<link rel="stylesheet" href="CSS/ragister.css">
</head>
<body>
<div class="signup-form">
<center><h1 style="font-weight: 800;">eLibrary</h1></center><hr style="height: 4px;background-color: #ffff;border: none;" />
    <form action="./RAGISTER/verify.jsp" method="post">
		<h2>Sign Up</h2>
		<p>Please fill in this form to create an account!</p>
		<hr>
        <div class="form-group">
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-user"></i></span>
				<input type="text" class="form-control" name="name" placeholder="Enter Your Name" required="required">
			</div>
        </div>
        <div class="form-group">
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-paper-plane"></i></span>
				<input type="email" class="form-control" name="email" placeholder="Enter Your Email Address" required="required">
			</div>
        </div>
		<div class="form-group">
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-lock"></i></span>
				<input type="password" class="form-control" name="password" placeholder="Enter Your Password" required="required">
			</div>
        </div>
	
        <div class="form-group">
			<label class="checkbox-inline"><input type="checkbox" required="required"> I accept the <a href="#">Terms of Use</a> &amp; <a href="#">Privacy Policy</a></label>
		</div>
		<div class="form-group">
            <button type="submit" class="btn btn-primary btn-lg">Sign Up</button>
             <a href="./adminLogin" class="pull-right">Admin Account</a>
        </div>
    </form>
	<div class="text-center">Already have an account? <a href="./userLogin">Login here</a></div>
</div>
</body>
</html>