<!DOCTYPE html>
<html>
<head>
  <script src="${pageContext.request.contextPath}/resources/scripts/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/scripts/marksbook.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>

<body>
 <div id="registerDiv">
 	<div id="imgDiv" style="margin-left:43%;margin-top:2%">
 		<img src="${pageContext.request.contextPath}/resources/images/marksbook.png" width="25%" height="25%">
 	</div>
    <div align="center" style="margin:auto;width:32%;height:20em;margin-top:2%;border: 1px solid grey;">  
	      <h2>Create a new account</h2>
	      <input type="text" id="name" style="font-size:15px;height:40px;width:25em;" placeholder="Enter your name" required> 
	      <input type="email" id="mailId" style="font-size:15px;height:40px;width:25em;margin-top:4%;" placeholder="Enter your email" required>
	      <input type="password" id="passwrd" style="font-size:15px;height:40px;width:25em;margin-top:4%;" placeholder="Enter your password" required>
	      <button id="registerbtn" type="submit" class="button" style="font-size:15px;height:40px;width:25em;margin-top:6%;" onclick="register()">Register</button>
      </div>
    <br/>
     <label id="registered" style="font-size:20px;margin-left:28em;display:none;"><font color="blue">User registered successfully.</font></label>
     <label id="emailExist" style="font-size:20px;margin-left:24em; display:none;"><font color="red">Email id already exists.Please enter a different one.</font></label>
     <br/>
     <div id="existingId">
     	<a href="../login/home" style="font-size:20px;color: blue;margin-left: 45%">Already User? Sign In</a>
     </div>
     <div id="newId" style="display:none">
     	<a href="../login/home" style="font-size:20px;color: blue;margin-left: 48%">Sign In</a>
     </div>
     
  </div>
</body>
</html>



