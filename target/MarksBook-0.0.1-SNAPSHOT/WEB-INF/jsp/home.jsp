<!DOCTYPE html>
<html>
<head>
  <title>StudentProgressAnalytics</title>
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/spa.png">
  <script src="../resources/scripts/jquery.min.js"></script>
  <script src="../resources/scripts/marksbook.js"></script>
  <!-- <link rel="stylesheet" href="../resources/css/style.css"> -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"> -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style>
a:link {
    color: whitesmoke;
    background-color: transparent;
    text-decoration: none;
    margin-top: 5%;
    font-size:17px;
}

a:hover {
    color: aqua;
    background-color: transparent;
    text-decoration: none;
}
a:active {
    /* color: #ee13d5; */
    background-color: #ee13d5;
    text-decoration: none;
}
a{color: whitesmoke;padding-top: .5em;}



* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
</head>

<body style="white-space:nowrap;">
<!-- <div class="header" style="background-color: #096da9;padding: 0.1px;width: 84.8em;"> -->
<div class="header" style="background-color: #096da9;padding: 0.1px;">
  <h2 align="center" style="color:whitesmoke;">Student Progress Analytics</h2>
</div>

<!-- <div style="background-color: #4f5152;width: 18%;height:33.8em;padding-left: 25px"> -->
<div style="background-color: #4f5152;width: 19%;height:41em;padding-left: 25px;padding-top:1em; float:left;">
<a class="fa fa-home" href="../user/home"> Home</a><br/>
<a class="fa fa-user" href="#" onclick="loadProfile()"> Student Profile</a><br/>
<a class="fa fa-id-card-o" href="#"> Notice Board</a><br/>
<a class="fa fa-tasks" href="#"> Tasks</a><br/>
<a class="fa fa-money" href="#"> Fees</a><br/>
<a class="fa fa-calendar" href="#"> Calendar</a><br/>
<a class="fa fa-image" href="#"> Gallery</a><br/>
<a class="fa fa-file" href="#"> Report</a><br/>
<a class="fa fa-group" href="#"> RankBoard</a><br/>
<a class="fa fa-dashboard" href="#" onclick="loadDashboard()"> DashBoard</a><br/>
<a class="fa fa-bar-chart" href="#"> Performance Trend Analysis</a><br/>
<a class="fa fa-sort-alpha-asc" href="#"> Attendance</a><br/>
<a class="fa fa-thumbs-up" href="#"> Recommendation</a><br/>
</div>

<div id="dataDiv" class="slideshow-container" align="center" style="float:right;width: 82%;margin-top: 2em">
<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="${pageContext.request.contextPath}/resources/images/spa.png" style="width:70%">
  <div class="text">Caption Text</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="${pageContext.request.contextPath}/resources/images/marksheet.png" style="width:70%">
  <div class="text">Caption Two</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="${pageContext.request.contextPath}/resources/images/spa_1.jpg" style="width:70%">
  <div class="text">Caption Three</div>
</div>
<br/>
<div>
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
</div>
 
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    if(slides != null && slides != "" && slides[slideIndex-1] != null)
    {
    	slides[slideIndex-1].style.display = "block";  
    	dots[slideIndex-1].className += " active";
    }
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}

/* function getProfile(){
	document.getElementById("dataDiv").innerHTML = "<br/>Mayank Nayak <br/> DOB: 25-Jan-2012 <br/> Class: Standard-II <br/> Gender: Male <br/> Roll No: AC201";
} */

function loadProfile()  {
	 $.ajax({
	        type: 'GET',
	        url:  '../user/profile',
	        async: true,
	        success: function(result) {
	        	$("#dataDiv").html(result);
	        },
	        error: function() {
	            console.log('load profile error');
	        }
	      });
}

function loadDashboard()  {
	 $.ajax({
	        type: 'GET',
	        url:  '../user/dashboard',
	        async: true,
	        success: function(result) {
	        	$("#dataDiv").html(result);
	        },
	        error: function() {
	            console.log('load dashboard error');
	        }
	      });
}

</script>
</body>
</html>



