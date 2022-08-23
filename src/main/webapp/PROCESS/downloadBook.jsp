<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.FileInputStream"%>
    <%@page import="java.io.*"%>
    <%@page import="javax.servlet.ServletException"%>
    
    <%@page import="javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%    
String id = request.getParameter("id");
  String filename = id + ".pdf";   
  out.print(filename);
  String filepath = "D:\\EclipseWorkspace\\Test\\src\\main\\webapp\\Files";   
  response.setContentType("APPLICATION/OCTET-STREAM");   
  response.setHeader("Content-Disposition", "attachment; filename=\""
			+ filename + "\"");
  
  java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);  
            
  int i;   
  while ((i=fileInputStream.read()) != -1) {  
    out.write(i);   
  }   
  fileInputStream.close();   
%>  
</body>
</html>