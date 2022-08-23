<!-- Modal HTML -->
<div id="#myModal" class="modl fad">
	<div class="modal-dialog modal-lg contact-modal">
		<div class="modal-content">
            <form action="<%=request.getParameter("submit") %>" method="post" enctype="multipart/form-data" >
                <div class="modal-header">				
                    <h4 class="modal-title"><%=request.getParameter("title") %></h4>                  
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">         
                    <input type="hidden" value="<%=request.getParameter("pageURL") %>" name ="pageURL" >                           
                    <input type="hidden" value="<%=request.getParameter("UserId") %>" name ="UserId" >
                    <input type="hidden" value="<%=request.getParameter("status") %>" name ="status">
                    <input type="hidden" value="<%=request.getParameter("id") %>" name ="BookId">
                    <input type="hidden" value="<%=request.getParameter("fileURL") %>" name ="fileURL">
                             <input type="text" class="form-control" id="inputName" value="<%=request.getParameter("name") %>" placeholder="Name" name ="name" required>
                            </div>
                            <div class="form-group">
                    <select name="stream" class="form-control" required>
                    <option value="<%=request.getParameter("stream") %>"><%=request.getParameter("stream") %></option>
                    <option value="Computer">Computer</option>
                    <option value="Mechanical">Mechanical</option>
                    <option value="Accountancy">Accountancy</option>
                    <option value="Textile">Textile</option>
                    <option value="Instrumentation and Control">Instrumentation and Control</option>
                    <option value="Electrical">Electrical</option>
                    <option value="Electronics">Electronics</option>
                    <option value="Civil">Civil</option>
                    <option value="Paint">Paint</option>
                    <option value="Chemical">Chemical</option>
                    <option value="magnagement">Management</option>
                    <option value="Applied Science">Applied Science</option>
                    <option value="PMT">PMT</option>
                    <option value="Others">Others</option>
                    </select>
                            </div>
                            <div class="form-group">
                                 <input class="form-control" value="<%=request.getParameter("publication") %>" id="inputMessage" placeholder="Publication Name" name="publication" required />
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                             <input class="form-control" value="<%=request.getParameter("author") %>" id="inputMessage" placeholder="Author Name" name="author" required />
                            </div>
                            <div class="form-group">
                            <input class="form-control" value="<%=request.getParameter("url") %>" id="inputMessage" name = "url" placeholder="Book Link" />
                            </div>
                             <div class="form-group">
                             <input type="file" class="form-control" value="" id="inputEmail" name="file" placeholder="Upload Book">
                            </div>
                        </div>
                        
                    </div>                    
                </div>
                
                <div class="modal-footer">
                        <!-- input type="button" class="btn btn-link" data-dismiss="modal" value="Cancel" --> 
                    	<input type="submit" class="btn btn-primary" style="background-color:${param.addStyle};" value="Send">
                </div>
            </form>
		</div>
	</div>
</div>
