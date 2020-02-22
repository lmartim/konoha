/// @description Insert description here
// You can write your code in this editor

event_inherited();

if (talk) {
	myText[0]    = "Yusuke!"
	mySpeaker[0] = obj_player;
	myText[1]    = "...";
	mySpeaker[1] = obj_npc_9;
	myText[2]    = "Está sabendo de algo sobre o ladrão de bolinhos?"
	mySpeaker[2] = obj_player;
	myText[3]    = "Infelizmente não, Konoha. Eu estava em missão ontem e retornei a pouco..."
	mySpeaker[3] = obj_npc_9;
	myText[4]    = "Okay, tudo bem... Melhor continuar procurando."
	mySpeaker[4] = obj_player;

	create_dialogue(myText, mySpeaker);
	talk = false;
}