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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
    <link rel="stylesheet" href="flat1.css">
  <style>
  body {
      background-color: white;
      position: relative; 
  }
  #section1 {padding-top:40px;height:600px;color: #fff; background-color: white;}
  #section2 {padding-top:90px;height:900px;color: #fff; background-color: white;}
  #section3 {padding-top:40px;height:900px;color: #fff; background-color: white;}
  #section4 {padding-top:40px;height:900px;color: #fff; background-color: white;}
  #section5 {padding-top:40px;height:900px;color: #fff; background-color: white;}
  
 
  </style>
</head>
<body >
<section>

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
          
          <li><a href="index.jsp#section3">Contact</a></li>
             </ul>
            <!-- Trigger the modal with a button -->

				
		
			
		
         
        
      </div>
    </div>
  </div>
</nav>


<br>
<br>
<br>

<nav class="navbar navbar-inverse  ">
  <div class="container-fluid">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>                        
      </button>
     
    </div>
    <div>
     
      <div class="collapse navbar-collapse" id="myNavbar">
       
        <ul class="nav navbar-nav navbar-center">
     
        
          <li><a href="#section1">Post Your Flat </a></li>
          
	  
          <li><a href="#section2" >View Posted Flat </a></li>
       
          <li><a href="#section3">Update Posted Flat</a></li>
          
          
             </ul>
            <!-- Trigger the modal with a button -->

				
		
			
		
         
        
      </div>
    </div>
  </div>
</nav>

 


<div id="section1" class="container-fluid">



<center><h2 style="color: black">Post your Flat</h2></center>

<br>
<br>
<br>


 <form class="" action="addflat.do" method="get" name="addflat">
 
<%--  <input type="text" class="form-control input-sm" name="sellerId"id="sellerId" value="${Status} " style="display: none;">
	   --%>
 
<div class=container>


	 
<div class="col-md-12 col-sm-12">
	<div class="form-group col-md-6 col-sm-6">
	   
            <label for="city" style="color: black">CITY</label>
            <input type="text" class="form-control input-sm" name="city"id="city" placeholder="Enter city">
        </div>
        <div class="form-group col-md-6 col-sm-6">
            <label for="loction"style="color: black">LOCATION</label>
            <input type="text" class="form-control input-sm"name="location" id="loction" placeholder="Enter location">
        </div>

        
        
        
        
	<div class="form-group col-md-6 col-sm-6">
            <label for="ApartmentName"style="color: black">APARTMENT NAME</label>
            <input type="text" class="form-control input-sm" name="apartmentName" id="apartmentName" placeholder="Enter ApartmentName">
        </div>
	<div class="form-group col-md-6 col-sm-6">
            <label for="Flatnumber"style="color: black">FLAT NUMBER</label>
            <input type="text" class="form-control input-sm" id="flatNumber" name="flatNumber"  placeholder="Enter FlatNumber">
        </div>
	
	
	<div class="form-group col-md-6 col-sm-6">
            <label for="Flattype"style="color: black">FLAT TYPE</label>
            
             
			
										<select name="flatType" id="flattype"class="form-control"  >
											<option value="-1" selected>select..</option>
											<option value="1BHK">1BHK</option>
											<option value="2BHK">2BHK</option>
											<option value="3BHK">3BHK</option>
											
											
										</select>
            
           
        </div>
       
	 
	
	  <div class="form-group col-md-6 col-sm-6">
 <input type="text" class="form-control input-sm"  readonly="readonly" name="sellerId"id="sellerId" value="${list1.sellerId} "style="display: none;" ></div> 
	  
	 
	 <div class="form-group col-md-6 col-sm-6">
            <label for="Squarefeet"style="color: black">SQUARE FEET</label>
            <input type="text" class="form-control input-sm" name="squareFeet"id="squarefeet" placeholder="Enter squarefeet">
        </div>
  
	<div class="form-group col-md-6 col-sm-6">
            <label for="Flatprice"style="color: black">FLAT PRICE</label>
            <input type="text" class="form-control input-sm" id="flatPrice" name="flatPrice"  placeholder="Enter FlatPrice">
        </div>
        
        <br>
        <br>
        <div class="col-sm-6"> 
<input type="file" name="i_file" id="i_file" tabindex="6" value="" required>Image size should be 570 x 570 pixels. Should be inside images/</input> 
</div>
        <div class="form-group"> 
        <div class="row"> 
        <div class="col-sm-6"> 
        <img id="up" src="" width="200" style="display:none;" /> 
        </div> <div class="col-sm-6"> 
        <input  id="myField" style="display: none;" name="flatimage" value="images/" class="form-control"/> 
        </div> </div> </div>
      
         </div>
       
       
       
       <div class="form-group col-md-6 col-sm-6">
            <label for="Select the Status"style="color: black">Enter Status</label>
            			<select name="status" id="status"class="form-control">
						<option value="-1" selected>select..</option>
						<option value="Available">Available</option>
						<option value="Booked">Booked</option>
						
											
											
										</select>
            
           
        </div>
	
	 <div class="col-md-6" align="center">
	 
	<br><br>

			<input type="submit" class="btn btn-primary" value="submit"/>
			

</div>
	






</form>
</div>

<script type="text/javascript">

$('#i_file').change( function(event) { var tmppath = URL.createObjectURL(event.target.files[0]); $("#up").fadeIn("fast").attr('src',URL.createObjectURL(event.target.files[0])); }); document.getElementById('i_file').onchange = uploadOnChange; function uploadOnChange() { var filename = this.value; var lastIndex = filename.lastIndexOf("\\"); if (lastIndex >= 0) { filename = filename.substring(lastIndex + 1); } document.getElementById('myField').value = document.getElementById('myField').value + filename; } $(function() { $('#i_file').click(function(e) { document.getElementById('myField').value = "images/"; }); });

