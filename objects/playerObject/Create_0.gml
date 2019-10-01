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
	room4,
	room5,
	room6,
	room7,
	theEnd,
}

path_array[rooms.room1] = level1;
path_array[rooms.room2] = level1;
path_array[rooms.room3] = level1;
path_array[rooms.room4] = level2;
path_array[rooms.room5] = level2;
path_array[rooms.room6] = level3;
path_array[rooms.room7] = level4;

pathSpeed = 2;
pathAction = path_action_stop;
pathAbsolute = true;

path_start(path_array[room], pathSpeed, pathAction, pathAbsolute);
path_end();

isWalking = false;
isDodging = false;
dodgeAmount = 1;
gun = instance_create_layer(playerObject.x, playerObject.y, "gunInstance", gunObject);

allowDodging = false;
allowPlayerReset = false;
allowStartWalking = true;

dodgeDelay = 0;

hasPathStarted = false;
moveStraightToEndEvent = false;
customEnd = false;

hasPlayedHitSound = false;

coinsGained = 0;