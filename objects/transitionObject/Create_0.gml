/// @description Insert description here
// You can write your code in this editor
width = display_get_gui_width();
height = display_get_gui_height();

halfWidth = width*0.5;
halfHeight = height*0.5;

enum transMode {
	off,
	next,
	goto,
	restart,
	intro,
}

percent = 1;
target = room;
transColor = c_black;

mode = transMode.intro;