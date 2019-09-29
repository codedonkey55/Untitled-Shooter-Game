/// @description Insert description here
// You can write your code in this editor

if(instance_exists(playerObject)) && (!waitForEvent){
	move_towards_point(playerObject.x, playerObject.y,2.2);
	sprite_index = skeletonRunSprite;
}


if(abs(angle_difference(180, direction)) < 90){
	image_xscale = -1;
}else{
	image_xscale = 1;
}