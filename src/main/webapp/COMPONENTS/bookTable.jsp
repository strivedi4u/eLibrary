<%@ page import ="com.shashank.crud.*" %>
<%@ page import ="com.shashank.ragister.*" %>
<%@ page import ="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%

String pageURL = request.getParameter("pageURL");
String adminRequest = request.getParameter("adminRequest");
String userRequest = request.getParameter("userRequest");
String UserId = request.getParameter("UserId");
String stream = request.getParameter("stream");
String search = request.getParameter("search");
String status = request.getParameter("status");

List<Admin> list = AdminDao.getAllRecords(status);
if(stream != null){
	List<Admin> pist = AdminDao.getSearchStream(stream);
	list = pist;
}
else if(search !=null){
	List<Admin> pist = AdminDao.getSearch(search);
	list = pist;
}
else if(userRequest !=null){
	List<Admin> pist = AdminDao.getAllRecordsWithEmail(UserId, status);
	list = pist;
}
else{

}
int i=1;
%>

<script>
$(document).ready(function(){
	$('[data-toggle="tooltip"]').tooltip();
	// Animate select box length
	var searchInput = $(".search-box input");
	var inputGroup = $(".search-box .input-group");
	var boxWidth = inputGroup.width();
	searchInput.focus(function(){
		inputGroup.animate({
			width: "300"
		});
	}).blur(function(){
		inputGroup.animate({
			width: boxWidth
		});
	});
});
</script>

<div class="container">
    <div class="table-responsive">
        <div class="table-wrapper">			
            <div class="table-title">
                <div class="row">
                    <div class="col-xs-4">
						<div class="show-entries">
						</div>						
					</div>
					<div class="col-xs-4">
						<h2 class="text-center"><b><%=request.getParameter("title") %></b></h2>
					</div>
                    <div class="col-xs-4">
                    </div>
                </div>
            </div>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>S.No.</th>
                        <th>Name<i class="fa fa-sort"></i> </th>
                        <th>Author</th>
                        <th>Stream</th>
                        <th>Publication</th>
                       <%if(adminRequest !=null){ %> 
                        <th>User Name<i class="fa fa-sort"></i></th>
                        <th>User Email<i class="fa fa-sort"></i></th>
    		           <%} %>
                        <th style="width:195px;">Actions</th>
                    </tr>
                </thead>
                <tbody>
                
    <% 
    for(Admin l: list){ 
    	

    		
    		String e = l.getUserId();
    		
    		int idm = 99999999;
    		if(e!=null){
    		idm = Integer.parseInt(e);  
    		}
    		//out.print(idm);
    		Ragister r = RagisterDao.getRecordId(idm);
    		//out.print(r + "<br>");
    		//out.print(r.getName());
    	   	
    	
    	
	int p =0;
	String u = l.getUrl();
	String m ="";
	int len = u.length();
	String b ="";
	  if(len !=0){
		   b = u.substring(len-1);
	  }
    String c = "f";
    if(b.equals(c)){
    	p =1;
    	 m = "D:/EclipseWorkspace/Test/src/main/webapp/Files/" + l.getId()+ ".pdf";
    }else{
    	p=2;
     m = l.getUrl();
    }
	%>
                    <tr>
                        <td><%=i++ %></td>
                        <td><%= l.getName()%></td>
                        <td><%= l.getAuthor() %></td>
                        <td><%=l.getStream() %></td>
                        <td><%=l.getPublication() %></td>
                          <%if(adminRequest !=null){
                        	  if(r != null){
                            	  %> 
                         <td><%=r.getName() %></td>
                        <td><%=r.getEmail() %></td>
                            	  
                            	  <%
                        	  }else{
                        		  %>
                                  <td></td>
                                  <td></td>
                                  <%
                        	  }
                        	  } %>
                        <td>
                        
                        
                        <% if(p==1){ %>
                        
                        <form style="display:inline-block;" action="../Test" method="post">
                        <input type="hidden" name ="path" value="<%=m %>" />
                        <button <%= request.getParameter("icon1Style") %> style="border:none; outline:none; background:none;" type="submit" class="view" title="View" data-toggle="tooltip">
                        <i class="material-icons"><%= request.getParameter("icon1")%></i>
                        </button> 
                        </form> 
                        
                        <a <%= request.getParameter("icon2Style") %> href="<%=request.getParameter("icon2url") %>?id=<%= l.getId() %>" class="download" title="Download" data-toggle="tooltip">
                        <i class="material-icons"><%= request.getParameter("icon2")%></i>
                        </a>
                           
                        <%} else if(p==2){ %>
                        <a <%= request.getParameter("icon1Style") %> href="<%=m %>" class="view" title="View" data-toggle="tooltip">
                        <i class="material-icons"><%= request.getParameter("icon1")%></i>
                        </a>
                        <% } %>
                        
                        <form style="display:inline-block;" action="<%=request.getParameter("icon3url") %>" method="post">
                        <input type="hidden" name ="id" value="<%= l.getId() %>" />
                        <input type="hidden" name ="pageURL" value="<%=pageURL%>" />
                        <button <%= request.getParameter("icon3Style") %> style="border:none; outline:none; background:none;" type="submit" class="Edit" title="Edit" data-toggle="tooltip">
                        <i class="material-icons" style="color:#00fffb;">
                         <%= request.getParameter("icon3")%></i> 
                         </button> 
                       
                       
                        </form> 
                        
                        <form style="display:inline-block;" action="../PROCESS/deleteBook.jsp" method="post">
                        <input type="hidden" name ="id" value="<%= l.getId() %>" />
                        <input type="hidden" name ="pageURL" value="<%=pageURL%>" />
                        <button <%= request.getParameter("icon4Style") %> style="border:none; outline:none; background:none;" type="submit" class="Delete" title="Delete" data-toggle="tooltip">
                        <i class="material-icons" style="color:tomato;"><%= request.getParameter("icon4")%></i> 
                        </button> 
                        </form> 
                        
                        <form style="display:inline-block;" action="../PROCESS/statusChange.jsp" method="post">
                        <input type="hidden" name ="id" value="<%= l.getId() %>" />
                        <input type="hidden" name ="pageURL" value="<%=pageURL%>" />
                        <button <%= request.getParameter("icon5Style") %> style="border:none; outline:none; background:none;" type="submit" class="Add" title="Add" data-toggle="tooltip">
                        <i class="material-icons" style="color:purple;"><%= request.getParameter("icon5")%></i> 
                        </button> 
                        </form> 
                       
                    
                        </td>
                    
                    </tr>
                    <% } %>
                    
                </tbody>
            </table>
           
    </div>        
</div>     
</div>