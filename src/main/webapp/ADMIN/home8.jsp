<%@ page import = "com.shashank.login.*"%>
<%@ page import ="com.shashank.ragister.Ragister"%>
<%@ page import ="com.shashank.ragister.RagisterDao"%>
<link rel="stylesheet" href="../COMPONENTS/CSS/add.css">

<jsp:include page="./COMPONENTS/nav.jsp" >
  <jsp:param name="button2Style" value="" />
</jsp:include>   

<link rel="stylesheet" href="../COMPONENTS/CSS/add.css">


<%
String id = request.getParameter("id");
Ragister r = RagisterDao.getRecordId(Integer.parseInt(id));
String name = r.getName();
String email = r.getEmail();
String password = r.getPassword();
%>

<jsp:include page="../COMPONENTS/userForm.jsp" >
  <jsp:param name="pageURL" value="../ADMIN/home8" />
  <jsp:param name="name" value="<%=name %>" />
  <jsp:param name="email" value="<%=email %>" />
  <jsp:param name="password" value="<%=password %>" />
  <jsp:param name="id" value="<%=id %>" />
  <jsp:param name="submit" value="../PROCESS/updateUser.jsp" />
</jsp:include>   
</body>
</html>