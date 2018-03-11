<!DOCTYPE html>
<html>
<head>
  <script src="${pageContext.request.contextPath}/resources/scripts/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/scripts/marksbook.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>

<body>
 <!-- Modal- New User Registration -->
 <div id="newUserRegModal" class="modal">
  <div align="center" class="modal-content">
     <form id="userForm" style="background-color:white;margin:25px;">
      <br/>
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
    </form>
    <br/>
    <label id="registered" style="font-size:20px;height:40px;width:450px;margin:auto; display:none;">User registered successfully.</label>
      <!-- <label id="allFields" style="font-size:20px;height:40px;width:450px;margin:auto; display:none;"><font color="red">Please enter all details.</font></label> -->
      <label id="emailExist" style="font-size:20px;height:40px;width:450px;margin:auto; display:none;"><font color="red">Email id already exists.Please enter a different one.</font></label>
      <a href="#" style="font-size:18px;color: blue;" onclick="closeNewUserModal();">Close</a>
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
     <button id="profilebtn" class="button" style="font-size:15px;height:40px;width:160px;margin:auto;margin-left:7%; display:inline-block;" onclick="welcome();">Sign in</button>
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
</body>
</html>



