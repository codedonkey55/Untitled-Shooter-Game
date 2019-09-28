/// @description Insert description here
// You can write your code in this editor

if(instance_exists(doorObject)) && (doorObject.isClosed) && (place_meeting(x, y, doorObject)){
	path_end();
	slideTransition(transMode.roomRestart);
}

if(instance_exists(bigDemonObject)) && (place_meeting(x, y, bigDemonObject)){
	if(!isDodging){
		path_end();
		slideTransition(transMode.roomRestart);
	}
}

if(mouse_check_button(mb_right)) && (dodgeAmount > 0){
	dodgeAmount--;
	isDodging = true;
	isWalking = false;
}
