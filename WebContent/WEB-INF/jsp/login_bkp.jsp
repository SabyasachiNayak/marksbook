<!DOCTYPE html>
<html>
<head>
  <script src="../resources/scripts/jquery.min.js"></script>
  <script src="../resources/scripts/education.js"></script>
  <link rel="stylesheet" href="../resources/css/style.css">
</head>

<body style="white-space:nowrap;">
<div id="loginDivContent">
 <div>
 <br/>
 <br/>
  <h1 align="center" style="color:blue;padding-right:4%">Want to store and view all your School/College/University marksheets?
  Login here.</h1>
 </div>
 <br/>
 <br/>
 <br/>
 
 <div style="float:left;width: 50%">
 <img src="../resources/images/marksheet.png" width="99%" height="99%">
 </div>
 <br/>
 <br/>
 <br/>
 <!-- User Login -->
 <div align="center" style="float:right;width: 50%">
	  <label style="font-size:20px;margin-left:6%;">Email:</label> 
	  <input type="email" id="userid" style="font-size:15px;height:40px;width:350px;display:inline-block;" placeholder="Enter your email"><br/><br/>
	  <label style="font-size:20px;margin-left:1.5%;">Password:</label>
	  <input type="password" id="passwd" style="font-size:15px;height:40px;width:350px;display:inline-block;" placeholder="Enter your password"><br/>
	  <br/><br/>
	  <button id="signUpbtn" class="button" style="font-size:15px;height:40px;width:160px;margin-left:14%; display:inline-block;" onclick="openSignup();">New User Sign Up</button>
	  &nbsp; &nbsp; &nbsp; &nbsp;
	  <button id="signInbtn" class="button" style="font-size:15px;height:40px;width:160px;margin-left:auto; display:inline-block;" onclick="signIn();">Sign in</button>
  
	  <br/>
	  <div id="wrongPass" style="display: none">
	      <br/> <br/>
		  <label style="font-size:20px;margin-left:15%;"><font color="red">Wrong User Id or Password.Please try again.</font></label>
 	  </div>
 	  <br/> <br/>
 	<a href="#" style="font-size:22px;margin-left:19%;color: blue;" onclick="recoverPassword();">Forgot your password?</a>
 	<!-- <input style="font-size:20px;margin-left:20%;" class="MyButton" type="button" value="Forgot your password?" onclick="recoverPassword();"/> -->
    </div>
 <!-- Modal- New User Registration -->
 <div id="newUserRegModal" class="modal">
    <div align="center" class="modal-content">
      <br/>
      <h2 align="center">New User Registration</h2>
	  <label style="font-size:20px;margin-left:2%;">Name:</label> 
	  <input type="text" id="name" style="font-size:15px;height:40px;width:350px;margin:auto; display:inline-block;" placeholder="Enter your name" required><br/><br/><br/>
	  <label style="font-size:20px;margin-left:2%;">Email:</label> 
	  <input type="email" id="mailId" style="font-size:15px;height:40px;width:350px;margin:auto; display:inline-block;" placeholder="Enter your email" required><br/><br/><br/>
	  <label style="font-size:20px;margin-left:-3%;">Password:</label>
	  <input type="password" id="passwrd" style="margin-right:5%;font-size:15px;height:40px;width:350px;margin:auto;display:inline-block;" placeholder="Enter your password" required><br/>
	  <br/>
	  <br/>
      <button id="registerbtn" class="button" style="font-size:15px;height:40px;width:160px;margin:auto;margin-left:7%; display:inline-block;" onclick="register();">Register</button>   
      <br/><br/>
      <label id="allFields" style="font-size:20px;height:40px;width:450px;margin:auto; display:none;"><font color="red">Please enter all details.</font></label>
      <label id="emailExist" style="font-size:20px;height:40px;width:450px;margin:auto; display:none;"><font color="red">Email id already exists.Please enter a different one.</font></label>
   </div>
 </div>

 <!--Modal- Complete Profile -->
 <div id="profileCompleteModal" class="modal">
  <form class="modal-content">  
    <div align="center">
     <br/>
     <h2 align="center">User registered successfully.</h2>
     <br/>
     <br/>
    <!-- <a href="#" style="font-size:22px;color:blue;" onclick="getProfile();">Go to your profile</a> -->
     <button id="profilebtn" class="button" style="font-size:15px;height:40px;width:160px;margin:auto;margin-left:7%; display:inline-block;" onclick="welcome();">Go to home</button>
   </div>
  </form>
 </div>
 
  <!--Modal- Forgot Password -->
  <div id="forgotPasswordModal" class="modal">
    <div align="center" class="modal-content">
      <br/>
      <h2 align="center">Password Recovery</h2>
	  <label style="font-size:20px;margin-left:2%;">Email:</label> 
	  <input type="email" id="recoveryEmail" style="font-size:15px;height:40px;width:350px;margin:auto; display:inline-block;" placeholder="Enter your email" required>
	  <br/><br/><br/>
      <button id="passRecovbtn" class="button" style="font-size:15px;height:40px;width:160px;margin:auto;margin-left:7%; display:inline-block;" onclick="sendPassword();">Get your password</button>   
      <br/><br/>
      <label id="getPassword" style="font-size:20px;height:40px;width:450px;margin:auto; display:none;"><font color="red">Your password has sent to your registered email.</font></label>
   </div>
 </div>
 
</div>   
</body>
</html>



