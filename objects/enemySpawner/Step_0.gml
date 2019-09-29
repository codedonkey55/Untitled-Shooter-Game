/// @description Insert description here
// You can write your code in this editor
if(isActivated){
	if(spawnQueue < 1){
		counter++;
	}
	if(counter > startInterval) && (spawn){
		startInterval = interval;
		spawnQueue = amount;
		counter = 0;
		if(!spawnContinuously){
			spawn = false;
		}
	}

	spawnCounter++;
	if(spawnQueue > 0) && (spawnCounter > intervalBetweenSpawn){
		spawnQueue--;
		instance_create_layer(irandom_range(x-40,x+40),irandom_range(y-40,y+40),"objectInstance",enemyToSpawn);
		spawnCounter = 0;
		counter = 0;
	}
}
