$(function () {
	$("#changesubmit").click(function(){
		modify();
	});
	
	
	console.log("hello");
	$.jgrid.defaults.styleUI = 'Bootstrap';

	
	$.ajax({
		url:"/deptlistforadd",
		type:"POST",
		beforeSend:function(){
			$("#loading").show();
		},
		success:function(data){
			console.log(data);
			buildgrid(data);
		},
		error:function(){
			console.log("error");
		},
		complete:function(){
			$("#loading").hide();
		}
	});
	
	





			});

function del(id){
	var jsondata = {"id" : id};
	$.ajax({
		url: "/deleteuser",
		type: "POST",
		data: jsondata,
		success: function(data , stutas){
			console.log(data);
			if(data == "1"){
				$("#table_list_2").trigger("reloadGrid");
				alert("删除完成");				
			}else{
				alert("出现错误，请重试");
			}
		},
		error: function(){
			alert("出现错误，请重试");
		}
	});


}
function modify(){
	
	console.log($("#changefrom").serialize());
	
	$.ajax({
		url: "/setuser",
		type: "POST",
		data: $("#changefrom").serialize(),
		success: function(data){
			if(data == 1){
				alert("修改完成");
				$("#table_list_2").trigger("reloadGrid");
				changedialogdismiss();
			}else{
				alert("出现错误，请重试");
			}
			
		},
		error: function(){
			alert("出现错误，请重试");
		}
	});
}




function resetpasswork(id){

	var jsondata = {"id" : id};
	$.ajax({
		url: "/resetpassword",
		type: "POST",
		data: jsondata,
		success: function(data , stutas){
			console.log(data);
			if(data == "1"){
				alert("密码重置完成");				
			}else{
				alert("出现错误，请重试");
			}
		},
		error: function(){
			alert("出现错误，请重试");
		}
	});

}


function changedialogdismiss(){
	$("#changedialog").hide(speed="slow");
}
function changedialogshow(id){
	
	
	
	var datas = $("#table_list_2").jqGrid("getRowData",id);
	$("#changeid").attr("value" , id);
	$("#changeusername").text(datas.username);
	$("#changedialog").show(speed="slow");
}

function buildgrid(deptinfo){
	$("#table_list_2").jqGrid(
			{
				url : "/userlist",
				datatype: "json",
				mtype: "POST",
				height: "100%",
				autowidth: true,
//				shrinkToFit: true,
            rownumbers : true,
            jsonReader: {
                root:"dataList",
                page:"currentPage",
                total:"totalPage",          //   很重要 定义了 后台分页参数的名字。
                records:"totalCount"
            },
            rowNum: 10,
				rowList: [10, 20, 30],
				colNames: ['用户名','性别', '部门', '角色','操作'],
				colModel: [
				           {
				        	   name: 'username',
				        	   index: 'username',
				        	   editable: true,
				        	   width: 90

				           },
				           {
				        	   name: 'avator',
				        	   index: 'avator',
				        	   editable: true,
				        	   edittype:"select",
				        	   editoptions:{
				        		   value:"0:女;1:男"
				        	   },
				        	   width: 90

				           },
				           {
				        	   name: 'dept',
				        	   index: 'dept',
				        	   editable: true,
				        	   edittype:"select",
				        	   editoptions:{
				        		   value:deptinfo
				        	   },
				        	   width: 80
				           },
				           {
				        	   name: 'roleTip',
				        	   index: 'roleTip',
				        	   editable: true,
				        	   edittype:"select",
				        	   editoptions:{
				        		   value:"2:用户;1:超级管理员"
				        	   },
				        	   width: 100,
				        	   sortable: false,
				           },
				           {
				        	   name: 'handle',
				        	   index: 'handle',
				        	   width: 100,
				        	   sortable: false
				           }
				           ],
				           pager: "#pager_list_2",
				           viewrecords: true,
				           caption: "用户列表",
				           add: true,
				           edit: false,
				           addtext: 'Add',
				           editurl: "/adduser",
				           hidegrid: false , 
				           gridComplete: function(){
				        	   console.log("grid Complete");				        	
				        	   var ids = $("#table_list_2").jqGrid("getDataIDs");
				        	   for (var int = 0; int < ids.length; int++) {
				        		   var id = ids[int];
				        		   var modify = "<a href='#' style='color:#f60' onclick='changedialogshow(" + id + ")'>修改</a>";  //这里的onclick就是调用了上面的javascript函数 Modify(id)
				        		   var del = "<a href='#'  style='color:#f60' onclick='del(" + id + ")' >删除</a>";   
				        		   var resetpasswork = "<a href='#'  style='color:#f60' onclick='resetpasswork(" + id + ")' >重置密码</a>";   
				        		   var result = $("#table_list_2").jqGrid("setRowData", id, {handle: modify + "&nbsp &nbsp" + del + "&nbsp &nbsp" + resetpasswork});
				        	   }
				           }
			});

	// Setup buttons
	$("#table_list_2").jqGrid('navGrid', '#pager_list_2', {
		edit: false,
		add: true,
		del: false,
		search: false
	}, {
		height: 300,
		reloadAfterSubmit: true
	});


	$(window).bind('resize', function () {
		var width = $('.jqGrid_wrapper').width();
		$('#table_list_2').setGridWidth(width);
	});

}