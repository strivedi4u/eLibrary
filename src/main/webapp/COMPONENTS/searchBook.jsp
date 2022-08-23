<!DOCTYPE html>
<html>
<head>
<%@ include file="../head.jsp" %>  
<link rel="stylesheet" href="../COMPONENTS/CSS/search.css"> 
<link rel="stylesheet" href="../COMPONENTS/CSS/table.css">
</head>
<body>
<!-- The form -->
<div align="center">
<form class="example" style="width:90%;" action="" method="POST" >
  <input style="outline:none; height:47px;" type="text" placeholder="Search Book Name Here" name="search">
  <button type="submit" style="background-color:<%=request.getParameter("style")%>; height:47px;"><i class="fa fa-search"></i></button>
</form>
</div>
<%
String search = request.getParameter("search");
if(search == null){
	
}
else{
	%>
<jsp:include page="../COMPONENTS/bookTable.jsp" >
  <jsp:param name="search" value="<%=search %>" />  
  <jsp:param name="status" value="1" />
</jsp:include> 
	<%
}
%>

</body>
</html>