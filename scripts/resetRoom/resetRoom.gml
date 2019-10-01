///@arg sound true or false

path_end();
slideTransition(transMode.roomRestart);
if(argument0 && !hasPlayedHitSound){
	audio_play_sound(Player_Hit_6, 1, false);
	hasPlayedHitSound = true;
}