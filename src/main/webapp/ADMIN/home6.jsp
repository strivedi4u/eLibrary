<link rel="stylesheet" href="../COMPONENTS/CSS/table.css">

<jsp:include page="./COMPONENTS/nav.jsp" >
  <jsp:param name="button6Style" value="style='color:#19AA8D'" />
</jsp:include>   

 
<jsp:include page="../COMPONENTS/bookTable.jsp" >
  <jsp:param name="pageURL" value="../ADMIN/home6" />
  <jsp:param name="adminRequest" value="YES" />
  
  <jsp:param name="icon1" value="&#xE417;" />
  <jsp:param name="icon2" value="file_download" />
  <jsp:param name="icon2url" value="../download" />
    
  <jsp:param name="icon3" value="&#xE254;" />
  <jsp:param name="icon3url" value="../ADMIN/home7" />
  

  <jsp:param name="icon4" value="&#xE872;" />
  <jsp:param name="icon5" value="add_circle" />

  
  <jsp:param name="status" value="0" />
  <jsp:param name="title" value="Books Details" />
</jsp:include>   
</body>
</html>
