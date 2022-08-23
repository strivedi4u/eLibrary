<!DOCTYPE html>
<html>
<head>
<%@ include file="../head.jsp" %>  
<link rel="stylesheet" href="../COMPONENTS/CSS/table.css">
</head>
<body>
<form action="" method="POST" >
			<div align="center">
                    <select name="stream" style="color:black; width:90%;" class="form-control" id="eMail">
                    <option value="Others">Select Stream</option>
                    <option value="Computer">Computer</option>
                    <option value="Mechanical">Mechanical</option>
                    <option value="Accountancy">Accountancy</option>
                    <option value="Textile">Textile</option>
                    <option value="Instrumentation and Control">Instrumentation and Control</option>
                    <option value="Electrical">Electrical</option>
                    <option value="Electronics">Electronics</option>
                    <option value="Civil">Civil</option>
                    <option value="Paint">Paint</option>
                    <option value="Chemical">Chemical</option>
                    <option value="magnagement">Management</option>
                    <option value="Applied Science">Applied Science</option>
                    <option value="PMT">PMT</option>
                    <option value="Others">Others</option>
                    </select>
			</div>			
			<div align="center">
				<div class="form-group"><br>
				<button name="search" style="background-color:<%=request.getParameter("style") %>; height:40px; border-redius:50px; width:50%; color:white;" type="submit" class="btn btn-secondry">
				Search Book</button>
				</div>
			</div>
</form>

<%
String stream = request.getParameter("stream");
if(stream == null){
	
}
else{
	%>
<jsp:include page="../COMPONENTS/bookTable.jsp" >
  <jsp:param name="stream" value="<%=stream %>" />  
  <jsp:param name="status" value="1" />
</jsp:include> 
	<%
}
%>

</body>
</html>