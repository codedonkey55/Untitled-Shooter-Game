/// @description Insert description here
// You can write your code in this editor
show_debug_message(direction)
if(direction > 0) && (direction < 90){
	image_xscale = 1;
}else{
	image_xscale = -1;	
}

if(instance_exists(gunObject)){
	gunObject.x = playerObject.x;
	gunObject.y = playerObject.y;
}
