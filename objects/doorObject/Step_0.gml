/// @description Insert description here
// You can write your code in this editor
if(instance_exists(leverObject))&& (leverObject.isOn){
	if(image_index == 1){
		audio_play_sound(Door_Close, 3, false);
	}
	image_index = 0;
	isClosed = true;
}else{
	if(image_index == 0){
		audio_play_sound(Door_Open_2, 3, false);
	}
	image_index = 1;
	isClosed = false;
}