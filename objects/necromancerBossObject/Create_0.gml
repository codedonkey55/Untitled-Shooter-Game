/// @description Insert description here
// You can write your code in this editor

hp = maxhp;
if(followPath){
	path_start(pathToFollow, 2, path_action_stop, true);
	audio_sound_pitch(Laugh_1,0.6);
	audio_play_sound(Laugh_1,2,false);
}

playerObject.allowStartWalking = false;