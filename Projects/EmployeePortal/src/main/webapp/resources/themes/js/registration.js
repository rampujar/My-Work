$(document).ready(function(){
	
	var contextPath = $("#contextPath").val();
	//$("#teamSelect").on('focus', function(){
		$.ajax({
			method : "GET",
			url: contextPath+"/getTeams",
			dataType: "json",
			contentType: "application/json",
			success : function(data){
				var teams = data;
				var optionStr = '';
				for(var i=0; i<teams.length; i++){
					optionStr += '<option>'+teams[i]+'</option>';
				}
				//$("#teamSelect").empty();
				$("#teamSelect").append(optionStr);
				$("#teamSelect").val($("#employeeTeamBox").val());
			}
		});
	//})
	
	
	$("#deleteEmployee").on('click', function(){
		var employeeID = this.parentElement.parentElement.children[0].textContent;
		$.ajax({
			method : "GET",
			url: contextPath+"/deleteEmployee",
			data : {employeeID : employeeID},
			contentType: "application/json",
			success : function(data){
				alert("Delete Successful");
			}
		});
	});
	
	$("#teamSelect").on('change', function(){
		$("#employeeTeamBox").val($("#teamSelect").val());
	});
	
	
	$("#update").on('click', function(){
		var firstName = $("#FIRST_NAME").val();
		var lastName = $("#LAST_NAME").val();
		var email = $("#EMAIL_ID").val();
		var employeeTeam = $("#teamSelect").val();
		var designation = $("#DESIGNATION").val();
		
		if(firstName == "" || firstName == undefined){
			alert("Please Enter First Name");
			return false;
		} else if(lastName == "" || lastName == undefined){
			alert("Please Enter Last Name");
			return false;
		} else if(email == "" || email == undefined){
			alert("Please Enter Email ID");
			return false;
		} else if(employeeTeam == "" || employeeTeam == undefined){
			alert("Please select Employee Team");
			return false;
		} else if(designation == "" || designation == undefined){
			alert("Please enter Employee Designation");
			return false;
		} else{
			return true;
		}
		
	});
	
	$("#submit").on('click', function(){
		var employeeID = $("#EMPLOYEE_ID").val();
		var password = $("#PASSWORD").val();
		var firstName = $("#FIRST_NAME").val();
		var lastName = $("#LAST_NAME").val();
		var email = $("#EMAIL_ID").val();
		var joinedAs = $("#JOINED_AS").val();
		var dob = $("#DOB").val();
		var joinedDate = $("#JOINED_DATE").val();
		var employeeTeam = $("#teamSelect").val();
		var designation = $("#DESIGNATION").val();
		
		
		if(employeeID == "" || employeeID == undefined){
			alert("Please Enter Employee ID");
			return false;
		} else if(password == "" || password == undefined){
			alert("Please Enter Password");
		} else if(firstName == "" || firstName == undefined){
			alert("Please Enter First Name");
			return false;
		} else if(lastName == "" || lastName == undefined){
			alert("Please Enter Last Name");
			return false;
		} else if(email == "" || email == undefined){
			alert("Please Enter Email ID");
			return false;
		} else if(joinedAs == "" || joinedAs == undefined){
			alert("Please Enter Joined AS");
			return false;
		} else if(dob == "" || dob == undefined){
			alert("Please Enter DOB");
			return false;
		} else if(joinedDate == "" || joinedDate == undefined){
			alert("Please Enter Joined Date");
			return false;
		} else if(employeeTeam == "" || employeeTeam == undefined){
			alert("Please select Employee Team");
			return false;
		} else if(designation == "" || designation == undefined){
			alert("Please enter Employee Designation");
			return false;
		} else{
			return true;
		}
		
	});
});
