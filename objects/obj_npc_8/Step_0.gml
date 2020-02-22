/// @description Insert description here
// You can write your code in this editor

event_inherited();

if (talk) {
	myText[0]    = "E então Konoha? Já desistiu dessa história de detetive e resolveu virar uma kunoichi?"
	mySpeaker[0] = obj_npc_8;
	myText[1]    = "Deixa disso Akari... Tenho um crime em mãos para resolver!";
	mySpeaker[1] = obj_player;
	myText[2]    = "Que pena Konoha, você seria excelente..."
	mySpeaker[2] = obj_npc_8;
	myText[3]    = "Todos são ninjas nessa vila, quero algo maior para mim!"
	mySpeaker[3] = obj_player;
	myText[4]    = "Mas ao menos assista alguns cursos, o senhor Eiji deu uma aula excelente de bombas de fumaça ontem à noite!"
	mySpeaker[4] = obj_npc_8;
	myText[5]    = "Poxa, bombas de fumaças podem ser bem úteis... Quem sabe numa próxima vez!"
	mySpeaker[5] = obj_player;

	create_dialogue(myText, mySpeaker);
	talk = false;
}