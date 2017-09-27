var messagetype;
$(function () {

	 $("#messagetype").change(function(){
		 
		 messageTypeChange();
	 });
	 
	 $("#submit").click(function(){
		 submitform();
	 });
	
});

function showNoticetree(){
	$("#treeview").show(speed="slow");
}
function hideNoticetree(){
	$("#treeview").hide(speed="slow");
}

function messageTypeChange(){
	messagetype = $("#messagetype").val();
	if(messagetype == 1){
		showNoticetree();
	}else{
		hideNoticetree();
	}
}

function submitform(){
	if($("#body").val() == ""){
		alert("未输入内容");
		return;
	}
	var checked = getChecked();
	if(messagetype == 1){
	if(checked == ""){
		alert("请选择接受通知的对象");
		return;
	}
	}
	var val = $("#noticform").serialize()+"&recive=" + getChecked();
	
	$.ajax({
		url:"/addnotice",
		data:val,
		type:"POST",
		success:function(){
			console.log("success");
		},
		error:function(){
			console.log("error");			
		}
	})
	
}

function getChecked(){
	var nodes = $('#tt').tree('getChecked');
	var s = '';
	for(var i=0; i<nodes.length; i++){
		if (s != '') s += ',';
		s += nodes[i].text;
	}
	return s;
}