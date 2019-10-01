/// @description Insert description here
// You can write your code in this editor
hp--;
instance_destroy(other);
for(var ii = 0; ii < instance_number(mushroomBabyObject); ii++){
	var baby = instance_find(mushroomBabyObject, ii);
	baby.hit = true;
}
if(hp < 1){
	instance_destroy();
	var cloud = instance_create_layer(x,y,"objectInstance",deathCloudObject);
	cloud.coinAmount = 3;
}