///arg0 x
///arg1 y
///arg2 amount
///arg3 radius

var x1 = argument0;
var y1 = argument1;
var amount = argument2;
var radius = argument3;

var spriteWidth = sprite_get_width(iceBallSprite)*2;

for(var ii = 0; ii < amount; ii++){
	var dir = -ii*spriteWidth;
	var xcord = x1+lengthdir_x(radius, dir);
	var ycord = y1+lengthdir_y(radius, dir);
	var icicle = instance_create_layer(xcord,ycord,"objectInstance", icicleObject);
	icicle.triggered = true;
}

for(var ii = 0; ii < amount*1.5; ii++){
	var dir = -ii*spriteWidth;
	var xcord = x1+lengthdir_x(radius*1.5, dir);
	var ycord = y1+lengthdir_y(radius*1.5, dir);
	var icicle = instance_create_layer(xcord,ycord,"objectInstance", icicleObject);
	icicle.triggered = true;
}

for(var ii = 0; ii < amount*0.5; ii++){
	var dir = -ii*spriteWidth;
	var xcord = x1+lengthdir_x(radius*0.5, dir);
	var ycord = y1+lengthdir_y(radius*0.5, dir);
	var icicle = instance_create_layer(xcord,ycord,"objectInstance", icicleObject);
	icicle.triggered = true;
}