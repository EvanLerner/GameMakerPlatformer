
//spawn a bullet 
var len = 20;
var x1 = x + image_xscale * lengthdir_x(len, image_angle);
var y1 = y + image_xscale * lengthdir_y(len, image_angle);

var inst = instance_create_layer(x1, y1, "Bullet", oBullet);
inst.image_angle = image_angle;
inst.image_xscale = image_xscale;


