<!DOCTYPE html>
<html>
<head>
  <script src="${pageContext.request.contextPath}/resources/scripts/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/scripts/marksbook.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>

<body>
 <!-- Modal- New User Registration -->
 <div id="newUserRegModal">
 	<div id="imgDiv" style="margin-left:43%;margin-top:2%">
 		<img src="${pageContext.request.contextPath}/resources/images/marksbook.png" width="25%" height="25%">
 	</div>
     <form id="userForm" style="margin:auto;width:32%;margin-top:2%">
      <fieldset id="userFieldset">
      <div align="center"> 
	      <h2>Create a new account</h2>
	      <div>
		  	<input type="text" id="name" style="font-size:15px;height:40px;width:25em;" placeholder="Enter your name" required> 
		  </div>
		  <div>
		  	<input type="email" id="mailId" style="font-size:15px;height:40px;width:25em;margin-top:4%;" placeholder="Enter your email" required>
		  </div>
		  <div>
		  	<input type="password" id="passwrd" style="font-size:15px;height:40px;width:25em;margin-top:4%;" placeholder="Enter your password" required>
	      </div>
	      <div>
	      	<button id="registerbtn" type="submit" class="button" style="font-size:15px;height:40px;width:25em;margin-top:6%;" onclick="register();">Register</button>   
	      </div>
      </div>
      </fieldset>
    </form>
    <br/>
     <label id="registered" style="font-size:20px;height:40px;width:450px;margin:auto; display:none;"><font color="blue">User registered successfully.</font></label>
     <br/>
     <a href="#" style="font-size:20px;color: blue;margin-left: 45%" onclick="openSignIn();">Already User?  Sign In</a>
      <!-- <label id="allFields" style="font-size:20px;height:40px;width:450px;margin:auto; display:none;"><font color="red">Please enter all details.</font></label> -->
      <label id="emailExist" style="font-size:20px;height:40px;width:450px;margin:auto; display:none;"><font color="red">Email id already exists.Please enter a different one.</font></label>
  </div>
</body>
</html>



