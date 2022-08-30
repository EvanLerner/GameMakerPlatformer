//drawing the main menu text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(MenuFont);

if(informationCheck){
	draw_text(room_width/2, room_height/2 - 60, informationText);
}

else{
	for(i = 0; i < array_length(menuText); i++){
		if(arrayPosition == i) 	{draw_set_color(c_white);}
		else {draw_set_color(c_lime);}
		draw_text(room_width/2, room_height/2 - 60 + i*40, menuText[i]);
	}
}
