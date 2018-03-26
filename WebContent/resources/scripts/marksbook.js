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
		    success: function(result) {
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
	    	};
	    	
		if(formData.email != "" && formData.password != "")
		{
		    $.ajax({
		    type: 'POST',
		    contentType : 'application/json',
		    url:  '../login/validate',
		    data : JSON.stringify(formData),
		    dataType: 'json',
		    success: function(result) {
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
	
	$(document).ready(function() {
	$("#viewMarksBtn").click(function()
	{
		$.ajax({
		    type: 'GET',
		    contentType : 'application/json',
		    url:  '../user/getHSCMarks',
		    dataType: 'json',
		    success: function(result) {
				if(result.length > 0)
				{
					document.getElementById('HSCMarksTableDiv').style.display='block';
					
					//$('#hscMarksTable tr').not(':first').not(':last').remove();
					$('#hscMarksTable tr').not(':first').remove();
		        	var html = '';
		        	for(var i = 0; i < result.length; i++)
		        	            html += '<tr><td><a href="#" onclick="loadQuestion()">' + result[i].subject + '</a></td><td>' + result[i].fullmarks + '</td><td>'
		        	            + result[i].marks + '</td></tr>';
		        	html = html + '<tr><th>Total</th><th>750</th><th>562</th></tr><tr><th>Overall Percentage</th><th>75</th></tr>';
		        	$('#hscMarksTable tr').first().after(html);
				}
		    },
			error: function() {
	    	 console.log('show marks error');
			}
		});
	});
  });
	
	function loadQuestion()
	{
		document.getElementById('questionDiv').style.display='block';
		document.getElementById('HSCMarksTableDiv').style.display='none';
		document.getElementById('header').style.display='none';
	}
	
	function backToMarksboard()
	{
		document.getElementById('questionDiv').style.display='none';
		document.getElementById('header').style.display='block';
		document.getElementById('HSCMarksTableDiv').style.display='block';
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
	
	
	
	
	