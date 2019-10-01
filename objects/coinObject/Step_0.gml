/// @description Insert description here
// You can write your code in this editor
delay--;
if(delay < 1){
	moveToPlayer = true;
}

if(moveToPlayer){
	move_towards_point(playerObject.x,playerObject.y,6);
}