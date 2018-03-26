<!DOCTYPE html>
<html>
<head>
  <title >MarksBook</title>
  <script src="../resources/scripts/jquery.min.js"></script>
  <script src="../resources/scripts/marksbook.js"></script>
  <link rel="stylesheet" href="../resources/css/style.css">
</head>

<body style="white-space:nowrap;">
<div class="header" style="background-color: #426f52;width:83em">
   <h1 align="center" style="color:whitesmoke;">
  	<a id="userid" ref="#" style="font-size:20px;color:whitesmoke;margin-right:20em"></a>
    <a style="color:whitesmoke;margin-right:9em">MarksBook</a>
    <a href="../user/welcome" style="font-size:20px;color:whitesmoke;padding-right: 1%">Home</a>
  	<a href="../user/marksboard" style="font-size:20px;color:whitesmoke;padding-right: 1%">MarksBoard</a>
  	<a href="#" style="font-size:20px;color:whitesmoke;" onclick="signOut();">Sign Out</a>
  </h1>
</div>
<br/>

<div id='questionDiv' style="display: none;">
 <div>
 	<img src="${pageContext.request.contextPath}/resources/images/question.jpg" style='margin-left:15%;margin-top:3%'>
 </div>
 <div style='margin-left:30em;margin-top:2em'>
  <a href='#' onclick="backToMarksboard()">
  <span style='font-size: 18px'>Go back to marksboard</span>
 </a>
 </div>
</div>

<div id="userName" style="font-weight:bold;font-size:20px;color:black;display: none"></div>
  <div id="header" style="margin-left:25%;margin-top:2em">
  <span>
  	<input id="viewMarksBtn" type="button" class="button" style="font-size:15px;height:2.5em;width:26em;background-color:#e47911;border:1px solid;"value="View your marks" >
 	<a href="../user/welcome" style="font-size:20px;margin-left:5em">Add more marksheets</a>
  </span>
  </div>
  <br/>
  <div id="HSCMarksTableDiv" style="margin-left:15%;width:70%;display: none" >
    <label style="font-size:25px">HSC Marks</label>
	<table id="hscMarksTable">
	  <tr>
	    <th>Subject</th>
	    <th>Full Marks</th> 
	    <th>Your Score</th>
	  </tr>
	</table>
	 <div id="10thDownload">
  	 	<a href="#" style="font-size:20px">Download HSC marksheet</a>
  	 </div>
  </div>
  
  <br/>
  
  <div id="12thMarksTable" class="onerow" style="width:70%;padding-left:15%;display: none">
	  <label style="font-size:25px">+2 Marks</label>
	  <br/>
	  <table id="iscTable" class="accordion">
	  <tr>
	    <th>Subject</th>
	    <th>Full Marks</th> 
	    <th>Your Score</th>
	  </tr>
	   <tr>
	    <td>English-1</td>
	    <td>100</td> 
	    <td>58</td>
	  </tr>
	  <tr>
	    <td>English-2</td>
	    <td>100</td> 
	    <td>36</td>
	  </tr>
	  <tr>
	    <td>Oriya</td>
	    <td>100</td> 
	    <td>58</td>
	  </tr>
	  <tr>
	    <td>Math-1</td>
	    <td>100</td> 
	    <td>79</td>
	  </tr>
	  <tr>
	    <td>Math-2</td>
	    <td>100</td> 
	    <td>66</td>
	  </tr>
	  <tr>
	    <td>Physics-1</td>
	    <td>75</td> 
	    <td>58</td>
	  </tr>
	  <tr>
	    <td>Physics-2</td>
	    <td>75</td> 
	    <td>52</td>
	  </tr>
	  <tr>
	    <td>Physics-Practical</td>
	    <td>50</td> 
	    <td>43</td>
	  </tr>
	  <tr>
	    <td>Chemistry-1</td>
	    <td>75</td> 
	    <td>47</td>
	  </tr>
	  <tr>
	    <td>Chemistry-2</td>
	    <td>75</td> 
	    <td>48</td>
	  </tr>
	   <tr>
	    <td>Chemistry-Practical</td>
	    <td>50</td> 
	    <td>44</td>
	  </tr>
	  <tr>
	    <td>Botany</td>
	    <td>75</td> 
	    <td>30</td>
	  </tr>
	   <tr>
	    <td>Botany-Practical</td>
	    <td>25</td> 
	    <td>16</td>
	  </tr>
	  <tr>
	    <td>Zoology</td>
	    <td>75</td> 
	    <td>15</td>
	  </tr>
	  <tr>
	    <td>Zoology-Practical</td>
	    <td>25</td> 
	    <td>18</td>
	  </tr>
	   <tr>
	    <th>Total</th>
	    <th>900</th> 
	    <th>603</th>
	  </tr>
	  <tr>
	    <th>Overall Percentage</th>
	    <th>67</th> 
	  </tr>
	 </table>
	 <div id="12thDownload" class="onerow">
  	 	<a href="#" style="font-size:20px">Download +2 marksheet</a>
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
</script>
</html>



