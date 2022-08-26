//move up in menu
menuColors[arrayPosition] = c_lime;
if(arrayPosition == 0){
	arrayPosition = array_length(menuColors) - 1;
}
else{
	arrayPosition--;	
}

menuColors[arrayPosition] = c_white;




