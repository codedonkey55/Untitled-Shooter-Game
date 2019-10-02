/// @description Insert description here
// You can write your code in this editor
if(abs(angle_difference(180, direction)) < 90){
	image_xscale = -1;
}else{
	image_xscale = 1;
}

startFightDelay--;
if(!hasFightStarted)&&(startFightDelay < 1){
	path_start(level5BossPath, 1.5, path_action_continue, true);
	with(playerObject){
		path_start(path_array[room], pathSpeed, path_action_continue, pathAbsolute);
		allowDodging = true;
		gun.allowShooting = true;
		hasPathStarted = true;
	}
	hasFightStarted = true;
}

attackDelay--;
iceBulletDelay--;
if(attackDelay < 1){
	switch(chosenAttack){
		case 0: iceBallCircleAttack(x,y,playerObject.x,playerObject.y, 20, 20);
		break;
		case 1: iceBallRowAttack(x,y,playerObject.x,playerObject.y, 10);
		break;
		case 2: createIciclesAttack(playerObject.x,playerObject.y,20,50);
				waveAttackCount = 0;
		break;
		default: show_debug_message("cant find number");
	}
	waveAttackCount--;
	if(waveAttackCount < 1){
		attackDelay = 200;
		chosenAttack = irandom_range(0,2);
		waveAttackCount = waveAttackAmount;
	}else{
		attackDelay = 20;
	}
	iceBulletDelay = 35;
}else if(iceBulletDelay < 1){
	iceBulletDelay = 35;
	iceBallAttack(x,y,playerObject.x, playerObject.y);
}