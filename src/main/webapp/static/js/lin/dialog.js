

function show_dialog() {
    $("#lindialog").dialog("open");
}
function showdialog(bodytext , button1 , button2 ,button1function , button2function) {
    initdialog(bodytext , button1 , button2 ,button1function , button2function );
    $("#lindialog").dialog("open");
}

function initdialog(bodytext , button1 , button2 ,button1function , button2function ){
    var btnjson ;
    if(button1 == ""){
        btnjson = [{
            text: button2,
            click: function() {
                button2function();
                $( this ).dialog( "close" );
            }
        }];
    }else {
        btnjson = [
            {
                text: button1,
                click: function() {
                    button1function();
                    $( this ).dialog( "close" );
                }
            },
            {
                text: button2,
                click: function() {
                    button2function();
                    $( this ).dialog( "close" );
                }
            }
        ];
    }
    if($("#lindialog").length > 0 ){
        $("#lindialog").text(bodytext);
    }else{
        $("body").append('<div id="lindialog" style="display:none">' + bodytext +'</div>');
    }
    $( "#lindialog" ).dialog({
        autoOpen: false,
        width: 200,
        buttons: btnjson,
        show: {
            effect: "blind",
            duration: 300
        },
        hide: {
            effect: "explode",
            duration: 500
        }
    });

}


