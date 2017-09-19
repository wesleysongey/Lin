function submit1(){
	
	console.log("submit");
	
	$.ajax({
		url: "/setpassword",
		type: "POST",
		data: $("#changefrom").serialize(),
		success: function(data){
			if(data == 1){
				console.log(data);
				alert("修改成功，点击确认重新登陆");
				window.location="/login2";
			}else{
				alert("系统错误，请重试");
			}
		},
		error: function(){
			alert("系统错误，请重试");
		}
	})
}