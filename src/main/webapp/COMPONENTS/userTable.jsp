<%@ page import ="com.shashank.ragister.*" %>
<%@ page import ="java.util.*" %>
<link rel="stylesheet" href="../COMPONENTS/CSS/table.css">
</head> 
<body>
<%
String pageURL = request.getParameter("pageURL");
List<Ragister> list = RagisterDao.getAllRecords();
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
						<h2 class="text-center">User <b>Details</b></h2>
					</div>
                    <div class="col-xs-4">
                    </div>
                </div>
            </div>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>S.No.</th>
                        <th>Name <i class="fa fa-sort"></i></th>                      
                        <th>Email</th>
                        <th>Password</th>                      
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
<% for(Ragister l: list){ 	%>
                    <tr>
                        <td><%=i++ %></td>
                        <td><%= l.getName()%></td>
                        <td><%= l.getEmail() %></td>
                        <td><%=l.getPassword() %></td>
                        
                        
                        <td>
                            <a href="" class="view" title="View" data-toggle="tooltip"><i class="material-icons"><%= request.getParameter("icon1")%></i></a>
                        
                        <form style="display:inline-block;" action="<%=request.getParameter("icon5url") %>" method="post">
                        <input type="hidden" name ="id" value="<%= l.getId() %>" />
                        <input type="hidden" name ="pageURL" value="<%=pageURL%>" />
                        <button <%= request.getParameter("icon5Style") %> style="border:none; outline:none; background:none;" type="submit" class="Edit" title="Edit" data-toggle="tooltip">
                        <i class="material-icons" style="color:#00fffb;">
                         <%= request.getParameter("icon5")%></i> 
                         </button> 
                       
                       
                        </form> 
                        
                        <form style="display:inline-block;" action="../PROCESS/deleteUser.jsp" method="post">
                        <input type="hidden" name ="id" value="<%= l.getId() %>" />
                        <input type="hidden" name ="pageURL" value="<%=pageURL%>" />
                        <button <%= request.getParameter("icon3Style") %> style="border:none; outline:none; background:none;" type="submit" class="Delete" title="Delete" data-toggle="tooltip">
                        <i class="material-icons" style="color:tomato;"><%= request.getParameter("icon3")%></i> 
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
