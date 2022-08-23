<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String spageid = "3";
spageid=request.getParameter("page");  
if(spageid==null){
spageid = "3";
 }
int pageid=Integer.parseInt(spageid);  
if(pageid == 1){
%>
<div style="bottom:0px; position:fixed;" class="alert alert-success" role="alert">
<%= request.getParameter("success") %>
</div>
<%
}
else if(pageid == 2){
%>
<div style="bottom:0px; position:fixed;" class="alert alert-danger" role="alert">
<%= request.getParameter("error") %>
</div>
<%
}
else{
}
%>