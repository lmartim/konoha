/// @description Insert description here
// You can write your code in this editor

guilty = false;
talking = false;

target_x = x;
target_y = y;

vel = 5;
velh = 0;
velv = 0;
des_n = .1;

estado = "parado";

sprite_antiga = sprite_index;
baixo = spr_baixo;
cima = spr_cima;
esq = spr_esq;

baixo_int = spr_baixo_int;
cima_int = spr_cima_int;
esq_int = spr_esq_int;

interagindo = false;
face = 3;
faceInt = 5;


//--------Dialogue Stuff
reset_dialogue_defaults();
myPortrait			= spr_portrait_konoha;
myVoice				= snd_voice2;
myFont				= fnt_dialogue;
myName				= "Konoha";

myPortraitTalk		= -1;
myPortraitTalk_x	= -1;
myPortraitTalk_y	= -1;
myPortraitIdle		= -1;