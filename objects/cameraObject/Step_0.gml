/// @description Insert description here
// You can write your code in this editor

if(instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
	
	x += (xTo - x) / move;
	y += (yTo - y) / move;
	
	x = clamp(x,halfWidth+buffer,room_width-halfWidth-buffer);
	y = clamp(y,halfHeight+buffer,room_height-halfHeight-buffer);
	
	x+=random_range(-shakeRemain, shakeRemain);
	y+=random_range(-shakeRemain, shakeRemain);
	shakeRemain = max(0, shakeRemain-((1/shakeLength)*shakeMag));
	
	camera_set_view_pos(cam,x-halfWidth,y-halfHeight);
}else if(follow != playerObject && instance_exists(playerObject)){
	follow = playerObject;	
}

/*
if(room != menu){
	layer_x("Background", x/2);
	layer_y("Background", y-180);
}
*/