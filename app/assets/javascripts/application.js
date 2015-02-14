// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
var menu_over;
var submenu_over;
function mouseOutMenu(menu) { 
	if (submenu_over != menu) {
		$('#submenu_' + menu).hide();
	}
	menu_over = null;
}

function mouseOverMenu(menu) {
	$('#submenu_' + menu).show();
	menu_over = menu;
}

function mouseOutSubMenu(menu) { 
	if (menu_over != menu) {
		$('#submenu_' + menu).hide();
	}
	submenu_over = null;	
}

function mouseOverSubMenu(menu) {
	$('#submenu_' + menu).show();
	submenu_over = menu;	
}

function autoResize(id){
    var newheight;
    var newwidth;

    if(document.getElementById){
        newheight=document.getElementById(id).contentWindow.document .body.scrollHeight;
        newwidth=document.getElementById(id).contentWindow.document .body.scrollWidth;
    }

    document.getElementById(id).height= (newheight) + "px";
    document.getElementById(id).width= (newwidth) + "px";
}
