/// @description Insert description here
// You can write your code in this editor

if(isActivated){
	image_speed = 1;
	if(image_index >= image_number-1){
		isActivated = false;
		image_speed = 0;
		image_index = 0;
		hasPlayedSound = false;
	}
}else{
	image_speed = 0;
}

if(isActivated) && (!hasPlayedSound){
	hasPlayedSound = true;
	audio_play_sound(spiketrap, 3, false);
}