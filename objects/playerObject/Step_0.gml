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

if(instance_exists(orcObject)) && (place_meeting(x, y, orcObject)){
	if(!isDodging){
		path_end();
		slideTransition(transMode.roomRestart);
	}
}

if(instance_exists(spikeObject)) && (place_meeting(x, y, spikeObject)){
	if(!isDodging){
		path_end();
		slideTransition(transMode.roomRestart);
	}
}

if(instance_exists(skeletonObject)) && (place_meeting(x, y, skeletonObject)){
	if(!isDodging){
		path_end();
		slideTransition(transMode.roomRestart);
	}
}

if(moveStraightToEndEvent){
	path_end();
	if(!place_meeting(x,y,endEvent)){
		move_towards_point(endEvent.x,endEvent.y,2);
	}
}

