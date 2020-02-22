/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_textbox)) exit;

if (guilty) {
	alarm[0] = -1;
	alarm[1] = room_speed*2;
	guilty = false;
}

if (place_meeting(x, y+movimentoDirecao, obj_player) || 
	place_meeting(x+movimentoDirecao, y, obj_player) ) {
		image_index = 0;
		image_speed = 0;	
		hspeed = 0;
		vspeed = 0;
	}