/// @description Insert description here
// You can write your code in this editor
hp--;
instance_destroy(other);
if(hp < 1){
	instance_destroy();
	audio_play_sound(Enemy_Death_6, 3, false);
}
var cloud = instance_create_layer(x,y,"objectInstance",deathCloudObject);
cloud.coinAmount = 0;