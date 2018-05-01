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
  	<a id="userid" ref="#" style="font-size:20px;color:whitesmoke;margin-right:15em"></a>
    <a style="color:whitesmoke;margin-right:9em">MarksBook</a>
    <a href="../user/welcome" style="font-size:20px;color:whitesmoke;padding-right: 1%">Home</a>
  	<a href="../user/marksboard" style="font-size:20px;color:whitesmoke;padding-right: 1%">MarksBoard</a>
  	<a href="#" style="font-size:20px;color:whitesmoke;" onclick="signOut();">Sign Out</a>
  </h1>
</div>
<br/>
<div id="userName" style="font-weight:bold;font-size:20px;color:black;display: none"></div>

<div id="welcomeDiv">
 <form id="file-form" method="post" action="${pageContext.request.contextPath}/user/uploadFile" 
 enctype="multipart/form-data" target="hiddenFrame">
  <div id="upload" class="onerow" style="padding-left: 35%;">
	<label style="font-size:20px;">Please upload your marsksheet in PDF format.</label> 
	<br/><br/>
	<div class="file-upload">
	  <div class="file-select">
	    <div class="file-select-button" id="fileName">Choose File</div>
	    <div class="file-select-name" id="noFile">No file chosen...</div> 
	    <input type="file" name="chooseFile" id="chooseFile" onchange="hideStatus()">
	  </div>
	</div>
 	<br/>
 	<input type="submit" class="button" 
 	style="font-size:15px;height:2.5em;width:26em;background-color:#e47911;border:1px solid" 
 	value="Upload marksheet">
  </div>
  <br/>
  <div id="uploadStatus" style="padding-left:40%;display: none">
  	<label style="font-size:20px;">Your file has uploaded successfully.</label> 
  </div>
 </form>
  <div style="margin-left:42%;margin-top:2%">
  	<label style="font-size:20px;">Your uploaded marsksheets</label>
  </div>
  <br/>
  <div id="allMarksheet" class="onerow" 
  style="margin-left: 45%;border: 1px solid;width:8em;height:12.5em;background-color:#21a69d;"> 
	  <!-- <input type="checkbox" name="HSC" value="HSC" checked>HSC<br>
	  <input type="checkbox" name="Intermediate" value="Intermediate">Intermediate<br>
	  <input type="checkbox" name="Graduation" value="Graduation">Graduation<br>
	  <input type="checkbox" name="Masters" value="Masters">Masters<br> -->
	  
	  <input type="checkbox" name="1" value="1" checked>Standard-1<br>
	  <input type="checkbox" name="2" value="2">Standard-2<br>
	  <input type="checkbox" name="3" value="3">Standard-3<br>
	  <input type="checkbox" name="4" value="4">Standard-4<br>
	  <input type="checkbox" name="5" value="5">Standard-5<br>
	  <input type="checkbox" name="6" value="6">Standard-6<br>
	  <input type="checkbox" name="7" value="7">Standard-7<br>
	  <input type="checkbox" name="8" value="8">Standard-8<br>
	  <input type="checkbox" name="9" value="9">Standard-9<br>
	  <input type="checkbox" name="10" value="10">Standard-10<br>
  </div>
  <br/>
  <div style="margin-left:32%;margin-top:2em">
  	<!-- <input id="viewMarksBtn" type="button" class="button" 
  	style="font-size:15px;height:2.5em;width:26em;background-color:#e47911;border:1px solid;" 
  	value="View your marks" onclick="getFile()"> -->
  	<!-- value="View your marks" onclick="window.location.href ='../user/marksboard'"> -->
  	<h2>
  	 Please click on<a href="../user/marksboard" style="font-size:20px;color:blue;margin-left:1%">MarksBoard</a> to view your marks.
   </h2>
  </div>
  <iframe name="hiddenFrame" width="0" height="0" border="0" style="display: none;"></iframe>
 </div> 
</body>
<script type="text/javascript">
$(document).ready(function(){
    var name = sessionStorage.getItem("name");
    var fname = name.split(' ').shift();
    document.getElementById('userName').style.display='block';
	document.getElementById('userid').innerHTML= "Welcome " + name; 
});

$('#chooseFile').bind('change', function () {
	  var filename = $("#chooseFile").val();
	  if (/^\s*$/.test(filename)) {
	    $(".file-upload").removeClass('active');
	    $("#noFile").text("No file chosen..."); 
	  }
	  else {
	    $(".file-upload").addClass('active');
	    $("#noFile").text(filename.replace("C:\\fakepath\\", "")); 
	  }
	});

$(document).ready(function(){
    $("form").submit(function(){
        document.getElementById('uploadStatus').style.display='block';
    });
});

function hideStatus()
{
	document.getElementById('uploadStatus').style.display='none';
}

function getFile()
{
	var fileName = $('#noFile').text();
	console.log(fileName);
	
	 $.ajax({
		    type: 'GET',
		    contentType: "application/json; charset=utf-8",
		    url:  '../user/getFile/' + fileName + '/',
		    async: true,
		    success: function(result) {
		    	 console.log('file retrieved.');
		    },
		    error: function() {
		    	 console.log('file retrieve error');
		    }
	 });
}
</script>
</html>



