<link rel="stylesheet" href="../COMPONENTS/CSS/table.css">

<jsp:include page="./COMPONENTS/nav.jsp" >
  <jsp:param name="button2Style" value="style='color:#eb4e01'" />
</jsp:include>   

<jsp:include page="../COMPONENTS/searchBook.jsp" >
  <jsp:param name="pageURL" value="../USER/home2" />
  <jsp:param name="style" value="#19AA8D" />
  
  <jsp:param name="icon1" value="&#xE417;" />
  
  <jsp:param name="icon2" value="file_download" />
  <jsp:param name="icon2url" value="../download" />
   
  <jsp:param name="icon3" value="" />
  <jsp:param name="icon3url" value="" />
  <jsp:param name="icon3Style" value="style='display:none;'" />
  
  <jsp:param name="icon4" value="" />
  <jsp:param name="icon4Style" value="style='display:none;'" />
  
  <jsp:param name="icon5" value="" />
  <jsp:param name="icon5Style" value="style='display:none;'" />
  
  <jsp:param name="status" value="1" />
  <jsp:param name="title" value="Books Details" />
</jsp:include>   

