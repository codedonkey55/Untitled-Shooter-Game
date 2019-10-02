/// @description Insert description here
// You can write your code in this editor
if(image_index >= image_number - 1){
	image_speed = 0;
	triggered = false;
	instance_destroy();
}

if(triggered){
	image_speed = 1;
}

if(image_index >= 8 && !hasPlayedSound){
	if(!audio_is_playing(Ice_smash)){
		audio_play_sound(Ice_smash, 3, false);
	}
	hasPlayedSound = true;
}