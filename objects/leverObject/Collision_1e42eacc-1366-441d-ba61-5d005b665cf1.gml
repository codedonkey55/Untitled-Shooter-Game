/// @description Insert description here
// You can write your code in this editor
isOn *= -1
image_xscale = isOn;
instance_destroy(other);
audio_play_sound(Lever_Switch, 2, false);