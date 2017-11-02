
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
  #section1 {padding-top:40px;height:600px;color: #fff; background-color: black;}
  #section2 {padding-top:90px;height:900px;color: #fff; background-color: black;}
  #section3 {padding-top:40px;height:900px;color: #fff; background-color: black;}
  #section4 {padding-top:40px;height:900px;color: #fff; background-color: black;}
  #section5 {padding-top:40px;height:900px;color: #fff; background-color: black;}
  
 
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
     
        
          <li><a href="admin.jsp">Home</a></li>
          <li><a href="admin.jsp">About Us</a></li>
          
          <li><a href="admin.jsp">Contact</a></li>
           <li><a href="viewSeller.do">View Sellers</a></li>
             </ul>
            <!-- Trigger the modal with a button -->

				<ul class="nav navbar-nav navbar-right">
			
		<h4 style="color: #9d9d9d;">Welcome</h4>
		
		 <li><a href="index.jsp">Logout</a></li>
          </ul>
      </div>
    </div>
  </div>
</nav> 




		<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 templatemo-content-wrapper">
					<div class="templatemo-content">
						<section id="templatemo-page8-text" class="active">
							<div class="col-sm-12 col-md-12">

								<div class="col-sm-12 col-md-12">
									<br>
									<br>
									<h2 align="center">Seller List</h2>
								</div>
								<div class="row">

									<div class="col-sm-12 col-md-12">
 <div class="col-sm-12 col-md-12">						
									
									 
									
									  <table  class="table table-class"  cellpadding="5">								
										<tr style="background:rgba(0, 0, 0, 0.66);">
										    <th scope="col">Seller Id</th>
											<th scope="col">Name</th>
											<th scope="col">Address</th>
											<th scope="col">Mobile Number</th>
											<th scope="col">EmailID</th>
											
											
										</tr>
      
										      <c:forEach var="Seller" items="${list}">
											   <tr>
											   	<td ><c:out value="${Seller.userId}" /></td>
												<td ><c:out value="${Seller.userName}" /></td>
												<td ><c:out value="${Seller.address}" /></td>
												<td ><c:out value="${Seller.phoneNumber}" /></td>
												<td ><c:out value="${Seller.emailId}" /></td>
											
												
												
												
											</tr>
										</c:forEach> 
									</table>
									<br>
							
							</div>
							<div class="col-xs-1"></div>
						</div>
					</div>


</div>

									
								</div>
								<div class="clearfix"></div>
								<br>
							</div>
					</div>















<script>
$(document).ready(function(){
  // Add scrollspy to <body>
  $('body').scrollspy({target: ".navbar", offset: 50});   

  // Add smooth scrolling on all links inside the navbar
  $("#myNavbar a").on('click', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 800, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    }  // End if
  });
});
</script>





  
  
    </div>
    

</body>
</html>
