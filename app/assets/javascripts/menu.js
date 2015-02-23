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

