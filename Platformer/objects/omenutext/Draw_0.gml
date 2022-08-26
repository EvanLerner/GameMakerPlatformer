//drawing the main menu text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(MenuFont);

for(i = 0; i < array_length(menuColors); i++){
	draw_set_colour(menuColors[i]);
	draw_text(room_width/2, room_height/2 - 60 + i*40, menuText[i]);
}

