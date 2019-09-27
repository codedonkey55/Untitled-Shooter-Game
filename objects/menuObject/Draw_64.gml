/// @description Insert description here
// You can write your code in this editor

for(var ii = array_length_1d(menuOptions)-1; ii >= 0;  ii--){
	var offset = 2;
	var txt = menuOptions[ii];
	if(menuCursor == ii){
		txt = string_insert("> ", txt, 0);
		menuColor = c_white;
	}else{
		menuColor = c_gray;	
	}
	var xx = menuX;
	var yy = menuY-(menuItemHeight*(ii*1.5));
	drawSetText(menuBGColor, fontMenu, fa_right, fa_bottom);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy-offset,txt);
	draw_text(xx,yy+offset,txt);
	drawSetText(menuColor, fontMenu, fa_right, fa_bottom);
	draw_text(xx,yy,txt);
}