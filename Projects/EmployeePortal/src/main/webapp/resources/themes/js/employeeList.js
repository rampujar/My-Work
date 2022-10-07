$(document).ready(function(){
	
	var contextPath = $("#contextPath").val();
	
	$(".deleteEmployee").on('click', function(){
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
