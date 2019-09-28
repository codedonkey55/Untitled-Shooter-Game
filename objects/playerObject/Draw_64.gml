/// @description Insert description here
// You can write your code in this editor
ammoxoffset = 50;

for(ii = 0; ii < gun.maxammo; ii++){
	draw_sprite_ext(fireballSprite,0,20 + (ammoxoffset*ii),100,5.5,5.5,90,c_gray,.5);
	draw_sprite_ext(fireballSprite,0,20 + (ammoxoffset*ii),100,5,5,90,c_black,.3);
}

for(ii = 0; ii < gun.ammo; ii++){
	draw_sprite_ext(fireballSprite,0,20 + (ammoxoffset)*ii,100, 5, 5, 90, image_blend, 1);
}