/// @description Insert description here
// You can write your code in this editor

x = oPlayer.x + sprite_get_width(sPlayer)* .3* oPlayer.image_xscale
y = oPlayer.y - sprite_get_height(sPlayer)*.5

if(place_meeting(x,y,oWall)){
	inWall = true;
}
else inWall = false;