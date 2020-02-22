/// @description Insert description here
// You can write your code in this editor

event_inherited();

if (talk) {
	myText[0]    = "Oi, Konoha!"
	mySpeaker[0] = obj_npc_6;
	myText[1]    = "Você está procurando quem roubou a senhora Ichika?";
	mySpeaker[1] = obj_npc_6;
	myText[2]    = "Claro que sim! Sou a única detetive na vila capaz de resolver esse caso!"
	mySpeaker[2] = obj_player;
	myText[3]    = "Sabe de algo?"
	mySpeaker[3] = obj_player;
	myText[3]    = "Quem fez isso deve ser um ninja muito bom, pois a senhora Ichika foi a maior kunoichi de sua época!"
	mySpeaker[3] = obj_npc_6;
	myText[4]    = "Hehe, tem razão Daichi. Mas não se preocupe, logo essa fuinha vai estar atrás das grades!"
	mySpeaker[4] = obj_player;

	create_dialogue(myText, mySpeaker);
	talk = false;
}