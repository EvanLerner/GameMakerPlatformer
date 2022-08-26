//move up in menu

//turn current position lime, turn down position white
menuColors[arrayPosition] = c_lime;
if(arrayPosition == array_length(menuColors) - 1) {
	arrayPosition = 0;
}
else{
	arrayPosition++;	
}

menuColors[arrayPosition] = c_white;



