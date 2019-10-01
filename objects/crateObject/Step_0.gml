/// @description Insert description here
// You can write your code in this editor
if(hp < 1) && (sprite_index == crateSprite){
	var num = irandom_range(0,array_length_1d(explosion_sprite)-1);
	sprite_index = explosion_sprite[num];
	image_index = 0;
	audio_sound_pitch(explosion_sound[num],random_range(0.9,1.1));
	audio_play_sound(explosion_sound[num],3,false);
}

if(sprite_index != crateSprite) && (image_index >= image_number-1){
	instance_destroy();
}