<!DOCTYPE html>
<html>
<head>
  <title >MarksBook</title>
  <script src="../resources/scripts/jquery.min.js"></script>
  <script src="../resources/scripts/marksbook.js"></script>
  <link rel="stylesheet" href="../resources/css/style.css">
</head>

<body style="white-space:nowrap;">
<div class="header">
  <h1 align="center" style="color:whitesmoke;">
  	<a id="userid" ref="#" style="font-size:20px;color:whitesmoke;margin-left:1%"></a>
    <a style="color:whitesmoke;margin-left:10%">MarksBook</a>
    <a href="#" style="font-size:20px;color:whitesmoke;margin-left:2%" onclick="welcome();">Home</a>
  	<a href="#" style="font-size:20px;color:whitesmoke;margin-left:1%" onclick="getRankBoard();">MarksBoard</a>
  	<a href="#" style="font-size:20px;color:whitesmoke;margin-left:1%" onclick="signOut();">Sign Out</a>
  </h1>
</div>
<br/>
<div id="welcomeDivContent" class="visible">
 <div id="userName" style="font-weight:bold;font-size:20px;color:black;display: none"></div>
 <br/><br/>
</div> 

<form>
  <br/> <br/>
  <div style="padding-left: 24%">
	<label style="font-size:20px;">File:</label> 
	<input type="text" id="name" style="font-size:15px;height:40px;width:50%;" placeholder="Select a file"/><br/><br/>
 	<input type="file" name="pic" accept="*/*" style="margin-left: 10%">
 	<input type="submit">
  </div>
</form>
  
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



