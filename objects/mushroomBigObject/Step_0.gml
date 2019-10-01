/// @description Insert description here
// You can write your code in this editor
if((instance_exists(mushroomBabyObject)) && (mushroomBabyObject.hit)){
	move_towards_point(playerObject.x, playerObject.y, 2.2);
}

if(abs(angle_difference(180, direction)) < 90){
	image_xscale = -1;
}else{
	image_xscale = 1;
}