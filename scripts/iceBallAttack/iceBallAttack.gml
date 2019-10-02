///arg0 x
///arg1 y
///arg2 tx
///arg3 ty

var x1 = argument0;
var y1 = argument1;
var tx = argument2;
var ty = argument3;
var bullet = instance_create_layer(x1,y1,"bulletInstance", iceBulletObject);
with(bullet){
	move_towards_point(irandom_range(tx-100, tx+100), ty, 5);
}
bullet.speed = 5;
bullet.image_angle = bullet.direction;