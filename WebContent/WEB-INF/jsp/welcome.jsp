<!DOCTYPE html>
<html>
<head>
  <title >MarksBook</title>
  <script src="../resources/scripts/jquery.min.js"></script>
  <script src="../resources/scripts/marksbook.js"></script>
  <link rel="stylesheet" href="../resources/css/style.css">
</head>

<body style="white-space:nowrap;">
<div class="header" style="background-color: #426f52">
  <h1 align="center" style="color:whitesmoke;">
  	<a id="userid" ref="#" style="font-size:20px;color:whitesmoke;margin-right:20em"></a>
    <a style="color:whitesmoke;margin-right:9em">MarksBook</a>
    <a href="../user/welcome" style="font-size:20px;color:whitesmoke;padding-right: 1%">Home</a>
  	<a href="../user/marksboard" style="font-size:20px;color:whitesmoke;padding-right: 1%">MarksBoard</a>
  	<a href="#" style="font-size:20px;color:whitesmoke;" onclick="signOut();">Sign Out</a>
  </h1>
</div>
<br/>
<div id="welcomeDivContent" class="visible">
 <div id="userName" style="font-weight:bold;font-size:20px;color:black;display: none"></div>
 <br/><br/>

 <h2 align="center" style="color:blue;">Welcome to MarksBook. <br/><br/>
 This is a unique place where you can store and view your all marksheets starting from your school time to university.
 <br/><br/>
 It's very easy to use.Please upload your marksheets in pdf format and view your marks in tabular form.
 <br/><br/>
 Please click on<a href="../user/marksboard" style="font-size:20px;color:black;margin-left:1%">MarksBoard</a> to start uploading your marksheets.
 </h2>

</div>  
  
</body>

<script type="text/javascript">
$(document).ready(function(){
    var name = sessionStorage.getItem("name");
    var fname = name.split(' ').shift();
    document.getElementById('userName').style.display='block';
	document.getElementById('userid').innerHTML= "Welcome " + fname; 
});
</script>
</html>



