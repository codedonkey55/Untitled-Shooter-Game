/// @description Insert description here
// You can write your code in this editor
if(mode != transMode.off){
	if(mode == transMode.intro){
		percent = max(0,percent-max((percent/10),0.005));
	}else{
		percent = min(1,percent+max(((1-percent)/10),0.005));
	}
	
	if(percent == 1 || percent == 0){
		switch(mode){
			case transMode.intro:
				mode = transMode.off;
			break;
			case transMode.next:
				mode = transMode.intro;
				room_goto_next();
			break;
			case transMode.goto:
				mode = transMode.intro;
				room_goto(target);
			break;
			case transMode.restart:
				game_restart();
			break;
			default:
		}
	}
}