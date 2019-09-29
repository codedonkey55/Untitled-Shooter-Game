/// @description Insert description here
// You can write your code in this editor

if(isActivated){
	image_speed = 0.7;
	if(image_index >= image_number-1){
		isActivated = false;
		image_speed = 0;
		image_index = 0;
	}
}else{
	image_speed = 0;
}