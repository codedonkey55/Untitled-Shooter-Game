/// @description Insert description here
// You can write your code in this editor
instance_destroy(other);
hp--;
if(!audio_is_playing(NecroDeath_8_Inspired_by_MC)){
	audio_sound_pitch(NecroDeath_8_Inspired_by_MC, 0.8);
	audio_play_sound(NecroDeath_8_Inspired_by_MC, 2, false);
}
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