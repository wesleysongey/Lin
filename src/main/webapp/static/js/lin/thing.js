$(function() {
	$.jgrid.defaults.styleUI = 'Bootstrap';
	buildgrid();
});


function buildgrid() {
	$("#table_list_2").jqGrid(
		{
			url : "/thing/list",
			datatype : "json",
			mtype : "POST",
			height : "100%",
			autowidth : true,
			rownumbers : true,
			jsonReader : {
				root : "dataList",
				page : "currentPage",
				total : "totalPage", //   很重要 定义了 后台分页参数的名字。
				records : "totalCount"
			},
			rowNum : 10,
			rowList : [ 10, 20, 30 ],
			colNames : [ 'id', 'name', 'text', 'state', 'name1', 'name2', 'name3' ],
			colModel : [
				{
					name : 'id',
					index : 'id',
					editable : true,
					hidden : true,
				},
				{
					name : 'name',
					index : 'name',
					editable : true,
				},

				{
					name : 'text',
					index : 'text',
					editable : true,
				},
				{
					name : 'state',
					index : 'state',
					editable : true,
				},
				{
					name : 'name1',
					index : 'name1',
					editable : true,
				},
				{
					name : 'name2',
					index : 'name2',
					editable : true,
				},
				{
					name : 'name3',
					index : 'name3',
					editable : true,
				}
			],
			pager : "#pager_list_2",
			viewrecords : true,
			editurl : "/thing/operation",
			hidegrid : false,
			gridComplete : function() {

			}
		});



	// Setup buttons
	$("#table_list_2").jqGrid('navGrid', '#pager_list_2', {
		edit : true,
		add : true,
		del : true,
		search : false
	}, {
		height : 300,
		reloadAfterSubmit : true
	});


	$(window).bind('resize', function() {
		var width = $('.jqGrid_wrapper').width();
		$('#table_list_2').setGridWidth(width);
	});

}