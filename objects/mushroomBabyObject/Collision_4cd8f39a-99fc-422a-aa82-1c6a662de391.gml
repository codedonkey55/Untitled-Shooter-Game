/// @description Insert description here
// You can write your code in this editor
for(var ii = 0; ii < instance_number(mushroomBabyObject); ii++){
	var baby = instance_find(mushroomBabyObject, ii);
	baby.hit = true;
}
instance_destroy(other);
instance_destroy();
audio_sound_pitch(mushroombaby, 1.4);
audio_play_sound(mushroombaby, 3, false);