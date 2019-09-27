/// @description Insert description here
// You can write your code in this editor
menuX += (menuTargetX-menuX)/menuSpd;

if(userInput.up){
	menuCursor++;
	if(menuCursor > array_length_1d(menuOptions)-1){
		menuCursor = 0;	
	}
}else if(userInput.down){
	menuCursor--;
	if(menuCursor < 0){
		menuCursor = array_length_1d(menuOptions)-1;	
	}
}else if(userInput.action){
	screenShake(4, 30);
	menuTargetX = guiWidth+200;
	menuCommitted = menuCursor;
}

var mouseXGUI = device_mouse_x_to_gui(0);
var mouseYGUI = device_mouse_y_to_gui(0);
if(mouseYGUI < menuY && mouseYGUI > menuTop && mouseXGUI > menuTargetX-200 && mouseXGUI < menuTargetX){
	menuCursor = round((menuY-mouseYGUI)/(menuItemHeight*2));
	if(userInput.mbleft){
		screenShake(4, 30);
		menuTargetX = guiWidth+200;
		menuCommitted = menuCursor;
	}
}

if(menuX > guiWidth+150 && menuCommitted != -1){
	switch(menuCommitted){
		case 0: game_end();
		break;
		case 1:
		break;
		case 2: slideTransition(transMode.next);
		break;
		default:
	}
}