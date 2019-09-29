/// @description Insert description here
// You can write your code in this editor

hp = maxhp;

if(followPath){
	path_start(pathToFollow, 2, path_action_stop, true);
}

playerObject.allowStartWalking = false;