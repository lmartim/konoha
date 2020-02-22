/// @description Insert description here
// You can write your code in this editor

if (image_index > image_number-1) {
	image_speed = 0;
	timer++;
	if (timer > 40) {
		image_speed = -.3;
		timer = 0;
	}
}

if (sign(image_speed) == -1) {
	if (round(image_index) == 0) {
		instance_destroy();	
	}
}