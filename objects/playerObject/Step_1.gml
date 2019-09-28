/// @description Insert description here
// You can write your code in this editor

if(direction >= 0) && (direction <= 90){
	image_xscale = 1;
}else{
	image_xscale = -1;	
}

if(instance_exists(gun)){
	gun.x = x;
	gun.y = y;
}

if(isWalking) && (sprite_index != player_sprite[playerSprite.run]){
	sprite_index = player_sprite[playerSprite.run];
	image_index = 0;
}else if(isDodging) && (sprite_index != player_sprite[playerSprite.dodge]){
	sprite_index = player_sprite[playerSprite.dodge];
	image_index = 0;
}else if(!isWalking) && (!isDodging) && (sprite_index != player_sprite[playerSprite.idle]){
	sprite_index = player_sprite[playerSprite.idle];
	image_index = 0;
}

if(isDodging) && (sprite_index == player_sprite[playerSprite.dodge]) && (image_index >= image_number - 1){
	isDodging = false;
	isWalking = true;
}