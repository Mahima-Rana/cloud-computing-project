<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> IP</title>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<%@include file="CSSJS.jsp" %>
</head>
<body>


	<!-- START OF HEADER  -->	
	<nav class="navbar navbar-expand-lg navbar-dark custom-bg">
	
		<div class="container-fluid">
			 <a class="navbar-brand logo" href="#">ELECTROELITE</a>
			  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			    <span class="navbar-toggler-icon"></span>
			  </button>
			
			  <div class="collapse navbar-collapse" id="navbarSupportedContent">
			    <ul class="navbar-nav mr-auto">
			      <li class="nav-item active">
			        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
			      </li>
			    </ul>
			    <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
			    	<div class="btn-group mr-2" role="group" aria-label="First group">
			    	<% String userEmail = (String) session.getAttribute("userEmail");
			    	if(userEmail == null || userEmail.equals("")){%>		    
					      <button class="btn btn-outline-success"><a class="text-white" href="register.jsp">REGISTER</a></button>
					      <button class="btn btn-outline-success"><a class="text-white" href="login.jsp">LOGIN</a></button> 
					      <% }else{ %>
					      <p class="fs-6 mt-2 text-white"><%= userEmail %></p>
					      <button class="btn btn-outline-danger"><a class="text-white" onclick="logoutReq()">LOGOUT</a></button>
					      <% } %>
					</div>
			    </div>
			  </div>
		</div>
	 
	</nav>
	<!-- END OF HEADER  -->
	
	
	
	
	<!--START OF SEARCH PART-->
		<div class="container">
			<input type="text" id="searchBox" maxlength="12" placeholder="Search" class="searchbar">
			<img src="https://images-na.ssl-images-amazon.com/images/I/41gYkruZM2L.png" onclick="searchElement()"
				alt="search icon" class="button">
		</div>
	<!--END OF SEARCH PART-->
	
	

<!--START OF PRODUCTS PART-->	
<div class="container" id="productscss">
 
     <div id='card'>
           <div id='image-left'>
             <img src="productImg/mobile1.jpg" width='250'height='350'>
           </div>
         <div id='preview-right'>
            <p id='para-1'>M	O	B	I	L	E</p>
            <div id='head'>
             <h2 >Samsung<h2>
             <h2 >Galaxy Z Flip5</h2>
             <h2>8GB/256GB</h2>
          </div>
          <p id='para-2'>Samsung Galaxy Z Flip5 5G (Mint, 8GB RAM, 256GB Storage)</p>
          <div id='price'>
             <div id='offer-price'>&#8377 89,999</div>
                <div id='original-price'>
                 <del>&#8377 99,999</del>
             </div>          
          <button onclick="showmessage()">Add to Cart</button></div>
       </div>
     </div>
     
     
     
     <div id='card'>
           <div id='image-left' class="container text-center">
             <img src="productImg/head1.jpg" width='250'height='300'>
           </div>
         <div id='preview-right'>
            <p id='para-1'>E	A	R	P	H	O	N	E</p>
            <div id='head'>
             <h2 >Sennheiser<h2>
             <h2 >HD 400s Wired</h2>
             <h2>Black</h2>
          </div>
          <p id='para-2'>Sennheiser HD 400s Wired Over The Ear Headphone with Mic (Black)</p>
          <div id='price'>
             <div id='offer-price'>&#8377 2,999</div>
                <div id='original-price'>
                 <del>&#8377 3,999</del>
             </div>
          <button onclick="showmessage()">Add to Cart</button></div>
       </div>
    </div>
     
     
     
    <div id='card'>
           <div id='image-left' class="container text-center">
             <img src="productImg/mobile2.jpg" width='250'height='300'>
           </div>
         <div id='preview-right'>
            <p id='para-1'>M	O	B	I	L	E</p>
            <div id='head'>
             <h2 >OnePlus 11<h2>
             <h2 >Eternal Green</h2>
             <h2>16GB/256GB</h2>
          </div>
          <p id='para-2'>OnePlus 11 5G (Eternal Green, 16GB RAM, 256GB Storage)</p>
          <div id='price'>
             <div id='offer-price'>&#8377 65,999</div>
                <div id='original-price'>
                 <del>&#8377 69,999</del>
             </div>
          <button onclick="showmessage()">Add to Cart</button></div>
       </div>
     </div>
     
     
     
      <div id='card'>
           <div id='image-left' class="container text-center">
             <img src="productImg/watch1.jpg" width='250'height='300'>
           </div>
         <div id='preview-right'>
            <p id='para-1'>S	M	A	R	T		W	A	T	C	H</p>
            <div id='head'>
             <h2 >Apple Watch<h2>
             <h2 >Series 9</h2>
             <h2>[GPS 45mm]</h2>
          </div>
          <p id='para-2'>Smartwatch with Starlight Aluminum Case with Starlight Sport Loop One Size. </p>
          <div id='price'>
             <div id='offer-price'>&#8377 40,999</div>
                <div id='original-price'>
                 <del>&#8377 44,999</del>
             </div>
          <button onclick="showmessage()">Add to Cart</button></div>
       </div>
     </div>
     
     

     
     
</div>
<!--END OF PRODUCTS PART-->	



</body>
</html>