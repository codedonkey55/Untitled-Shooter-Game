/// @description Insert description here
// You can write your code in this editor
if(path_position == 1){
	sprite_index = necromancerIdleSprite;
	if(!playerObject.hasPathStarted){
		with(playerObject){
			path_start(path_array[room], pathSpeed, path_action_continue, pathAbsolute);
			allowDodging = true;
			gun.allowShooting = true;
			hasPathStarted = true;
		}
	}
	if(instance_exists(enemySpawner)) && (!enemySpawner.isActivated){
		enemySpawner.isActivated = true;
		enemySpawner.spawn = true;
	}
	if(instance_exists(skeletonObject)) && (skeletonObject.waitForEvent){
		skeletonObject.waitForEvent = false;
	}
}else{
	sprite_index = necromancerRunSprite;
}

if(playerObject.x > x){
	image_xscale = 1;
}else{
	image_xscale = -1;	
}