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
				var optionStr = '<option></option>';
				for(var i=0; i<teams.length; i++){
					optionStr += '<option>'+teams[i]+'</option>';
				}
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
				location.reload();
			}
		});
	});
});
