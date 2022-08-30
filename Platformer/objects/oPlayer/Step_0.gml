//check if left or right key is being held
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));

//drop key
key_down = keyboard_check(ord("S"));

//check for running
key_shift = keyboard_check(vk_shift);

//checks for if space was pressed that frame (being held is ignored)
key_jump = keyboard_check_pressed(ord("W"));

var move = key_right - key_left;

//locks ledgegrab
ledgegrabLock = max(ledgegrabLock-1,0)
ledgegrabLock--;

//movement speed
if(key_shift){
	hsp = move * runsp;
}
else{
	hsp = move * walksp;
}	
vsp = vsp + grv;

//flip sprite based on direction
if(!handvLock){
	if(hsp > 0){
		image_xscale = 1;	
	}
	else if(hsp < 0){
		image_xscale = -1;	
	}
}

//collision check
onGround = place_meeting(x,y+1,oWall);
onWall = place_meeting(x+image_xscale,y,oWall);

//jump
if((key_jump)){
	if(onGround) vsp += jumpheight;	
}

//ledgegrab
if(!oDot.toppixelinwall && oDot.bottompixelinwall && !ledgegrabLock){
	if(place_meeting(x + 10*image_xscale, y, oWall)){
		var wallToGrab = instance_place(x + 10*image_xscale, y, oWall);
		x = wallToGrab.x - image_xscale * sprite_get_width(sWall)*.66
		y = wallToGrab.y - 10
		handvLock = true;
	}
}



//Horizontal collision
runningintowall = place_meeting(x+hsp,y,oWall);
if(runningintowall && !handvLock){
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

//corner glitch fix
//without this he gets stuck when he falls right on a corner of a wall...
if(position_meeting(bbox_right-image_xscale, bbox_bottom-1, oWall)){
	y--;
	vsp = 0;
}


//locks horizontal and vertical movement, releases with jump or down
if(handvLock){
	hsp = 0;
	vsp = 0;
	if(key_jump){
		vsp = jumpheight;
		handvLock = false;
		ledgegrabLock = 10;
	}
	if(key_down){
		vsp += grv*5
		handvLock = false;
		ledgegrabLock = 20;
		
	}
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



