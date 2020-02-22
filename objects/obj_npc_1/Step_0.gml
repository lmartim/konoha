/// @description Insert description here
// You can write your code in this editor

event_inherited();

if (talk) {
	myText[0]    = "Ouviu algo sobre o roubo dos takoyakis, Miho?."
	mySpeaker[0] = obj_player;
	myText[1]    = "Hum...";
	mySpeaker[1] = obj_npc_1;
	myText[2]    = "Tudo o que sei, é o que roubo ocorreu durante a noite"
	mySpeaker[2] = obj_npc_1;
	myText[3]    = "Pelo menos agora sei em que momento o roubo ocorreu..."
	mySpeaker[3] = obj_player;

	create_dialogue(myText, mySpeaker);
	talk = false;
}