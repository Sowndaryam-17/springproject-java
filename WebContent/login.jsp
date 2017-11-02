
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



 <div id="section2" class="container-fluid">
<img class="mySlides"  src="image/1.jpg" style="width:1353px; height:500px; padding-top:0px;">
<img class="mySlides"  src="image/2.jpeg" style="width:1353px; height:500px; padding-top:0px;">
<img class="mySlides"  src="image/5.jpg" style="width:1353px; height:500px; padding-top:0px;">
<img class="mySlides"  src="image/8.jpg" style="width:1353px; height:500px; padding-top:0px;">
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); 
}
</script><br>
</div>

<!-- <input type="text" value=${flatIn.flatcit}> -->
 <div id="section2" class="container-fluid">
 
 <c:forEach var="viewflatdetails" items="${viewflatdetails}">
 
  <div class="col-sm-6 col-md-4 col-lg-3 mt-4">
                <div class="card">
                    <img class="card-img-top" src="${viewflatdetails.flatimage}"style="width:100%; height:300%; ">
                    <div class="card-block">
                      <p class="card-text">FlatCity : ${viewflatdetails.city}</p>
                    <p class="card-text">FlatLocation : ${viewflatdetails.location}</p>
                    <p class="card-text">ApartmentName ${viewflatdetails.apartmentName}</p>
					
					<p class="card-text">FlatNumber: ${viewflatdetails.flatNumber}</p>
					<p class="card-text">FlatType: ${viewflatdetails.flatType}</p>
					<p class="card-text">SquareFeet : ${viewflatdetails.squareFeet}</p>
					<p class="card-text">FlatPrice: ${viewflatdetails.flatPrice}</p>
					
                 	<!-- <a  href="#" id="myBtn" class="btn btn-primary">View Contact</a> -->
                 	<form action="retriveflat.do" method="get">
	                 	<input type="text" name="flatNumber" value="${viewflatdetails.flatNumber}" style="display:none;width:300px;"/>
	                 	 <%-- <input type="text" name="city" value="${list.city} "/> --%>
						<button type="submit" data-toggle="modal" >View Contact</button>
                  	</form>
                 
                  
                  
                 
                    </div>
                </div>
            
 
              <%-- input type="text" name="flatNumber" value="${list.flatNumber}"/>
               <input type="text" name="flatNumber" value="${list.apartmentName}"/>
 --%>
 


 </div>


 </c:forEach>

            <!--  <script>
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal1").modal();
    });
});

</script> -->

</div>

<!-- <script>
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal1").modal();
    });
});

</script> -->


</body>

</html>