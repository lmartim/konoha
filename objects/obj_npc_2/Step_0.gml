/// @description Insert description here
// You can write your code in this editor


event_inherited();

if (talk) {
	myText[0]    = "Yui, sabe algo sobre o roubo?"
	mySpeaker[0] = obj_player;
	myText[1]    = "Konoha, tudo o que sei, é que o senhor Eiji, vivia atrás da receita dos bolinhos.";
	mySpeaker[1] = obj_npc_2;
	myText[2]    = "Pois ele quer abrir uma enorme rede de bolinhos!"
	mySpeaker[2] = obj_npc_2;
	myText[3]    = "Ótimo detalhe Yui, obrigada!"
	mySpeaker[3] = obj_player;

	create_dialogue(myText, mySpeaker);
	talk = false;
}