/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
instance_destroy();
instance_create_layer(x,y,"objectInstance",deathCloudObject);
audio_play_sound(Enemy_Death_6, 3, false);