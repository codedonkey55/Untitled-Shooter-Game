/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_space)){
	if(isWalking){
		isWalking = false;
		slideTransition(transMode.roomRestart);
	}else{
		isWalking = true;
		isDodging = false;
		path_start(path_array[room], pathSpeed, pathAction, pathAbsolute);
	}
}