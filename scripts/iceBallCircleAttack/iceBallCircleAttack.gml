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

var spriteWidth = sprite_get_height(iceBallSprite)*2;

for(var ii = 0; ii < amount; ii++){
	var dir = -ii*spriteWidth;
	var xcord = x1+lengthdir_x(radius, dir);
	var ycord = y1+lengthdir_y(radius, dir);
	var bullet = instance_create_layer(xcord,ycord,"bulletInstance", iceBulletObject);
	with(bullet){
		move_towards_point(tx, ty, 5);
	}
	bullet.direction = dir;
	bullet.image_angle = dir;
	bullet.speed = 5;
}
