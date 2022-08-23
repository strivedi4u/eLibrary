<!-- Modal HTML -->
<div id="#myModal" class="modl fad">
	<div class="modal-dialog modal-lg contact-modal">
		<div class="modal-content">
            <form action="${param.submit}" method="post">
                <div class="modal-header">				
                    <h4 class="modal-title">Update Student Details</h4>
                   
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
        <input type="hidden" value="${param.pageURL}" name ="pageURL"/>                    
        <input type="text" class="form-control" id="inputName" placeholder="Enter Name" value="${param.name}" name ="name" required/>
                            </div>
                            <div class="form-group">
                                <input type="email" ${param.disabled} class="form-control" id="inputEmail" placeholder="Enter Email" value="${param.email}"  name="email" required/>
                            </div>
                         
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <input  type ="text" class="form-control" id="inputMessage" placeholder="Enter Your Password" name="password" value="${param.password}" required />
                            </div>
                           <div class="form-group">
                                <input type ="hidden"  class="form-control" id="inputMessage" placeholder="Author Name" name="id" value="${param.id}" required />
                            </div>
                        </div>
                    </div>                    
                </div>
                <div class="modal-footer">
                                   <!-- input type="button" class="btn btn-link" data-dismiss="modal" value="Cancel" --> 
                    	<input type="submit" class="btn btn-primary" style="background-color:${param.userStyle};" value="Done">
                    </div>
            </form>
		</div>
	</div>
</div>
