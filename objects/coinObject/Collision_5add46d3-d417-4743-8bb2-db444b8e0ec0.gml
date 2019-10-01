/// @description Insert description here
// You can write your code in this editor
playerObject.coinsGained++;
instance_destroy();
audio_sound_pitch(Coin_2, random_range(0.9,1.1));
audio_play_sound(Coin_2, 3, false);