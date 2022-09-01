
hsp = image_xscale * lengthdir_x(bulletSpeed, image_angle);

//used to get parabola
if(lockVsp) {
	vsp = image_xscale * lengthdir_y(bulletSpeed, image_angle);
	lockVsp--;
}
else{
vsp+=grv;
}
x = x + hsp;
y = y + vsp;

