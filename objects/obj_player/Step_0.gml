/// @description Insert description here
// You can write your code in this editor


var up, down, left, right, vel_h, vel_v, desli, interac, inventory, instX, instY;

//inventory = keyboard_check_pressed(ord("Q"));
inventory = false;
if (inventory) {
	if (instance_exists(obj_inventory_bubble)) {
		with (obj_inventory_bubble) {
			instance_destroy();	
		}
	} else {
		create_inventory();	
		estado = "parado";
	}
}

if(instance_exists(obj_inventory_bubble)) exit;
if(instance_exists(obj_transition)) exit;
if(instance_exists(obj_textbox)) {
	estado = "parado";
	exit;
}

up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
interac = keyboard_check_pressed(ord("E"));

if (up) { face = 1; faceInt = -5; }
if (down) { face = 3; faceInt = 5; }
if (left) { face = 2; faceInt = -5; }
if (right) { face = 0; faceInt = 5; }

vel_h = (right - left) * vel;
vel_v = (down - up) * vel;

desli = des_n;	

if (velh != 0) {
	image_xscale = sign(velh) * -1;
}

switch(estado) {
	case "parado":
		velh = 0;
		velv = 0;
		
		image_index = 0;
		image_speed = 0;

		if (vel_v != 0 || vel_h != 0) estado = "movendo";
		if (interac) estado = "interacao";
		
		break;
	case "movendo":
		velh = lerp(velh, vel_h, desli);
		velv = lerp(velv, vel_v, desli);	
		
		image_speed = 1;
		
		if (face == 0 || face == 2) {
			sprite_index = esq;	
		} else if (face == 3) {
			sprite_index = baixo;	
		} else if (face == 1) {
			sprite_index = cima;
		}
		
		if (abs(velv) < .5 && abs(velh) < .5) estado = "parado";
		if (interac) estado = "interacao";
		
		break;
	case "interacao":
		velh = 0;
		velv = 0;
		
		instX = instance_place(x + faceInt, y, obj_npc);
		if instX != noone { 
			if (guilty) {
				if (object_get_name(instX.object_index) == "obj_npc_3") {
					with (instX) { secondTalk = true; }	
				} else {
					obj_camera.fade = true;	
					alarm[0] = room_speed * 2;
					with (instX) { guilty = true; }	
				}
			} else {
				with (instX) {
					estado = "parado";
					talk = true
				}; 
			}
		}
		instY = instance_place(x, y + faceInt, obj_npc);
		if instY != noone { 
			if (guilty) {
				if (object_get_name(instY.object_index) == "obj_npc_3") {
					with (instY) { secondTalk = true; }	
				} else {
					obj_camera.fade = true;	
					alarm[0] = room_speed * 2;
					with (instY) { guilty = true; }	
				}
			} else {
				with (instY) {
					estado = "parado";
					talk = true; 
				}
			}
		}

		
		image_speed = 1;

		if (!interagindo) {
			sprite_antiga = sprite_index;
			image_index = 0;
		}
		
		//interagindo = true;
		
		image_index = 0;
		image_speed = 0;
		//if (face == 3) {
		//	sprite_index = baixo_int;
		//} else if (face == 1) {
		//	sprite_index = cima_int;	
		//} else if (face == 2 || face == 0) {
		//	sprite_index = esq_int;	
		//}
		
		if (image_index > image_number - 1)  interagindo = false;
		
		if (!interagindo) {
			sprite_index = sprite_antiga;
			estado = "parado";
		}
		break;
}

if (place_meeting(x + velh, y, obj_block)) {
	while (!place_meeting(x + sign(velh), y, obj_block)) {
		x += sign(velh);
	}
	velh = 0;
}
if (place_meeting(x, y + velv, obj_block)) {
	while (!place_meeting(x, y + sign(velv), obj_block)) {
		y += sign(velv);	
	}
	velv = 0;
}


if (place_meeting(x + velh, y, obj_npc)) {
	while (!place_meeting(x + sign(velh), y, obj_npc)) {
		x += sign(velh);
	}
	velh = 0;
}

if (place_meeting(x, y + velv, obj_npc)) {
	while (!place_meeting(x, y + sign(velv), obj_npc)) {
		y += sign(velv);	
	}
	velv = 0;
}

if (place_meeting(x + velh, y, obj_item)) {
	while (!place_meeting(x + sign(velh), y, obj_item)) {
		x += sign(velh);
	}
	velh = 0;
}

if (place_meeting(x, y + velv, obj_item)) {
	while (!place_meeting(x, y + sign(velv), obj_item)) {
		y += sign(velv);	
	}
	velv = 0;
}

x += velh;
y += velv;
