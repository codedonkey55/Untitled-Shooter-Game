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
	menuTargetX = guiWidth+300;
	menuCommitted = menuCursor;
}

var mouseXGUI = device_mouse_x_to_gui(0);
var mouseYGUI = device_mouse_y_to_gui(0);
if(mouseYGUI < menuY && mouseYGUI > menuTop && mouseXGUI > menuTargetX-200 && mouseXGUI < menuTargetX){
	menuCursor = (menuY-mouseYGUI)div(menuItemHeight*1.5);
	if(userInput.mbleft){
		screenShake(4, 30);
		menuTargetX = guiWidth+300;
		menuCommitted = menuCursor;
	}
}

if(menuX > guiWidth+150 && menuCommitted != -1){
	switch(menuCommitted){
		case 0: game_end();
		break;
		case 1: slideTransition(transMode.restart); //options
		break;
		case 2: 
		{
				if(!file_exists(SAVEFILE)){
					slideTransition(transMode.next);			
				}else{
					var file = file_text_open_read(SAVEFILE);
					var target = file_text_read_real(file);
					file_text_close(file);
					slideTransition(transMode.goto, target);
				}
		}
		break;
		case 3: slideTransition(transMode.next);
		break;
		default: show_debug_message("no existing menu item");
	}
}