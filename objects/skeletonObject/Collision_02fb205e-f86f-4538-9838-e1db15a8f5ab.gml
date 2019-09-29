/// @description Insert description here
// You can write your code in this editor
hp--;
instance_destroy(other);
if(hp < 1){
	instance_destroy();	
}