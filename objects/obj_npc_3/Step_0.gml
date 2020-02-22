/// @description Insert description here
// You can write your code in this editor

guilty = false;

if (talk) {
	myText[0] = "Konoha! Já encontrou o ladrão?"
	myNextline[0] = 1;
	mySpeaker[0] = obj_npc_3;
	myTextSpeed[0] = [1, 1];

	myText[1] = ["Sim", "Não"]
	myNextline[1] = [2, 3];
	mySpeaker[1] = obj_npc_3;
	myTextSpeed[1] = [1, 1];
	
	myText[2] = "Ótimo! A próxima pessoa que você conversar, vai ser declarada culpada!";
	mySpeaker[2] = obj_npc_3;
	myNextline[2] = 4;
	myScripts[2] = [change_guilty_status];
	myTextSpeed[2] = [1, 1];
	
    myText[3] = "Certo, então continue sua busca.";
	mySpeaker[3] = obj_npc_3;
	myNextline[3] = 4;
	myTextSpeed[3] = [1, 1];
	
	myText[4]    = "Estarei esperando aqui."
	mySpeaker[4] = obj_npc_3;
	myTextSpeed[4] = [1, 1];
	
	myTypes = [0, 1, 0, 0, 0];

	create_dialogue(myText, mySpeaker, 0, myTextSpeed, myTypes, myNextline, myScripts);
	talk = false;
}

if (secondTalk) {
	
	myText[0] =  "Ainda estou esperando, garota....";
	mySpeaker[0] = obj_npc_3;

	myText[1] = "Calma, só estou alinhando os pensamentos!";
	mySpeaker[1] = obj_player;
	
	myText[2] =  "Vá logo! Não temos o dia todo!";
	mySpeaker[2] = obj_npc_3;
	
	myText[3] =  "Certo, chefe!";
	mySpeaker[3] = obj_player;
	
	create_dialogue(myText, mySpeaker);
	secondTalk = false;
}