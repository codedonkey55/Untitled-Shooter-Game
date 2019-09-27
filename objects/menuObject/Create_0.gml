/// @description Insert description here
// You can write your code in this editor

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
guiMargin = 32;

menuX = guiWidth;//+200;
menuY = guiHeight-guiMargin;//+100;

menuTargetX = guiWidth-guiMargin;
menuSpd = 25;

fontMenu = menuFont;
menuItemHeight = font_get_size(fontMenu);
menuCommitted = -1;

menuOptions = [
	"Exit Game",
	"Options",
	"Start Game",
];

menuCursor = array_length_1d(menuOptions)-1;

menuTop = menuY-((menuItemHeight*2)*array_length_1d(menuOptions));

menuColor = c_gray;
menuBGColor = c_black;

userInput = instance_create_layer(0,0,"Instances", menuControllerObject);