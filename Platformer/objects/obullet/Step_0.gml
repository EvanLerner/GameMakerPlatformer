if(earlyCollision > 0){
	if(position_meeting(x,y,oWall)){
		instance_destroy();	
	}
earlyCollision--;
}
hsp = image_xscale * lengthdir_x(bulletSpeed, image_angle);
vsp = image_xscale * lengthdir_y(bulletSpeed, image_angle);
x = x + hsp;
y = y + vsp;

