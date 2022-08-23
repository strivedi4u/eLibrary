<%@ page import = "com.shashank.login.*"%>
<link rel="stylesheet" href="../COMPONENTS/CSS/add.css">

<jsp:include page="./COMPONENTS/nav.jsp" >
  <jsp:param name="button4Style" value="style='color:#19AA8D'" />
</jsp:include>   

 <%
String logo=(String)session.getAttribute("session");
logo = "shashank@gmail.com";
int UserId = LoginDao.getId(logo);
%>
    
<jsp:include page="../COMPONENTS/bookForm.jsp" >
   <jsp:param name="pageURL" value="../ADMIN/home4" />
   <jsp:param name="title" value="Add Book" />
   <jsp:param name="submit" value="../PROCESS/addBook.jsp" />
   <jsp:param name="UserId" value="<%=UserId %>" />
   <jsp:param name="status" value="1" />
   
   <jsp:param name="name" value="" />
  <jsp:param name="stream" value="Select Stream" />
  <jsp:param name="author" value="" />
  <jsp:param name="publication" value="" />
  <jsp:param name="url" value="" />
</jsp:include>  
</body>
</html>
