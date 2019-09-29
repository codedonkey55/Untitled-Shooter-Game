/// @description Insert description here
// You can write your code in this editor

if(path_position == 1){
	var rx = 100;
	var ry = camera_get_view_height(cameraObject)-20;
	draw_set_color(c_red);
	draw_rectangle(rx, ry, rx+((hp/maxhp)*250),ry-32,false);
	draw_set_color(c_gray);
	draw_rectangle(rx, ry, rx+((maxhp/maxhp)*250),ry-32,true);
}