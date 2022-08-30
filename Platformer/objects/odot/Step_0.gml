/// @description Insert description here
// You can write your code in this editor

x = oPlayer.x + sprite_get_width(sPlayer)* .5* oPlayer.image_xscale
y = oPlayer.y - sprite_get_height(sPlayer)*.4

//get the bottom and top pixels of the sprite
bottompixely = y+sprite_get_height(sDot)/2;
toppixely = y-sprite_get_height(sDot)/2;

toppixelinwall = place_meeting(oDot.x, oDot.toppixely, oWall);

bottompixelinwall = place_meeting(oDot.x, oDot.bottompixely, oWall);

