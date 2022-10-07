$(document).ready(function(){
	
	var contextPath = $("#contextPath").val();
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
				$("#teamSelect").empty();
				$("#teamSelect").append(optionStr);	
			}
		})
});
