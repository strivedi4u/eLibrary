<%@ page import = "com.shashank.crud.*"%>
<link rel="stylesheet" href="../COMPONENTS/CSS/add.css">
<jsp:include page="./COMPONENTS/nav.jsp" >
  <jsp:param name="button4Style" value="style='color:#eb4e01'" />
</jsp:include>   
<%
String logo=(String)session.getAttribute("user");
logo = "trivedi2u@gmail.com";
int UserId = AdminDao.getRecordByEmail(logo);
%>
<jsp:include page="../COMPONENTS/bookForm.jsp" >
   <jsp:param name="pageURL" value="../USER/home4" />
   <jsp:param name="addStyle" value="#19AA8D" />
   <jsp:param name="title" value="Add Book" />
   <jsp:param name="submit" value="../PROCESS/addBook.jsp" />
   <jsp:param name="UserId" value="<%=UserId %>" />
   <jsp:param name="status" value="0" />
   
   <jsp:param name="name" value="" />
  <jsp:param name="stream" value="Select Stream" />
  <jsp:param name="author" value="" />
  <jsp:param name="publication" value="" />
  <jsp:param name="url" value="" />
</jsp:include>  
