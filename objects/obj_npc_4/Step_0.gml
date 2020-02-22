/// @description Insert description here
// You can write your code in this editor

event_inherited();

if (talk) {
	myText[0]    = "Olá senhora Ichika, fico muito triste em saber sobre o roubo..."
	mySpeaker[0] = obj_player;
	myText[1]    = "Orá Konoha, não estou preocupada.";
	mySpeaker[1] = obj_npc_4;
	myText[2]    = "Pois sei que a melhor detetive da vila está me ajudando!"
	mySpeaker[2] = obj_npc_4;
	myText[3]    = "Tem toda razão! Não importa o que aconteça, irei encontrar o culpado!"
	mySpeaker[3] = obj_player;

	create_dialogue(myText, mySpeaker);
	talk = false;
}