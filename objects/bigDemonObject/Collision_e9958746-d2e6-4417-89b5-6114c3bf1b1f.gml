/// @description Insert description here
// You can write your code in this editor
hp--;
if(hp < 1){
	instance_destroy();
	instance_create_layer(x,y,"objectInstance",deathCloudObject);
	audio_play_sound(Enemy_Death_6, 3, false);
}

instance_destroy(other);