/// @description Insert description here
// You can write your code in this editor
cam = view_camera[0];
follow = noone;
halfWidth = camera_get_view_width(cam) * 0.5;
halfHeight = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;

move = 25;

shakeLength = 0;
shakeMag = 0;
shakeRemain = shakeMag;
buffer = 32;