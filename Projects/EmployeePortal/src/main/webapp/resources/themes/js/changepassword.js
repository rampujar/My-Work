$(document).ready(function(){
	
	$("#changePassword").on('click', function(){
		var oldPassword = $("#oldPassword").val();
		var newPassword = $("#newPassword").val();
		var confirmPassword = $("#confirmPassword").val();
		if(oldPassword == ""){
			alert("Please enter Old Password");
		} else if(newPassword == ""){
			alert("Please enter New Password");
		} else if(confirmPassword == ""){
			alert("Please enter Confirm Password");
		} else if(newPassword != confirmPassword){
			alert("New Password and Confirm Password has to be Same");
		} else{
			$("#hiddenChangePwd").click();
		}
	});
	
	
	$("#showwConfirmPasswd,#showwNewPasswd").on('click', function(){
		var input = this.parentElement.nextElementSibling;
		if(input.type == 'text'){
			input.type = 'password';
			$(this).addClass("glyphicon-eye-close");
			$(this).removeClass("glyphicon-eye-open");
		} else{
			input.type = 'text';
			$(this).removeClass("glyphicon-eye-close");
			$(this).addClass("glyphicon glyphicon-eye-open")
		}
	});
	
});
