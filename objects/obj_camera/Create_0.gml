/// @description Insert description here
// You can write your code in this editor

alvo = self;
modo = "normal";
vel = .5;
camera_w_inicio = camera_get_view_width(view_camera[0]);
camera_h_inicio = camera_get_view_height(view_camera[0]);
tam_cam = 1;

if (instance_exists(obj_player)) {
	x = obj_player.x;	
	y = obj_player.y;
}

//TRANSITION
fade = false;
spawn = false;
counter = -1;
width = camera_w_inicio / 6;
height = camera_h_inicio / 6;
timer = 1;