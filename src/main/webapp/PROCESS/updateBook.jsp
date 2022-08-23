


<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "javax.servlet.http.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "org.apache.commons.io.output.*" %>
<%@ page import = "com.shashank.crud.*"%>
<%
String BookId = null;
String UserId = null;
String status = null;
String name = null;
String stream = null;
String author = null;
String publication = null;
String url = null;
FileInputStream file = null;
String pageURL = null;
String fileURL = null;
int BookIds = 0;
	boolean isMultiPartData = ServletFileUpload.isMultipartContent(request);
	if(isMultiPartData) {
		System.out.println("Multipart data");
		DiskFileItemFactory factory = new DiskFileItemFactory();
		System.out.println("Step 1");
		ServletFileUpload fileUpload = new ServletFileUpload(factory);
		System.out.println("Step 3");
		try {
			List<FileItem> items = fileUpload.parseRequest(request);
			System.out.println("step 2");
			for(FileItem item : items) {
			if(item.isFormField()) {
				String feildName = item.getFieldName();
				if(feildName.equals("name")) {
					name = item.getString();
					System.out.println(name);
				}else if(feildName.equals("fileURL")) {
				    fileURL = item.getString();
					System.out.println(fileURL);
				}else if(feildName.equals("pageURL")) {
				    pageURL = item.getString();
					System.out.println(pageURL);
				}else if(feildName.equals("BookId")) {
				    BookId = item.getString();
				    BookIds = Integer.parseInt(BookId);
					System.out.println(BookId);
				}else if(feildName.equals("UserId")) {
					UserId = item.getString();
					System.out.println(UserId);
				}else if(feildName.equals("status")) {
					status = item.getString();
					System.out.println(status);
				}else if(feildName.equals("stream")) {
					stream = item.getString();
					System.out.println(stream);
				}else if(feildName.equals("author")) {
					author = item.getString();
					System.out.println(author);
				}else if(feildName.equals("publication")) {
					publication = item.getString();
					System.out.println(publication);
				}
				else if(feildName.equals("url")) {
					url = item.getString();
					System.out.println(url);
				
				}
			}else {
				Admin u = new Admin();
				u.setId(BookIds);
				u.setName(name);
				u.setUserId(UserId);
				u.setAuthor(author);
				u.setStream(stream);
				u.setPublication(publication);
				u.setUrl(url);
				u.setStatus(status);

String fileName = item.getName();


				
				if(url.equals("")){
					if(fileName.equals("")){
						if(fileURL.equals("NO")){
						out.println("Error because URL & File is Empty");out.println("<br>");
						out.println("FILE" + fileURL);out.println("<br>");
						    %>
							<c:redirect url="<%=pageURL%>">
							<c:param name="page" value="2"></c:param>
							<c:param name="id" value="<%=BookId %>"></c:param>
							<c:param name="error" value="URL & File Both is Empty">
							</c:param>
							</c:redirect>
							<%
					
					}
						else if(fileURL.equals("YES")){
							int i= AdminDao.update(u);  
							if(i>0){
								out.println("FILEYESS" + fileURL);out.println("<br>");
								 %>
									<c:redirect url="<%=pageURL%>">
									<c:param name="page" value="1"></c:param>
									<c:param name="id" value="<%=BookId %>"></c:param>
									<c:param name="success" value="Book Successfully Updated">
									</c:param>
									</c:redirect>
									<%
							}
							else{
								 %>
									<c:redirect url="<%=pageURL%>">
									<c:param name="page" value="2"></c:param>
									<c:param name="id" value="<%=BookId %>"></c:param>
									<c:param name="error" value="Book UnSuccessfully Updated">
									</c:param>
									</c:redirect>
									<%
							}
						}
					}
					else{
						int i= AdminDao.update(u);  
						  if(i>0){  
						  int ids = u.getId();
				          String s = ids + ".pdf";
				          String fileNames = s;
       				      item.write(new File("D:\\EclipseWorkspace\\Test\\src\\main\\webapp\\Files\\" + fileNames));
				          System.out.println(item.getName());
				          out.println("DONE: Upload file");out.println("<br>");
				          %>
							<c:redirect url="<%=pageURL%>">
							<c:param name="page" value="1"></c:param>
							<c:param name="id" value="<%=BookId %>"></c:param>
							<c:param name="success" value="Book Successfully Updated">
							</c:param>
							</c:redirect>
							<%
                          }else{
					      out.println("ERROR : Not save in DataBase in file");	
					      %>
							<c:redirect url="<%=pageURL%>">
							<c:param name="page" value="2"></c:param>
							<c:param name="id" value="<%=BookId %>"></c:param>
							<c:param name="error" value="Book UnSuccessfully Updated">
							</c:param>
							</c:redirect>
							<%
					     
						  }
					   }
			    }else{
			    	
			    	 int i= AdminDao.update(u);  
					  if(i>0){
						  String FileName = u.getId()+ ".pdf";
						  File files = new File("D:\\EclipseWorkspace\\Test\\src\\main\\webapp\\Files\\"+FileName);
						  out.print(FileName);
						  if(files.delete()){
						  	out.print("Deleted");
						  	
						  }
						  else{
						  	out.print("No");
						  	
						  }
						  out.println("DONE: Upload URL");out.println("<br>");
						 
						  %>
							<c:redirect url="<%=pageURL%>">
							<c:param name="page" value="1"></c:param>
							<c:param name="id" value="<%=BookId %>"></c:param>
							<c:param name="success" value="Book Successfully Updated">
							</c:param>
							</c:redirect>
							<%
							
					  }else{
						  out.println("ERROR : Not save in DataBase in url");	
						  %>
							<c:redirect url="<%=pageURL%>">
							<c:param name="page" value="2"></c:param>
							<c:param name="id" value="<%=BookId %>"></c:param>
							<c:param name="error" value="Book UnSuccessfully Updated">
							</c:param>
							</c:redirect>
							<%
						
					  }
				}
				
			    }
			 
}
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
	}
	else {
		System.out.println("Not Multipart data");
	}
	
	
	
	

%>