/// @description Insert description here
// You can write your code in this editor
if(instance_exists(doorObject)) && (doorObject.collision) && (place_meeting(x, y, doorObject)){
	path_end();
	slideTransition(transMode.restart);
}

if(instance_exists(bigDemonObject)) && (place_meeting(x, y, bigDemonObject)){
	path_end();
	slideTransition(transMode.restart);
}

