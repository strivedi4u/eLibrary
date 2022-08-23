<%@ page import = "com.shashank.login.*"%>
<%@ page import = "com.shashank.crud.*"%>
<link rel="stylesheet" href="../COMPONENTS/CSS/add.css">
<jsp:include page="./COMPONENTS/nav.jsp" >
  <jsp:param name="button1Style" value="" />
</jsp:include>  
<%
String logo=(String)session.getAttribute("user");
logo = "trivedi2u@gmail.com";
int UserId = AdminDao.getRecordByEmail(logo);

String id = request.getParameter("id");
int idNum = Integer.parseInt(id);
Admin a = AdminDao.getRecordById(idNum);

String url1 = a.getUrl();
String fileURL = "";
int l = url1.length();
url1 = url1.substring(l-1);
String url2 = "f";
String url ="";
if(url1.equals(url2)){	
	fileURL = "YES";
}else{
	url = a.getUrl();
	fileURL = "NO";
}

%>  
<jsp:include page="../COMPONENTS/bookForm.jsp" >
  <jsp:param name="pageURL" value="../USER/home7" />
  <jsp:param name="addStyle" value="#19AA8D" />
  <jsp:param name="title" value="Update Book" />
  <jsp:param name="submit" value="../PROCESS/updateBook.jsp" />
  <jsp:param name="UserId" value="<%=UserId %>" />
  <jsp:param name="status" value="0" />
  
  <jsp:param name="name" value="<%=a.getName() %>" />
  <jsp:param name="stream" value="<%=a.getStream() %>" />
  <jsp:param name="author" value="<%=a.getAuthor() %>" />
  <jsp:param name="publication" value="<%=a.getPublication() %>" />
  <jsp:param name="url" value="<%=url %>" />
  <jsp:param name="fileURL" value="<%=fileURL %>" />
</jsp:include>    


