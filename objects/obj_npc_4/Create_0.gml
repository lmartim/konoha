/// @description Insert description here
// You can write your code in this editor

image_index = 0;
image_speed = 0;

talk = false;

guilty = false;
movimentoDirecao = 0;

baixo = spr_npc_4_baixo;

reset_dialogue_defaults();
myPortrait			= spr_portrait_npc_4;
myVoice				= snd_voice2;
myFont				= fnt_dialogue;
myName				= "Ichika";

myPortraitTalk		= -1;
myPortraitTalk_x	= -1;
myPortraitTalk_y	= -1;
myPortraitIdle		= -1;