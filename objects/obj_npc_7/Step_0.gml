/// @description Insert description here
// You can write your code in this editor

event_inherited();

if (talk) {
	myText[0]    = "Boa tarde senhor Eiji."
	mySpeaker[0] = obj_player;
	myText[1]    = "Não sei de nada!";
	mySpeaker[1] = obj_npc_7;
	myText[2]    = "Oi?"
	mySpeaker[2] = obj_player;
	myText[3]    = "Você veio perguntar sobre o roubo, não foi? Sua xereta!"
	mySpeaker[3] = obj_npc_7;
	myText[4]    = "Só sei que demorou para algo acontecer"
	mySpeaker[4] = obj_npc_7;
	myText[5]    = "Pois faz tempos que aquela idosa atrapalha meus planos!"
	mySpeaker[5] = obj_npc_7;
	myText[6]    = "Certo... Me desculpe por incomodar..."
	mySpeaker[6] = obj_player;

	create_dialogue(myText, mySpeaker);
	talk = false;
}