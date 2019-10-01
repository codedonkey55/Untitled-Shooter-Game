/// @description Insert description here
// You can write your code in this editor

if(instance_exists(doorObject)) && (doorObject.isClosed) && (place_meeting(x, y, doorObject)){
	resetRoom(false);
}

if(instance_exists(bigDemonObject)) && (place_meeting(x, y, bigDemonObject)){
	if(!isDodging){
		resetRoom(true);
	}
}

if(instance_exists(orcObject)) && (place_meeting(x, y, orcObject)){
	if(!isDodging){
		resetRoom(true);
	}
}

if(instance_exists(spikeObject)) && (place_meeting(x, y, spikeObject)){
	if(!isDodging){
		resetRoom(true);
	}
}

if(instance_exists(skeletonObject)) && (place_meeting(x, y, skeletonObject)){
	if(!isDodging){
		resetRoom(true);
	}
}

if(instance_exists(mushroomBigObject)) && (place_meeting(x, y, mushroomBigObject)){
	if(!isDodging){
		resetRoom(true);
	}
}

if(instance_exists(icicleObject)) && (place_meeting(x, y, icicleObject)){
	if(!isDodging) && (icicleObject.image_index >= 6) && (icicleObject.image_index <= 8){
		resetRoom(true);
	}
}

if(moveStraightToEndEvent){
	path_end();
	if(!place_meeting(x,y,endEvent)){
		move_towards_point(endEvent.x,endEvent.y,0.7);
	}
}

