/// @description Insert description here
// You can write your code in this editor

x = oPlayer.x;
y = oPlayer.y;

image_angle = -180*arctan((oPlayer.y - mouse_y) / (oPlayer.x - mouse_x)) / 3.141;
if(mouse_x < oPlayer.x){
image_xscale = -1;
}
else{
	image_xscale = 1;
}

//fix gun at 90 and 270 glitch
if(abs(mouse_x - oPlayer.x) < .05){
	image_angle+=180;
}


//if(mouse_x > oPlayer.x)
//	image_angle = -180*arctan((oPlayer.y - mouse_y) / (oPlayer.x - mouse_x)) / 3.14;
//else{
//	image_angle = 180 - 180*arctan((oPlayer.y - mouse_y) / (oPlayer.x - mouse_x)) / 3.14;
//}