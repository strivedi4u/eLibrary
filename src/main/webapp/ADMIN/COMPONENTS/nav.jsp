<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../../head.jsp" %>  
<link rel="stylesheet" href="../COMPONENTS/CSS/nav.css">
</head> 
<body>
<%
String logo=(String)session.getAttribute("session");
logo = "shashank@gmail.com";
%>
<jsp:include page="../../COMPONENTS/nav.jsp" >
  <jsp:param name="logoname" value="<%=logo %>" />
  
  <jsp:param name="button1" value="Home" />
  <jsp:param name="button1Link" value=" ./home1" />
  
  <jsp:param name="button2" value="Search" />
  <jsp:param name="button2Link" value=" ./home2" />
  
  <jsp:param name="button3" value="All Books" />
  <jsp:param name="button3Link" value=" ./home3" />
  
  <jsp:param name="button4" value="Add Book" />
  <jsp:param name="button4Link" value=" ./home4" />
  
  <jsp:param name="button5" value="User Details" />
  <jsp:param name="button5Link" value="./home5" />
  
  <jsp:param name="button6" value="CheckRequest" />
  <jsp:param name="button6Link" value="./home6" />
    
  <jsp:param name="logout" value="Logout" />
  <jsp:param name="logurl" value="../PROCESS/logout.jsp" />
</jsp:include> 
  