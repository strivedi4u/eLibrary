<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../head.jsp" %>  
<link rel="stylesheet" href="COMPONENTS/CSS/slider.css">
<link rel="stylesheet" href="COMPONENTS/CSS/nav.css">
</head>
<body>
<jsp:include page="COMPONENTS/nav.jsp" >
  <jsp:param name="logoname" value="eLibrary" />
  <jsp:param name="button1" value="" />
  <jsp:param name="button2" value="" />
  <jsp:param name="button3" value="" />
  <jsp:param name="button4" value="" />
  <jsp:param name="logout" value="LogIN" />
   <jsp:param name="logurl" value="./userLogin" />
</jsp:include> 
<%@ include file="../COMPONENTS/slider.jsp" %> 

</body>
</html>