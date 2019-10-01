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

if(sprite_index == lizardMaleRunSprite && path_position != 1){
	if(image_index >= 2) && (image_index < 3) || (image_index >= 4){
		hasPlayedWalkSound = false;
	}
	if(image_index >= 1) && (image_index < 2) && (!hasPlayedWalkSound){
		var sound = choose(Walk_3, Walk_9);
		audio_sound_pitch(sound, 0.2)
		audio_play_sound(sound, 2, false);
		hasPlayedWalkSound = true;
	}else if(image_index >= 3) && (image_index < 4) && (!hasPlayedWalkSound){
		var sound = choose(Walk_3, Walk_9);
		audio_sound_pitch(sound, 0.2)
		audio_play_sound(sound, 2, false);
		hasPlayedWalkSound = true;
	}
}
