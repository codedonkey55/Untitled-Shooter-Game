/// @description Insert description here
// You can write your code in this editor
if(hit){
	if(!place_meeting(x,y,collisionObject)){
		move_towards_point(playerObject.x, playerObject.y, -0.5);
		sprite_index = mushroomBabyRunSprite;
	}else{
		sprite_index = mushroomBabyIdleSprite;
		speed = 0;
	}
}else if(!hit && isDestinationReached && delay < 1){
	delay = 50;
	move_towards_point(irandom_range(x-50, x+50),irandom_range(y-50,y+50),0.5);
	sprite_index = mushroomBabyRunSprite;
}else if(!hit && isDestinationReached && delay > 0){
	sprite_index = mushroomBabyIdleSprite;
	speed = 0;
	delay--;
}

if(abs(angle_difference(180, direction)) < 90){
	image_xscale = -1;
}else{
	image_xscale = 1;
}

if(hit){
	image_xscale *= -1;
}