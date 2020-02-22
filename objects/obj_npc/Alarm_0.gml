/// @description Insert description here
// You can write your code in this editor

if (guilty) exit;

if (move) {
	alarm[0] = room_speed*2;	
	if(instance_exists(obj_textbox)) exit;
	
	movimentoEixo = irandom(1);
	movimentoDirecao = irandom_range(-1, 1);
	if (movimentoDirecao == 0) {
		movimentoDirecao = 1;
	}

	
	if (movimentoEixo == 0) {
		if (movimentoDirecao == -1) {
			sprite_index = cima;
		} else {
			sprite_index = baixo;
		}
		
		if (place_meeting(x, y + movimentoDirecao*16, obj_block) || 
			place_meeting(x, y+ movimentoDirecao*16, obj_player)) {
			vspeed = 0;
		} else {
			vspeed = movimentoDirecao*.3;	
			image_speed = .3;
		}
	} else if (movimentoEixo == 1) {
		sprite_index = esq;
		image_xscale = movimentoDirecao * -1;
		
		if (place_meeting(x + movimentoDirecao*16, y , obj_block) || 
			place_meeting(x + movimentoDirecao*16, y , obj_player)) {
			hspeed = 0;
		} else {
			hspeed = movimentoDirecao*.3;	
			image_speed = .3;
		}
	}
}