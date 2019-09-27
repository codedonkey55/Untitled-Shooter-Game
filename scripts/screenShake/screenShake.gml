///arg magnitude
///arg frames

if(argument0 > cameraObject.shakeRemain){
	cameraObject.shakeMag = argument0;
	cameraObject.shakeRemain = cameraObject.shakeMag;
	cameraObject.shakeLength = argument1;
}