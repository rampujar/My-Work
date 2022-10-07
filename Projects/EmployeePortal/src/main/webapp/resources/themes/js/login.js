$(document).ready(function(){
	
	$("#loginId").on('click', function(){
		var username = $("#EMPLOYEE_ID").val();
		var password = $("#PASSWORD").val();
		var userNameRegex = new RegExp('^[A-Za-z0-9]');
		if(username == "" || password == ""){
			alert("Please enter Username/Password");
		} else if(!userNameRegex.test(username)){
			alert("Please enter Alphanumeric User ID")
		} else{
			$("#loginHidden").click();
		}	
	});
	
});
