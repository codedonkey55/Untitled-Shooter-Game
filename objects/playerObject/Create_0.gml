/// @description Insert description here
// You can write your code in this editor

enum playerSprite {
	idle,
	run,
	dodge,
}

player_sprite[playerSprite.idle] = lizardMaleIdleSprite;
player_sprite[playerSprite.run] = lizardMaleRunSprite;
player_sprite[playerSprite.dodge] = lizardMaleDodgeSprite;

enum rooms {
	menu,
	room1,
	room2,
	room3,
	theEnd,
}

path_array[rooms.room1] = level1;
path_array[rooms.room2] = level1;
path_array[rooms.room3] = level1;

pathSpeed = 2;
pathAction = path_action_stop;
pathAbsolute = true;

path_start(path_array[room], pathSpeed, pathAction, pathAbsolute);
path_end();

isWalking = false;
isDodging = false;
dodgeAmount = 1;
gun = instance_create_layer(playerObject.x, playerObject.y, "gunInstance", gunObject);