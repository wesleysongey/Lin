$(function(){
    $("#btnaddmemo").click(function () {
        $("#adddialog").show("slow");
    });

    $("#cancel").click(function () {
        $("#adddialog").hide("slow");
    });

    $("#submit").click(function () {
        addmemo();
    });



})

function addmemo(){
    title = $("#title").val();
    if(title == ""){
    	showdialog("标题不能为空","","关闭" , null ,function () {})
        return;
    }
    text = $("#text").val();
    if(text == ""){
    	showdialog("内容不能为空","","关闭" , null ,function () {})
        return;
    }

    time = new Date().toLocaleString();

    $.ajax({
        url: "addmemo",
        type: "POST",
        data:{"title":title,
        "text":text,
        "time":time
        },
        success: function (data) {
            if(data == "000"){
            	alert("便签保存完成");
            	window.location.reload();
            }
            $("#adddialog").hide("slow");
        },
        error: function () {
        	showdialog("保存失败","","关闭",null,function(){});
            $("#adddialog").hide("slow");
        }
    });
    
    $("#title").val("");
    $("#text").val("");
 }

function deletememodialog(obj){
	showdialog("确定要删除此便签吗？","确定","关闭",function(){
		deletememo(obj);
	},function(){});
}

function deletememo(obj){
	id = obj.id;
	console.log($("#"+id).attr("id"));
	$.ajax({
		url: "deletememo",
		type: "POST",
		data:{"id":id},
		success: function(data){
			if(data == "000"){
				alert("删除完成");
				window.location.reload();
			}
		},
		error:function(){
			alert("删除失败");
		}
	});
	
}