/// @description Insert description here
// You can write your code in this editor
if(collision_circle(x,y,120,playerObject,false,false)){
	walkForward = true;
}

if(walkForward) && (!hasTouched){
	move_towards_point(playerObject.x, playerObject.y,2);
	sprite_index = orcSpriteRun;
}else{
	sprite_index = orcSpriteIdle;
	speed = 0;
}

if(collision_circle(x,y,10,playerObject,false,false)){
	hasTouched = true;
}

if(abs(angle_difference(180, direction)) < 90){
	image_xscale = -1;
}else{
	image_xscale = 1;
}