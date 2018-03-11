<!DOCTYPE html>
<html>
<head>
  <script src="${pageContext.request.contextPath}/resources/scripts/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/scripts/marksbook.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>

<body>

<div id="loginDivContent">
	<div id="imgDiv" style="margin-left:43%;margin-top:2%">
 		<img src="${pageContext.request.contextPath}/resources/images/marksbook.png" width="25%" height="25%">
 	</div>
 	<!-- User Login -->
 	<form id="loginForm" style="margin:auto;width:32%;margin-top:2%">
 	 <fieldset id="loginFieldset">
		 <div align="center"> 
		 	  <h2>Sign in</h2>
		 	  <div id="emailDiv">
			  	<input type="email" id="userid" style="font-size:15px;height:40px;width:25em;" placeholder="Enter your email">
			  </div>
			  <div id="pswdDiv">
			  	<input type="password" id="passwd" style="font-size:15px;height:40px;width:25em;margin-top: 4%" placeholder="Enter your password">
			  </div>
			  <div id="signinDiv">
			  	<button id="signInbtn" class="button" style="font-size:15px;height:40px;width:25em; margin-top: 4%" onclick="signIn();">Sign in</button>
			  </div>
			  <br/>
			  <div id="wrongPass" style="display: none">
			  <br/> <br/>
			  <label style="font-size:20px;margin-left:15%;"><font color="red">Wrong User Id or Password.Please try again.</font></label>
		 	  </div>
		 	  <a href="#" style="font-size:18px;color: blue;" onclick="recoverPassword();">Forgot your password?</a>
		  </div>
	  </fieldset>
  	</form>
  	<div id="newUserDiv">
  		 <button id="signUpbtn" class="button" style="font-size:15px;height:40px;width:29em;margin-top:4%;margin-left:34%" onclick="openSignup();">Create Account</button>
  	</div>
</div>   
</body>
</html>



