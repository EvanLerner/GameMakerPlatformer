bounceOffWall(other, self);

//create 3 impacts at different angles
for(i = 0; i < 3; i++){
	//varitability of angle is 4
	var randomNumber = random(30);
	impact = instance_create_layer(x, y, "Bullet", oImpact);
	impact.image_angle = image_angle + randomNumber;
	impact.image_xscale = image_xscale;
}
other.wallhealth--;
instance_destroy();