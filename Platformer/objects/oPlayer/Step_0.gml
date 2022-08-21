//check if left or right key is being held
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);

//check for running
key_shift = keyboard_check(vk_shift);

//checks for if space was pressed that frame (being held is ignored)
key_jump = keyboard_check_pressed(vk_up);

var move = key_right - key_left;

//locks inputed movement
if(mvtLocked){
	move = image_xscale;	
}
mvtLocked = max(mvtLocked-1,0)

//locks horizontal and vertical movement
while(handvLock){
	hsp = 0;
	vsp = 0;
	if(key_jump){
		vsp = -6
		handvLock = false;
	}
}

//movement speed
if(key_shift){
	hsp = move * runsp;
}
else{
	hsp = move * walksp;
}	
vsp = vsp + grv;
//collision check
onGround = place_meeting(x,y+1,oWall);
onWall = place_meeting(x+image_xscale,y,oWall);

//jump
if((key_jump)){
	if(onGround) vsp -= 6;	
}

//ledgegrab
if(onWall && oDot.inWall){
	var wallToGrab = instance_place(x + 10, y, oWall);
	x = wallToGrab.x - 24
	y = wallToGrab.y
	handvLock = true;
}



//Horizontal collision
runningintowall = place_meeting(x+hsp,y,oWall);
if(runningintowall){
	while(!place_meeting(x + sign(hsp),y,oWall)){
			x = x + sign(hsp);
	}
	hsp = 0;

}

//vertical collision
if(place_meeting(x,y+vsp,oWall)){
	while(!place_meeting(x ,y + sign(vsp),oWall)){
			y = y + sign(vsp);
	}
	vsp = 0;
}





//set new x
x = x + hsp;
//set new y
y = y + vsp;


//Animation
//falling animation
if(!place_meeting(x,y+1,oWall)){
		sprite_index = sPlayerA;
		image_speed = 0;
		if(vsp > 1) image_index = 1;
		else image_index = 0;
}
//running animation
else if(abs(hsp) > 0){
	image_speed = 1;
	sprite_index = sPlayerR;	
}
//standing still
else{
	sprite_index = sPlayer;	
}

//flip sprite based on direction
if(hsp > 0){
	image_xscale = 1;	
}
else if(hsp < 0){
	image_xscale = -1;	
}
