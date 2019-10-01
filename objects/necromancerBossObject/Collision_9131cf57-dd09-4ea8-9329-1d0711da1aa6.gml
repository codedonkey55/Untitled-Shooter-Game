/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
hp--;
if(hp < 1){
	instance_destroy();
	instance_destroy(enemySpawner);
	playerObject.moveStraightToEndEvent = true;
	playerObject.customEnd = true;
	var cloud = instance_create_layer(x,y,"objectInstance",deathCloudObject);
	cloud.coinAmount = 25;
}