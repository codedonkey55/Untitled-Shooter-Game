/// @description Insert description here
// You can write your code in this editor
var ammoxoffset = 50;

for(var ii = 0; ii < gun.maxammo; ii++){
	draw_sprite_ext(fireballSprite,0,20 + (ammoxoffset*ii),100,5.5,5.5,90,c_gray,.5);
	draw_sprite_ext(fireballSprite,0,20 + (ammoxoffset*ii),100,5,5,90,c_black,.3);
}

for(var ii = 0; ii < gun.ammo; ii++){
	draw_sprite_ext(fireballSprite,0,20 + (ammoxoffset)*ii,100, 5, 5, 90, image_blend, 1);
}

if(unlimitedAmmo){
	draw_sprite_ext(unlimitedSprite,0,70,95,3,3,0,image_blend, 1);
}

draw_sprite_ext(coinSprite,0,20, 140,5,5,0,image_blend,1);
drawSetText(c_white,menuFont,fa_left, fa_top);
draw_text(50, 130, "x" + string(cursorObject.playerWallet + coinsGained));