<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="flat1.css">
    <link rel="stylesheet" href="card.css">
  <style>
  body {
 
      position: relative;  
  }
  #section1 {padding-top:40px;height:600px;}
  #section2 {padding-top:40px;height:600px;}
  #section3 {padding-top:90px;height:900px;}
  #section4 {padding-top:90px;height:900px;}
  #section5 {padding-top:90px;height:900px;}
  
  
  </style>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">FlatBooking</a>
    </div>
    <div>
      <div class="collapse navbar-collapse" id="myNavbar">
       
        <ul class="nav navbar-nav navbar-center">
     
          <li><a href="index.jsp#section1">Home</a></li>
          <li><a href="index.jsp#section2">About Us</a></li>
          <li><a href="index.jsp#section3">Contact Us</a></li>
         </ul>
		  
		  </div>
    </div>
  </div>
</nav>  
<br><br><br><br>


 <c:forEach var="sellerdetails" items="${sellerdetails}">
 
 			<h4>Seller Name:${sellerdetails.userName } </h4>
 
			<h4>Seller Phone Number:${sellerdetails.phoneNumber }</h4>
				
				
</c:forEach>

<div class="row">
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 templatemo-content-wrapper">
			<div class="templatemo-content">

				<section id="templatemo-page8-text" class="active">
					<div class="col-sm-12 col-md-12">
	<c:forEach var="list" items="${list}">
						<div class="row">
							<div class="col-sm-10 col-md-10">
							
							<!-- 	<div class="aler_for_form_submit alert-dismissable">Registration successfull</div> -->
							
								
								<h2 align="center">CONTACT OWNER</h2>
								
							</div>
							<div class="clearfix"></div>
							<br>
						</div>
						 <form class="" action="addViewDetails.do" method="GET">   
						
						 <input type="text" class="form-control input-sm" name="sellerId" id="sellerId" value="${list.sellerId}" style="display:none;width:300px;">
              <input type="text" class="form-control input-sm" name="flatNumber" id="flatNumber" value="${list.flatNumber}" style="display:none;width:300px;">
                <input type="text" class="form-control input-sm" name="apartmentName" id="apartmentName" value="${list.apartmentName}" style="display:none;width:300px;"> 
         
							<div class="col-sm-10 col-md-10">
								<div class="col-sm-10 col-md-10">
									
									<div class="form-group">
										<label class="col-sm-5 control-label"> Name <span
											style="color: #d42e2e;">*</span></label>
										<div class="col-sm-7">
											 <input type="text" class="form-control" name="name" id="name" placeholder="Enter Name"required style="width:300px;">
            
										</div>

									</div>
										<br><br>
									<div class="form-group">
										<label class="col-sm-5 control-label">Phone Number<span
											style="color: #d42e2e;">*</span></label>
										<div class="col-sm-7">
											 <input type="text" class="form-control" name="phoneNumber" id="phoneNumber" placeholder="Enter phoneNumber"required style="width:300px;">
       
										</div>
									</div>
										<br><br>
								<div class="form-group">
										<label class="col-sm-5 control-label">EmailId<span
											style="color: #d42e2e;">*</span></label>
										<div class="col-sm-7">
							 <input type="email" class="form-control"  name="emailId"id="emailId" placeholder="Enter EmailId" required style="width:300px;">
            </div></div>
									
								<br><br>
								<div class="col-md-12" align="center">
							
							<br>
								
								
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<button type="submit">Get Owner Details</button>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									
									
								</div>
							</div>
</div>
						</form>
						</c:forEach>
						<div class="clearfix"></div>
					</div>
				</section>
			</div>
</div></div>
















<%-- 



<div id="section1" class="container">
<div class="col-sm-12 col-md-12">

						<div class="row">
							<div class="col-sm-12 col-md-12">
				
				<c:forEach var="list" items="${list}">
				  <form class="" action="addViewDetails.do" method="GET">   
<h1 align="center"><i style="color: black">CONTACT OWNER</i>
				</h1>
					
			 <input type="text" class="form-control input-sm" name="sellerId" id="sellerId" value="${list.sellerId}" style="display:;width:300px;">
              <input type="text" class="form-control input-sm" name="flatNumber" id="flatNumber" value="${list.flatNumber}" style="display:none;width:300px;">
                <input type="text" class="form-control input-sm" name="apartmentName" id="apartmentName" value="${list.apartmentName}" style="display:none;width:300px;"> 
         	<div class="col-sm-12 col-md-12">

						<div class="row">
							<div class="col-sm-12 col-md-12">
            <div class="form-group">
           
              <label for="name">Name</label>
              <input type="text" class="form-control" name="name" id="name" placeholder="Enter Name"required style="width:300px;">
            </div>
            </div></div>
           <div class="col-sm-12 col-md-12">

						<div class="row">
							<div class="col-sm-12 col-md-12">
             <div class="form-group">
              <label for="phoneNumber"><span class="glyphicon glyphicon-user"></span> phoneNumber</label>
              <input type="text" class="form-control" name="phoneNumber" id="phoneNumber" placeholder="Enter phoneNumber"required style="width:300px;">
            </div>
            </div></div>
            
           <div class="col-sm-12 col-md-12">

						<div class="row">
							<div class="col-sm-12 col-md-12">
            <div class="form-group">
              <label for="email"><span class="glyphicon glyphicon-eye-open"></span> EmailId</label>
              <input type="email" class="form-control"  name="emailId"id="emailId" placeholder="Enter EmailId" required style="width:300px;">
            </div>
            </div></div>
            <br><br>
        <div class="container"> 
       <input type="submit"> Get Owner Details
           <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>    
              
  
              <br><br>
              
 
 
          </form>
          
          
</c:forEach>

</div>

</div></div>

			






 <div class=container>

 <br><br><br><br><br>
<div class="col-md-6 col-md-6">
<br>
	   <h4 align="center"> CONTACT OWNER</h4>
              <form class="" action="addViewDetails.do" method="GET">   
         <input type="text" class="form-control input-sm" name="sellerId" id="sellerId" value="${view.sellerId}" style="display: ;">
              <input type="text" class="form-control input-sm" name="flatNumber" id="flatNumber" value="${view.flatNumber}" style="display: ;">
                <input type="text" class="form-control input-sm" name="apartmentName" id="apartmentName" value="${view.apartmentName}" style="display: ;"> 
            <div class="form-group">
              <label for="name">Name</label>
              <input type="text" class="form-control" name="name" id="name" placeholder="Enter Name"required>
            </div>
            
             <div class="form-group">
              <label for="phoneNumber"><span class="glyphicon glyphicon-user"></span> phoneNumber</label>
              <input type="text" class="form-control" name="phoneNumber" id="phoneNumber" placeholder="Enter phoneNumber"required>
            </div>
            
            
            
            
            <div class="form-group">
              <label for="email"><span class="glyphicon glyphicon-eye-open"></span> EmailId</label>
              <input type="email" class="form-control"  name="emailId"id="emailId" placeholder="Enter EmailId" required>
            </div>
            
              <button type="submit" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-off"></span> GET OWNER DETAILS</button>
          </form>
        </div>
       
	 
    </div>
 
  --%>
  
 




 

</body>

</html>