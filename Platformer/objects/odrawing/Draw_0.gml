/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_right);
draw_set_valign(fa_top);

draw_set_font(Font1);
draw_text_colour(x, y, "debugging test", c_lime, c_lime, c_green, c_green, 1);
if(oPlayer.onWall == true){
	draw_text_colour(x, y + 25, "onWall = True", c_lime, c_lime, c_green, c_green, 1);
}
else{
	draw_text_colour(x, y + 25, "onWall = False", c_lime, c_lime, c_green, c_green, 1);
}

if(oDot.inWall == true){
	draw_text_colour(x, y + 50, "Dot is in wall = True", c_lime, c_lime, c_green, c_green, 1);
}
else{
	draw_text_colour(x, y + 50, "Dot is in wall = False", c_lime, c_lime, c_green, c_green, 1);
}

//if(oPlayer.place_meeting(x + image_xscale, y + 32, oWall)){
//	draw_text_colour(x, y + 50, "Wall above and to the right of player = true", c_lime, c_lime, c_green, c_green, 1);
//}
//else{
//	draw_text_colour(x, y + 50, "Wall above and to the right of player = false", c_lime, c_lime, c_green, c_green, 1);
//}