</script>



 <div id="section2" class="container-fluid">
 
 
 
 
<form action="view.do" >
 <input type="text" class="form-control input-sm" name="sellerId" id="sellerId" value="${list1.sellerId}"style="display: none;">
<center><input type="submit" class="btn btn-primary" value="View Your FlatDetails"/></center>
</form>
<br>
<br>
<br>
<br>


<div align="center">
												<table  border="5" cellpadding="5">
												<tr>
												<th  style="color: black">SellerID</th>
												<th style="color: black">City</th>
												<th style="color: black">Location</th>
												<th style="color: black">ApartmentName</th>
												<th style="color: black">FlatNumber</th>
												<th style="color: black">FlatType</th>
												<th style="color: black">SquareFeet</th>
												<th style="color: black">FlatPrice</th>
												
												</tr>


										      <c:forEach var="flat" items="${flt}">
											   <tr>
												<td style="color: black"><c:out value="${flat.sellerId}" /></td>
												<td style="color: black"><c:out value="${flat.city}" /></td>
												<td style="color: black"><c:out value="${flat.location}" /></td>
												<td style="color: black"><c:out value="${flat.apartmentName}" /></td>
												<td style="color: black"><c:out value="${flat.flatNumber}" /></td>
												<td style="color: black"><c:out value="${flat.flatType}" /></td>
												<td style="color: black"><c:out value="${flat.squareFeet}" /></td>
												<td style="color: black"><c:out value="${flat.flatPrice}" /></td>
												
											</tr>
									</c:forEach> 
									</table>
									<br>
								</div>
							</div>
						

<div id="section3" class="container-fluid">

<h2 style="color: black" align="center">Update FlatDetails</h2>

   
           
         <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                   
                    
                    <form action=viewflat.do method="get">
                    <div class="form-group">
                     <input type="text" class="form-control input-sm"  readonly="readonly" name="sellerId"id="sellerId" value="${list1.sellerId} " style="display: none;"> 
     				<label for="bname" class="cols-sm-2 control-label">Flat Number</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i  aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="FlatNumber" id="FlatNumber"  placeholder="Enter FlatNumber" required/>
								</div>
							</div>
							<br>
							<div class="form-group ">
	                   <center><input type="submit" class="btn btn-primary" value="View "/></center>
						<!-- <button type="submit"  class="btn btn-primary btn-lg btn-block login-button">view</button> -->

					
						</div>
						</div>
						</form>
					
                  
                   <form  action=updateflat.do method="get" >                   
    
                    <div class="form-group">
     				<label for="bname" class="cols-sm-2 control-label">City</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i  aria-hidden="true"></i></span>
									<input type="text"  readonly="readonly" class="form-control" value="${list1.city}" name="CITY" id="City" readonly="readonly" placeholder="Enter City" required/>
								</div>
							</div>
							</div>
							
							
                 <div class="form-group">
							<label for="LOCATION" class="cols-sm-2 control-label">LOCATION</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i  aria-hidden="true"></i></span>
									<input type="text" readonly="readonly"  class="form-control" value="${list1.location}" name="location" id="LOCATION"  placeholder="Enter location" required/>
								</div>
							</div>
						</div>
					
					
					<div class="form-group">
							<label for="ApartmentName" class="cols-sm-2 control-label">ApartmentName</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i  aria-hidden="true"></i></span>
									<input type="text" readonly="readonly"  class="form-control"value="${list1.apartmentName}" name="apartmentName" id="ApartmentName"  placeholder="Enter ApartmentName" required/>
								</div>
							</div>
						</div>
					
					
					
                 <div class="form-group">
							<label for="flatNumber" class="cols-sm-2 control-label">flatNumber</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i  aria-hidden="true"></i></span>
									<input type="text" readonly="readonly"  class="form-control"value="${list1.flatNumber}" name="flatNumber" id="flatNumber"  placeholder="Enter flatNumber" required/>
								</div>
							</div>
						</div>
						
						
						
						
						
						 <div class="form-group">
							<label for="flatType" class="cols-sm-2 control-label">flatType</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i  aria-hidden="true"></i></span>
									<input type="text"  readonly="readonly"  class="form-control"value="${list1.flatType}" name="flatType" id="flatType"  placeholder="Enter flatType" required/>
								</div>
							</div>
						</div>
						
						
						
						
						
						<div class="form-group">
							<label for="SquareFeet" class="cols-sm-2 control-label">SquareFeet</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i  aria-hidden="true"></i></span>
									<input type="text" readonly="readonly" class="form-control" value="${list1.squareFeet}"name="squareFeet" id="SquareFeet"  placeholder="Enter SquareFeet" required/>
								</div>
							</div>
						</div>
						
						
						<div class="form-group">
							<label for="FlatPrice" class="cols-sm-2 control-label">FlatPrice</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i  aria-hidden="true"></i></span>
									<input type="text"  class="form-control"value="${list1.flatPrice}" name="flatPrice" id="FlatPrice"  placeholder="Enter FlatPrice" required/>
								</div>
							</div>
						</div>
						
						

						
				
						
<br>
						<div class="form-group ">
							<center><input type="submit" class="btn btn-primary" value="update "/></center>
						</div>
						
					</form>
				</div>
			</div>
		</div>
         </div>
   




<script type="text/javascript">
var viewdetails=false;
function fnShowFlatDetails(ind){
	if("Y"==ind){
		 viewdetails=true;
	}
}
$(document).ready(function(){
	if( viewdetails){
		$("html,body").animate({
	          scrollTop: $("#section2").offset().top
	        });
	}
});
</script>
<script type="text/javascript">fnShowFlatDetails('<c:out value= "${showGrid}"/>');</script>








</body>
</html>






