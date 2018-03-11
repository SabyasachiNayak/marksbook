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
 <br/>
</div> 

  <div id="10thUpload" style="padding-left: 35%;">
	<label style="font-size:20px;">Please upload your HSC Marsksheet in PDF format.</label> 
	<br/><br/>
	<input type="text" id="name" style="font-size:15px;height:2em;width:20em;" placeholder="Upload your HSC marksheet"/>
 	<input type="file" name="pic" accept="*/*">
 	<br/><br/>
 	<input type="button" style="font-size:15px;height:2em;width:5em;"value="upload" onclick="upload()">
  </div>
  <div id="10thDownload" style="display: none">
  	 <a href="#" style="font-size:20px;margin-left: 20em">Your HSC marksheet has been uploaded.You can download from here.</a>
  </div>
  <br/><br/>
  <div id="10thMarksTable" style="padding-left: 20%;display: none">
  <label style="font-size:25px;margin-left: 15em">HSC Marks</label>
  <a href="#" style="font-size:20px;margin-left: 15em">Add more marksheets</a>
  <br/><br/>
  <table style="width:80%">
  <tr>
    <th>Subject</th>
    <th>Full Marks</th> 
    <th>Your Score</th>
  </tr>
  <tr>
    <td>Math-1</td>
    <td>75</td> 
    <td>62</td>
  </tr>
  <tr>
    <td>Math-2</td>
    <td>75</td> 
    <td>68</td>
  </tr>
  <tr>
    <td>Science-1</td>
    <td>75</td> 
    <td>51</td>
  </tr>
  <tr>
    <td>Science-2</td>
    <td>75</td> 
    <td>48</td>
  </tr>
  <tr>
    <td>History</td>
    <td>75</td> 
    <td>65</td>
  </tr>
  <tr>
    <td>Geography</td>
    <td>75</td> 
    <td>50</td>
  </tr>
  <tr>
    <td>Sanskrit</td>
    <td>100</td> 
    <td>93</td>
  </tr>
  <tr>
    <td>English</td>
    <td>100</td> 
    <td>63</td>
  </tr>
  <tr>
    <td>Oriya</td>
    <td>100</td> 
    <td>62</td>
  </tr>
   <tr>
    <th>Total</td>
    <th>750</td> 
    <th>562</td>
  </tr>
</table>
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



