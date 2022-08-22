//shoot a bullet out
//if(image_angle > 0 && image_xscale == 1 ) {
//	var inst = instance_create_layer(bbox_right, bbox_top, "Bullet", oBullet);
//}

//else if(image_angle <= 0 && image_xscale == -1){ 
//	var inst = instance_create_layer(bbox_left, bbox_top, "Bullet", oBullet);
//}
//else if(image_angle > 0 && image_xscale == -1){
//	var inst = instance_create_layer(bbox_left, bbox_bottom, "Bullet", oBullet);
//}
//else{
//	var inst = instance_create_layer(bbox_right, bbox_bottom, "Bullet", oBullet);
//}


var len = 20;
var x1 = x + image_xscale * lengthdir_x(len, image_angle);
var y1 = y + image_xscale * lengthdir_y(len, image_angle);

var inst = instance_create_layer(x1, y1, "Bullet", oBullet);
inst.image_angle = image_angle;
inst.image_xscale = image_xscale;


