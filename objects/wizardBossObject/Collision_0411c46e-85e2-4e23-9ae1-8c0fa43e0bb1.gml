/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
hp--;
if(hp < maxhp/2){
	waveAttackAmount = 2;
}
if(hp < 1){
	instance_destroy();
	playerObject.moveStraightToEndEvent = true;
	playerObject.customEnd = true;
	var cloud = instance_create_layer(x,y,"objectInstance",deathCloudObject);
	cloud.coinAmount = 35;
}