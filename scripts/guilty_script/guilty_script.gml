/// @description - finish game
/// @param object - npc object

if (object_get_name(argument0.object_index) == "obj_npc_4") {
	myText[0]    = "Konoha!";
	mySpeaker[0] = obj_npc_3;
	myText[1]    = "Graças a sua investicação, conseguimos encontrar a verdadeira criminosa!";
	mySpeaker[1] = obj_npc_3;
	myText[2]    = "Claro, chefe!";
	mySpeaker[2] = obj_player;	
	myText[3]    = "Foi tudo um plano da própria senhora Ichika, para conseguir o dinheiro do novo seguro!";
	mySpeaker[3] = obj_player;
	myText[4]    = "E tudo teria dado certo, se não fosse essa garota intrometidade!";
	mySpeaker[4] = obj_npc_4;
	myText[5]    = "E então, chefe?";
	mySpeaker[5] = obj_player;
	myText[6]    = "Claro, garota.";
	mySpeaker[6] = obj_npc_3;
	myText[7]    = "Depois do trabalho demonstrado, você poderá ser a detetive da vila!";
	mySpeaker[7] = obj_npc_3;
	myText[8]    = "YEEEEEEY!!!!";
	mySpeaker[8] = obj_player;
	myEffects[8] = [1,4];
} else {
	myText[0]    = "Konoha!";
	mySpeaker[0] = obj_npc_3;
	myText[1]    = "Você não tem provas contra "+argument0.myName+"!";
	mySpeaker[1] = obj_npc_3;
	myText[2]    = "Chega dessa história de detetive!";
	mySpeaker[2] = obj_npc_3;	
	myText[3]    = "Você irá ser uma ninja, assim como a maioria das pessoas da vila!";
	mySpeaker[3] = obj_npc_3;
	myText[4]    = "NÃÃÃÃÃÃO!!!!";
	mySpeaker[4] = obj_player;
	myEffects[4] = [1,1];
}

create_dialogue(myText, mySpeaker, myEffects);
obj_controller.finish_game = true;
