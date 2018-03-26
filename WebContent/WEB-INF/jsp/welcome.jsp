<!DOCTYPE html>
<html>
<head>
  <title >MarksBook</title>
  <script src="../resources/scripts/jquery.min.js"></script>
  <script src="../resources/scripts/marksbook.js"></script>
  <link rel="stylesheet" href="../resources/css/style.css">
</head>

<body style="white-space:nowrap;">
<div class="header" style="background-color: #426f52;width: 83em">
  <h1 align="center" style="color:whitesmoke;">
  	<a id="userid" ref="#" style="font-size:20px;color:whitesmoke;margin-right:20em"></a>
    <a style="color:whitesmoke;margin-right:9em">MarksBook</a>
    <a href="../user/welcome" style="font-size:20px;color:whitesmoke;padding-right: 1%">Home</a>
  	<a href="../user/marksboard" style="font-size:20px;color:whitesmoke;padding-right: 1%">MarksBoard</a>
  	<a href="#" style="font-size:20px;color:whitesmoke;" onclick="signOut();">Sign Out</a>
  </h1>
</div>
<br/>
<div id="userName" style="font-weight:bold;font-size:20px;color:black;display: none"></div>
<!-- <div id="welcomeDivContent" class="visible">
 <div id="userName" style="font-weight:bold;font-size:20px;color:black;display: none"></div>
 <br/><br/>

 <h2 align="center" style="color:blue;">Welcome to MarksBook. <br/><br/>
 This is a unique place where you can store and view your all marksheets starting from your school time to university.
 <br/><br/>
 It's very easy to use.Please upload your marksheets in pdf format and view your marks in tabular form.
 <br/><br/>
 Please click on<a href="../user/marksboard" style="font-size:20px;color:black;margin-left:1%">MarksBoard</a> to start uploading your marksheets.
 </h2>
</div>  -->

<div id="welcomeDiv">
 <form id="file-form" method="post" action="${pageContext.request.contextPath}/user/uploadFile" enctype="multipart/form-data">
  <div id="upload" class="onerow" style="padding-left: 35%;">
	<label style="font-size:20px;">Please upload your marsksheet in PDF format.</label> 
	<br/><br/>
	<div class="file-upload">
	  <div class="file-select">
	    <div class="file-select-button" id="fileName">Choose File</div>
	    <div class="file-select-name" id="noFile">No file chosen...</div> 
	    <input type="file" name="chooseFile" id="chooseFile">
	  </div>
	</div>
 	<br/>
 	<input type="submit" class="button" style="font-size:15px;height:2.5em;width:26em;background-color:#e47911;border:1px solid" value="Upload marksheet">
  </div>
 </form>
  <div style="margin-left:42%;margin-top:2%">
  	<label style="font-size:20px;">Your uploaded marsksheets</label>
  </div>
  <br/>
  <div id="allMarksheet" class="onerow" style="margin-left: 45%;border: 1px solid;width:8em;height:5.5em;background-color:#21a69d;"> 
	  <input type="checkbox" name="vehicle" value="HSC" checked>HSC<br>
	  <input type="checkbox" name="vehicle" value="Intermediate">Intermediate<br>
	  <input type="checkbox" name="vehicle" value="Graduation">Graduation<br>
	  <input type="checkbox" name="vehicle" value="Masters">Masters<br>
  </div>
  <br/>
  <div style="margin-left:35%;margin-top:2em">
  	<input id="viewMarksBtn" type="button" class="button" style="font-size:15px;height:2.5em;width:26em;background-color:#e47911;border:1px solid;" value="View your marks" onclick="window.location.href ='../user/marksboard'"  >
  </div>
 </div> 
</body>
<script type="text/javascript">
$(document).ready(function(){
    var name = sessionStorage.getItem("name");
    var fname = name.split(' ').shift();
    document.getElementById('userName').style.display='block';
	document.getElementById('userid').innerHTML= "Welcome " + fname; 
});

$('#chooseFile').bind('change', function () {
	  var filename = $("#chooseFile").val();debugger;
	  if (/^\s*$/.test(filename)) {
	    $(".file-upload").removeClass('active');
	    $("#noFile").text("No file chosen..."); 
	  }
	  else {
	    $(".file-upload").addClass('active');
	    $("#noFile").text(filename.replace("C:\\fakepath\\", "")); 
	  }
	});

</script>
</html>



