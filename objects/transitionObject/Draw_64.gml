/// @description Insert description here
// You can write your code in this editor
if(mode != transMode.off){
	draw_set_color(transColor);
	draw_rectangle(0,0,width, percent*halfHeight, false);
	draw_rectangle(0,height, width, height-(percent*halfHeight), false);
}