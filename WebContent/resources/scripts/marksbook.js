	/*function openSignup() {
	   // document.getElementById('registerDiv').style.display='block';
	    $('#loginDivContent').load("../register/user");
	};
	function openSignIn() {
	    $('#loginDivContent').load("../login/home");
	};
	
	function closeNewUserModal() {
	 var modal = document.getElementById('registerDiv');
	 modal.style.display = "none";
	};
	
	function closeUserModal(){
		 var modal = document.getElementById('userProfileModal');
	 	    
	 	    window.onclick = function(event) {
	 	        if (event.target == modal) {
	 	            modal.style.display = "none";
	 	        }
	 	    };
	} 
	*/

	function register() {
		var formData = {
	    		name : $("#name").val(),
	    		email : $("#mailId").val(),
	    		password: $("#passwrd").val()
	    	};
		if(formData.name != "" && formData.email != "" && formData.password != "")
		{
		    $.ajax({
		    type: 'POST',
		    contentType : 'application/json',
		    url:  '../register/registerUser',
		    data : JSON.stringify(formData),
		    dataType: 'json',
		    success: function(result) {debugger;
		    	 console.log("registration - success");
		    	 
		    	 if(result.status == "FAILURE")
		         {
		    		document.getElementById('emailExist').style.display='block';
		         }
			     else
		         {			    	
		        	document.getElementById('emailExist').style.display='none';
		        	document.getElementById('registered').style.display='block';
		        	document.getElementById('newId').style.display='block';
		        	document.getElementById('existingId').style.display='none';
		        	//$('#registerDiv').load("../user/welcome");
		         }
		    	},
		      error: function() {
		    	  console.log("registration error");
		    }
		  });
		 }
		 else
		 {
			 document.getElementById('emailExist').style.display='none';
		 }
		
	};
//var emailReg = /^([w-.]+@([w-]+.)+[w-]{2,4})?$/;
	function signIn() {
		var formData = {
	    		email :  $("#userid").val(),
	    		password: $("#passwd").val(),
	    	};debugger;
	    	
		if(formData.email != "" && formData.password != "")
		{
		    $.ajax({
		    type: 'POST',
		    contentType : 'application/json',
		    url:  '../login/validate',
		    data : JSON.stringify(formData),
		    dataType: 'json',
		    success: function(result) {debugger;
			    if(result == '' || result == null)
		    	{
		    		document.getElementById('wrongPass').style.display='block';
		    	}
		    	else
		    	{
		    		document.getElementById('wrongPass').style.display='none';
		    		sessionStorage.setItem("id", result.id);
		    		sessionStorage.setItem("name", result.name);
		    		sessionStorage.setItem('email',result.email);
		    		window.location.replace("../user/welcome");
		    	}
		    },
		    error: function() {
		    	 console.log('sign in error');
		    }
		  });
		}
	};
	
	/*function welcome()  {
		 $.ajax({
		        type: 'GET',
		        url:  '../user/welcome',
		        async: true,
		        success: function(result) {
		        	window.location.replace("../user/welcome");
		        	var name = document.getElementById('name').value;
		        	var email = document.getElementById('mailId').value;
		        	sessionStorage.setItem('name',name);
		        	sessionStorage.setItem('email',email);
		        },
		        error: function() {
		            console.log('go to profile error');
		        }
		      });
	}*/
	
	function upload()
	{
		document.getElementById('10thUpload').style.display='none';
		document.getElementById('10thDownload').style.display='block';
		document.getElementById('10thMarksTable').style.display='block';
	}
	
	function signOut()  {
		sessionStorage.clear();
		window.location.replace("../login/home");
	}

	$(document).ready(function(){
		$("#passwd").keypress(function(e) {
			if(e.keyCode == 13) {
			    signIn();
			}
		});
	});
	
	function recoverPassword() {
	    document.getElementById('forgotPasswordModal').style.display='block';
	    document.getElementById('recoveryEmail').value = '';
	    document.getElementById('getPassword').style.display='none';
	    var modal = document.getElementById('forgotPasswordModal');
	 
	    window.onclick = function(event) {
	        if (event.target == modal) {
	            modal.style.display = "none";
	        }
	    };
	};

	function sendPassword() {
		var recEmail = document.getElementById('recoveryEmail').value;
		if(recEmail != '')
		{
			document.getElementById('getPassword').style.display='block';
		}
		else
		{
			document.getElementById('getPassword').style.display='none';
		}
	};
	
	
	
	