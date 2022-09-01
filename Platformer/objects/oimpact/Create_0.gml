grv = .2;
bulletSpeed = 2;
hsp = 0;
vsp = 0;
vsp = image_xscale * lengthdir_y(bulletSpeed, image_angle);

lockVsp = 10;
//destroy in 1 second
alarm[0] = room_speed * 1;