/// @description Insert description here
// You can write your code in this editor

event_inherited();

if (talk) {
	myText[0]    = "Boa tarde senhor Akio."
	mySpeaker[0] = obj_player;
	myText[1]    = "Sabe de algo sobre o roubo de ontem?";
	mySpeaker[1] = obj_player;
	myText[2]    = "Infelizmente não, jovem Konoha..."
	mySpeaker[2] = obj_npc_5;
	myText[3]    = "Poxa, poxa..."
	mySpeaker[3] = obj_player;
	myText[3]    = "Veja o lado bom, recente, ajudei a senhora Ichika a refazer o seguro de sua quitanda."
	mySpeaker[3] = obj_npc_5;
	myText[4]    = "Então logo, ela deve receber o dinheiro do seguro."
	mySpeaker[4] = obj_npc_5;
	myText[5]    = "Bem, é menos pior."
	mySpeaker[5] = obj_player;

	create_dialogue(myText, mySpeaker);
	talk = false;
}