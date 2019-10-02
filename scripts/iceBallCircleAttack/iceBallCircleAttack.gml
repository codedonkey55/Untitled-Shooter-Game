///arg0 x
///arg1 y
///arg2 tx
///arg3 ty
///arg4 amount
///arg5 radius

var x1 = argument0;
var y1 = argument1;
var tx = argument2;
var ty = argument3;
var amount = argument4;
var radius = argument5;

var dir = 180/amount;
for(var ii = 0; ii < amount; ii++){
	var calcDir = -dir*ii;
	var xcord = x1+lengthdir_x(radius, calcDir);
	var ycord = y1+lengthdir_y(radius, calcDir);
	var bullet = instance_create_layer(xcord,ycord,"bulletInstance", iceBulletObject);
	with(bullet){
		move_towards_point(tx, ty, 5);
	}
	bullet.direction = calcDir;
	bullet.image_angle = calcDir;
	bullet.speed = 5;
}
