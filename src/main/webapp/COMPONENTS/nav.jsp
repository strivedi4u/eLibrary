<nav class="navbar navbar-default navbar-expand-lg navbar-light">
	<div class="navbar-header">
		<a class="navbar-brand" href="#"><b style="color:${param.navStyle};"><%= request.getParameter("logoname")%></b></a>  		
		<button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
			<span class="navbar-toggler-icon"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
	</div>
	
	<div id="navbarCollapse" class="collapse navbar-collapse">
		<ul class="nav navbar-nav">
			<li><a <%= request.getParameter("button1Style")%> href="<%= request.getParameter("button1Link")%>"><%= request.getParameter("button1")%></a></li>
			<li><a <%= request.getParameter("button2Style")%> href="<%= request.getParameter("button2Link")%>"><%= request.getParameter("button2")%></a></li>	
			<li><a <%= request.getParameter("button3Style")%> href="<%= request.getParameter("button3Link")%>"><%= request.getParameter("button3")%></a></li>	
			<li><a <%= request.getParameter("button4Style")%> href="<%= request.getParameter("button4Link")%>"><%= request.getParameter("button4")%></a></li>						
		    <li><a <%= request.getParameter("button5Style")%> href="<%= request.getParameter("button5Link")%>"><%= request.getParameter("button5")%></a></li>	
		    <li><a <%= request.getParameter("button6Style")%> href="<%= request.getParameter("button6Link")%>"><%= request.getParameter("button6")%></a></li>					
	
		</ul>
		
		<form class="navbar-form form-inline navbar-right ml-auto">
			<div class="input-group search-box">
	        	&nbsp;
				<span class="input-group-btn">
					<a href="<%= request.getParameter("logurl")%>"><button type="button" class="btn btn-primary"  style="background-color:${param.navStyle}; border:none" ><span><%= request.getParameter("logout")%></span></button></a>
				</span>
			</div>
		</form>		
		
	</div>
</nav>               