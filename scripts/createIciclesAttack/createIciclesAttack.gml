///arg0 x
///arg1 y
///arg2 amount
///arg3 radius

var x1 = argument0;
var y1 = argument1;
var amount = argument2;
var radius = argument3;


var dir = 360/amount;
for(var ii = 0; ii < amount; ii++){
	var calcDir = -dir*ii;
	var xcord = x1+lengthdir_x(radius, calcDir);
	var ycord = y1+lengthdir_y(radius, calcDir);
	var icicle = instance_create_layer(xcord,ycord,"objectInstance", icicleObject);
	icicle.triggered = true;
}

for(var ii = 0; ii < amount; ii++){
	var calcDir = -dir*ii;
	var xcord = x1+lengthdir_x(radius*1.5, calcDir);
	var ycord = y1+lengthdir_y(radius*1.5, calcDir);
	var icicle = instance_create_layer(xcord,ycord,"objectInstance", icicleObject);
	icicle.triggered = true;
}

for(var ii = 0; ii < amount; ii++){
	var calcDir = -dir*ii;
	var xcord = x1+lengthdir_x(radius*0.5, calcDir);
	var ycord = y1+lengthdir_y(radius*0.5, calcDir);
	var icicle = instance_create_layer(xcord,ycord,"objectInstance", icicleObject);
	icicle.triggered = true;
}