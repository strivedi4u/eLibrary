<%@ page import ="com.shashank.ragister.*"%>
<link rel="stylesheet" href="../COMPONENTS/CSS/add.css">
<jsp:include page="./COMPONENTS/nav.jsp" >
  <jsp:param name="button6Style" value="style='color:#eb4e01'" />
</jsp:include>   

<%
String logo=(String)session.getAttribute("user");
logo = "trivedi2u@gmail.com";
Ragister a = RagisterDao.getRecordByEmail(logo);
int b = a.getId();

Ragister r = RagisterDao.getRecordId(b);
String name = r.getName();
String email = r.getEmail();
String password = r.getPassword();
%>


  
<jsp:include page="../COMPONENTS/userForm.jsp" >
  <jsp:param name="pageURL" value="../USER/home6" />
  <jsp:param name="userStyle" value="#19AA8D" />
  <jsp:param name="name" value="<%=name %>" />
  <jsp:param name="email" value="<%=email %>" />
  <jsp:param name="password" value="<%=password %>" />
  <jsp:param name="id" value="<%=b %>" />
  <jsp:param name="disabled" value="readonly" />
  <jsp:param name="submit" value="../PROCESS/updateUser.jsp" />
</jsp:include>  
  
  
</body>
</html>