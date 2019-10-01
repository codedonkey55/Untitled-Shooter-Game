/// @description Insert description here
// You can write your code in this editor
for(ii = 0; ii < coinAmount; ii++){
	var coin = instance_create_layer(irandom_range(x-10,x+10),irandom_range(y-10,y+10),"objectInstance",coinObject);
	coin.delay += ii*2;
}
instance_destroy();