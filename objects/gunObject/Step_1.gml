/// @description Insert description here
// You can write your code in this editor
image_angle = point_direction(x,y,mouse_x, mouse_y);
firingdelay--;
recoil = max(0, recoil - 1);
if(mouse_check_button(mb_left)) && (firingdelay < 0){
	recoil = 4;
	firingdelay = 10;
	bullet = instance_create_layer(x,y,"bulletInstance", bulletObject);
	bullet.direction = image_angle;
	bullet.image_angle = bullet.direction;
}

x -= lengthdir_x(recoil, image_angle);
y -= lengthdir_y(recoil, image_angle);

if(image_angle > 90) && (image_angle < 270){
	image_yscale = -1;	
}else{
	image_yscale = 1;	
}