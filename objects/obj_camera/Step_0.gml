/// @description Insert description here
// You can write your code in this editor

modo = "normal";
switch(modo) {
	case "normal":
	
		tam_cam = lerp(tam_cam, 1, .01);
	
		camera_set_view_size(view_camera[0], camera_w_inicio*tam_cam, camera_h_inicio*tam_cam);
	
		if (instance_exists(obj_player)) {
			alvo = obj_player;	
		}
		
		x = lerp(x, alvo.x, vel);
		y = lerp(y, alvo.y, vel);
		
		if (mouse_check_button_pressed(mb_left)) {
			modo = "mira";	
		}
		break;
	case "mira": 
	
		tam_cam = lerp(tam_cam, 1.5, .005);
	
		camera_set_view_size(view_camera[0], camera_w_inicio*tam_cam, camera_h_inicio*tam_cam);
	
		x = lerp(x, mouse_x, vel);
		y = lerp(y, mouse_y, vel);
		
		if (mouse_check_button_released(mb_left)) {
			modo = "normal";	
		}
		
		break;
}

//TRANSITION
if (keyboard_check_pressed(vk_space)) { fade = true; }

if (fade) {
	timer += 1/room_speed;
	
	if (timer % 4) {
		if (counter < width) spawn = true;
		counter++;
	}
	
	if (spawn) {
		for (var i = 0; i < height; i++) {
			xx = 16*counter;
			yy = 16*i;
			with (instance_create_layer(0, 0, "HUD", obj_transition)) {
				xx = obj_camera.xx;
				yy = obj_camera.yy;
			}
		}
		spawn = false;
	}
	
	if (counter-30 > width) {
		counter = -1;
		fade = false;
		timer = 1;
	}
}


