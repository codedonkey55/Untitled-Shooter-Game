/// @description Insert description here
// You can write your code in this editor
hp--;
if(hp < 1){
	instance_destroy();
	instance_create_layer(x,y,"objectInstance",deathCloudObject);
}

instance_destroy(other);