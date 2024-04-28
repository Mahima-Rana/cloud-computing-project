<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>


<style>
.logo {
    font-size: 2rem;
    background:  linear-gradient(90deg, rgb(255, 187, 0) 0%, rgb(255, 0, 0) 100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    font-weight: bolder;
 }
 .custom-bg{
	background-color: #6917c2 !important;                 
}
.container {
    width: 80%;
    height: 4rem;
    margin: 1rem auto;
    display: flex;
}

.searchbar {
    font-size: 1rem;
    width: 100%;
    height: 1rem;
    border: none;
    outline: none;
    border-radius: 10rem;
    padding: 1rem;
    transition: all .1s;
    transition-delay: .1s;
    background-color: #f2f5f7;
}

.button {
    height: 2rem;
    margin: 8px 0;
    top: .5rem;
    right: .1rem;
    transition: all .1s;
    transition-delay: .1s;
}

.button:hover {
    cursor: pointer;
}

.searchbar::placeholder {
    opacity: .3;
}

 .custom{
	background-color: #8f3de8 !important;     
	font-weight: bolder;            
}




#productscss{
display: flex;
flex-direction: row;
flex-wrap: wrap;
}

p,h2{
  margin:0;
  display: flex;
}


#card{
  display:flex;
  width:500px;
  height:350px;
  margin: 20px;
  box-shadow:2px 3px 7px 0px rgba(0,0,0,0.35);
 
}
#image-left{
  flex:50%;
  height:100%;
  width:50%;
}
#preview-right{
  height:100%;
  width:50%;
  background-color:white;
}
#para-1{
  color:#6c7289;
  padding:20px;
  font-family: 'Montserrat', sans-serif;
  font-size:0.5rem;
  opacity:0.7;
}
#head{
  padding-left:20px;
  padding-right:20px;
  padding-bottom:20px;
  color: #1c232b;
  font-family: 'Fraunces',serif;
  font-weight:700;
}
#para-2{
  color:#6c7289;
  padding-left:20px;
  padding-right:20px;
  padding-bottom:20px;
  font-family: 'Montserrat', sans-serif;
  font-size:0.7rem;
  opacity:0.7;
}
#price{
  padding-left:20px;
  padding-right:20px;
  padding-bottom:10px;
}
#offer-price{
  display:inline-block;
  color:#3c8067;
  font-family: 'Fraunces', serif;
  font-size:1.7rem
}
#original-price{
  display:inline-block;
   position:relative;
   top:-5px;
   color:#6c7289;
  margin-left:10px;
  font-family: 'Fraunces', serif;
 font-size:0.6rem;
  opacity:0.7;
}
button{
  width:70%;
  margin-left:20px;
  margin-right:20px;
  margin-bottom:20px;
  padding:10px;
  border-radius:5px;
  background-color:#6917c2;
  font-weight: bolder;
  border:none;
  color:white;
}
button:hover{
  cursor:pointer;
  background-color:#306652;
  transform: scale(1.05);
}
</style>


<script>
	function logoutReq(){
		Swal.fire({
			title: "Are you sure you want to do this?",
		    icon: "warning",
		    showCancelButton: true,
		    confirmButtonColor: "#3085d6",
		    cancelButtonColor: "#d33",
		    confirmButtonText: '<a href="logoutServlet" style="color: white; text-decoration: none;">LOGOUT</a>',
		    cancelButtonText: "Cancel",
		});
	}
	
	function showmessage(){
		Swal.fire({
			icon: 'success',
			title: 'Item Added!',
			timer: 1000,
			showConfirmButton: false
		});
	}
</script>

