///bounceoffwall(wall being bounced off of, object bouncing off wall)

//var leftOfBbox = (argument[1].x < argument[0].bbox_left);
//var rightOfBbox = (argument[1].x > argument[0].bbox_right);
//var aboveBbox = (argument[1].y < argument[0].bbox_top);
//var belowBbox = (argument[1].y > argument[0].bbox_bottom);

//if((leftOfBbox || rightOfBbox) && !aboveBbox && !belowBbox){
//	argument[1].image_angle = 180 - argument[1].image_angle;	
//}

//if((aboveBbox || belowBbox) && !leftOfBbox && !rightOfBbox){
//	argument[1].image_angle = 360 - argument[1].image_angle;	
//}
function bounceOffWall(wall, object){
var leftOfBbox = (object.x < wall.bbox_left);
var rightOfBbox = (object.x > wall.bbox_right);
var aboveBbox = (object.y < wall.bbox_top);
var belowBbox = (object.y > wall.bbox_bottom);

if((leftOfBbox || rightOfBbox) && !aboveBbox && !belowBbox){
	object.image_angle = 180 - object.image_angle;	
}

if((aboveBbox || belowBbox) && !leftOfBbox && !rightOfBbox){
	object.image_angle = 360 - object.image_angle;	
}
}