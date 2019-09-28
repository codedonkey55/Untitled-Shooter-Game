/// @description Insert description here
// You can write your code in this editor

if(start){
	delay--;	
}
if(start) && (delay < 1){
	path_start(menu2, 2, path_action_reverse, false);	
}
if(menuPlayerObject.path_position == 1){
	start = true;
}

if(direction >= 0) && (direction <= 90){
	image_xscale = 1;
}else{
	image_xscale = -1;	
}