<%@ page import = "com.shashank.login.*"%>
<link rel="stylesheet" href="../COMPONENTS/CSS/table.css">

<jsp:include page="./COMPONENTS/nav.jsp" >
  <jsp:param name="button5Style" value="style='color:#19AA8D'" />
</jsp:include>   

<jsp:include page="../COMPONENTS/userTable.jsp" >
  <jsp:param name="pageURL" value="../ADMIN/home5" />
  <jsp:param name="icon1" value="" />
  <jsp:param name="icon5" value="&nbsp;&#xE254;" />
   <jsp:param name="icon5url" value="../ADMIN/home8" />
  <jsp:param name="icon3" value="&#xE872;" />
</jsp:include>   
</body>
</html>
