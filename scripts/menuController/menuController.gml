up = keyboard_check_pressed(vk_up);
down = keyboard_check_pressed(vk_down);
action = keyboard_check_pressed(vk_enter);
mbleft = mouse_check_button_pressed(mb_left);

/*
if(keyboard_check_pressed(vk_anykey)||mouse_check_button_pressed(mb_any)){
	controllerInUse = controllers.keyboard;	
}
//
if(abs(gamepad_axis_value(0, gp_axislh)) > 0.2 ){
	left = abs(min(gamepad_axis_value(0,gp_axislh),0));
	right = max(gamepad_axis_value(0,gp_axislh), 0);
	controllerInUse = controllers.gamepad;
}
//
if(abs(gamepad_axis_value(0, gp_axislh)) > 0.2 ){
	up = abs(min(gamepad_axis_value(0,gp_axislv),0));
	down = max(gamepad_axis_value(0,gp_axisrv), 0);
	controllerInUse = controllers.gamepad;
}

if(gamepad_button_check_pressed(0, gp_face1)){
	action = 1;
	controllerInUse = controllers.gamepad;
}

if(gamepad_button_check_pressed(0, gp_face2)){
	//B
	controllerInUse = controllers.gamepad;
}

if(gamepad_button_check_pressed(0, gp_face3)){
	//X
	controllerInUse = controllers.gamepad;
}

if(gamepad_button_check_pressed(0, gp_face4)){
	//Y
	controllerInUse = controllers.gamepad;
}

if(gamepad_button_check_pressed(0, gp_shoulderl)){
	//left shoulder button
	controllerInUse = controllers.gamepad;
}

if(gamepad_button_check_pressed(0, gp_shoulderr)){
	//right shoulder button
	controllerInUse = controllers.gamepad;
}
*/