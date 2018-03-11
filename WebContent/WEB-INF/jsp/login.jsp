<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
  	 <div align="center" style="margin:auto;width:32%;height:20em;margin-top:2%;border: 1px solid grey;"> 
		 	  <h2>Sign in</h2>
		 	  <input type="email" id="userid" style="font-size:15px;height:40px;width:25em;" placeholder="Enter your email">
		 	  <input type="password" id="passwd" style="font-size:15px;height:40px;width:25em;margin-top: 4%" placeholder="Enter your password">
		 	  <button id="signInbtn" type="submit" class="button" style="font-size:15px;height:40px;width:25em; margin-top: 6%" onclick="signIn()">Sign in</button>
			  <br/><br/>
			  <div id="wrongPass" style="display: none">
			  <br/> <br/>
			  <label style="font-size:20px;margin-left:15%;"><font color="red">Wrong User Id or Password.Please try again.</font></label>
		 	  </div>
		 	  <a href="#" style="font-size:18px;color: blue;margin-top: 6%" onclick="recoverPassword();">Forgot your password?</a>
		  </div>
		  
  	<form action="../register/user">
	  	<div id="newUserDiv">
	  		 <button id="signUpbtn" class="button" style="font-size:15px;height:40px;width:29em;margin-top:4%;margin-left:34%" >Create Account</button>
	  	</div>
  	</form>
</div>   
</body>
</html>



