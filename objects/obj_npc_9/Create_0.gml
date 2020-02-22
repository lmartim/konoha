/// @description Insert description here
// You can write your code in this editor

image_index = 0;
image_speed = 0;

baixo = spr_npc_9_baixo;

talk = false;
movimentoDirecao = 0;

guilty = false;

reset_dialogue_defaults();
myPortrait			= spr_portrait_npc_9;
myVoice				= snd_voice2;
myFont				= fnt_dialogue;
myName				= "Yusuke";

myPortraitTalk		= -1;
myPortraitTalk_x	= -1;
myPortraitTalk_y	= -1;
myPortraitIdle		= -1;