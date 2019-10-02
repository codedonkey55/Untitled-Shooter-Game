///arg0 x
///arg1 y
///arg2 tx
///arg3 ty
///arg4 amount

var x1 = argument0;
var y1 = argument1;
var tx = argument2;
var ty = argument3;
var amount = argument4;

var xOffset = 2;
var spriteWidth = sprite_get_height(iceBallSprite)*2;
var xBegin = x1-(((amount*spriteWidth)+(amount*xOffset))/2);
var xEnd = tx-(((amount*spriteWidth)+(amount*xOffset))/2);


for(var ii = 0; ii < amount; ii++){
	var bullet = instance_create_layer(xBegin+(ii*spriteWidth)+(ii*xOffset),y1,"bulletInstance", iceBulletObject);
	with(bullet){
		move_towards_point(xEnd+(ii*spriteWidth)+(ii*xOffset), ty, 5);
	}
	bullet.speed = 5;
	bullet.image_angle = bullet.direction;
}
