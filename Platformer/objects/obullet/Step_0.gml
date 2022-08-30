if(earlyCollision > 0){
	if(position_meeting(x,y,oWall)){
		instance_destroy();	
	}
earlyCollision--;
}
x = x + image_xscale * lengthdir_x(bulletSpeed, image_angle);
y = y + image_xscale * lengthdir_y(bulletSpeed, image_angle);