//load room 1
if(menuText[arrayPosition] == "Start Game"){
	room_goto(MainRoom);
}
//exit game
if(menuText[arrayPosition] == "Exit"){
	game_end();
}
//show game information
if(menuText[arrayPosition] == "Information"){
	informationCheck = true;	
}

