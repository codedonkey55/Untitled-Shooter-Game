/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_space)){
	if(!hasPathStarted){
		if(!bossRoom) && (allowStartWalking){
			path_start(path_array[room], pathSpeed, pathAction, pathAbsolute);
			hasPathStarted = true;
			allowDodging = true;
			gun.allowShooting = true;
			allowPlayerReset = true;
		}
	}else if(hasPathStarted) && (allowPlayerReset){
		path_end();
		slideTransition(transMode.roomRestart);
	}
}

dodgeDelay--;
if(mouse_check_button(mb_right)) && (allowDodging) && (dodgeAmount > 0) && (dodgeDelay < 1){
	dodgeDelay = 40;
	if(!unlimitedDodge){
		dodgeAmount--;
	}
	isDodging = true;
	audio_play_sound(Dodge_2, 2, false);
}