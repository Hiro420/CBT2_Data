local QuestClientData = {}

QuestClientData.MainID = 11005
QuestClientData.ActorAlias = "11005"
QuestClientData.SubIDs = 
{
	q1100501 = 1100501,
	q1100502 = 1100502,
	q1100503 = 1100503,
	q1100504 = 1100504,
	q1100505 = 1100505,
	q1100506 = 1100506,
	q1100507 = 1100507,
	q1100508 = 1100508,
	q1100509 = 1100509,
	q1100510 = 1100510,
	q1100511 = 1100511,
	q1100512 = 1100512,
	q1100513 = 1100513,
	q1100514 = 1100514,
	q1100515 = 1100515,
	q1100599 = 1100599,
	q1100516 = 1100516,
	q1100517 = 1100517,
	q1100518 = 1100518,
	q1100519 = 1100519,
}

QuestClientData.XianglingData = 
{
	Alias = "Xiangling",
	Script = "Actor/Npc/TempNPC",
	ID = 1012,
	BornPos01 = sceneData:GetDummyPoint(3,"Q1100501XL").pos,
	BornDir01 = sceneData:GetDummyPoint(3,"Q1100501XL").rot,
	BornPos02 = sceneData:GetDummyPoint(3,"Q1100502XL").pos,
	BornDir02 = sceneData:GetDummyPoint(3,"Q1100502XL").rot,
	BornPos03 = sceneData:GetDummyPoint(3,"Q1100503XL").pos,
	BornDir03 = sceneData:GetDummyPoint(3,"Q1100503XL").rot,
	BornPos06 = sceneData:GetDummyPoint(3,"Q1100506XL").pos,
	BornDir06 = sceneData:GetDummyPoint(3,"Q1100506XL").rot,
	BornPos07 = sceneData:GetDummyPoint(3,"Q1100507XL").pos,
	BornDir07 = sceneData:GetDummyPoint(3,"Q1100507XL").rot,


}

QuestClientData.XLMoveData = 
{
	XLMove = {"Q1100503XL", "Q1100503XLM1", "Q1100503XLM2", "Q1100503XLM3", "Q1100503XLM4", "Q1100503XLM5"},
}


QuestClientData.PaimonData = 
{
	Alias = "Paimon",
	Script = "Actor/Quest/Q352/Paimon",
	ID = 1005,
	BornPos01 = sceneData:GetDummyPoint(3,"Q1100501Paimon").pos,
	BornDir01 = sceneData:GetDummyPoint(3,"Q1100501Paimon").rot,
	BornPos07 = sceneData:GetDummyPoint(3,"Q1100507Paimon").pos,
	BornDir07 = sceneData:GetDummyPoint(3,"Q1100507Paimon").rot,

}

QuestClientData.DraffData = 
{
	Alias = "Npc153701",
	Script = "Actor/Npc/TempNPC",
	ID = 153701,
	BornPos01 = sceneData:GetDummyPoint(3,"Q1100501Draff").pos,
	BornDir01 = sceneData:GetDummyPoint(3,"Q1100501Draff").rot,
	BornPos03 = sceneData:GetDummyPoint(3,"Q1100503Draff").pos,
	BornDir03 = sceneData:GetDummyPoint(3,"Q1100503Draff").rot,

}

QuestClientData.BrookData = 
{
	Alias = "Npc154101",
	Script = "Actor/Npc/TempNPC",
	ID = 154101,
	BornPos02 = sceneData:GetDummyPoint(3,"Q1100502Brook").pos,
	BornDir02 = sceneData:GetDummyPoint(3,"Q1100502Brook").rot,
	BornPos03 = sceneData:GetDummyPoint(3,"Q1100503Brook").pos,
	BornDir03 = sceneData:GetDummyPoint(3,"Q1100503Brook").rot,

}

QuestClientData.BRMoveData = 
{
	BRMove = {"Q1100503Brook", "Q1100503BRM1" ,"Q1100503Set05"},
}


QuestClientData.OlafData = 
{
	Alias = "Npc163001",
	Script = "Actor/Npc/TempNPC",
	ID = 163001,
	BornPos01 = sceneData:GetDummyPoint(3,"Q1100501Olaf").pos,
	BornDir01 = sceneData:GetDummyPoint(3,"Q1100501Olaf").rot,
	BornPos02 = sceneData:GetDummyPoint(3,"Q1100502Olaf").pos,
	BornDir02 = sceneData:GetDummyPoint(3,"Q1100502Olaf").rot,
	BornPos03 = sceneData:GetDummyPoint(3,"Q1100502Olaf").pos,
	BornDir03 = sceneData:GetDummyPoint(3,"Q1100502Olaf").rot,
	BornPos06 = sceneData:GetDummyPoint(3,"Q1100506Olaf").pos,
	BornDir06 = sceneData:GetDummyPoint(3,"Q1100506Olaf").rot,

}

QuestClientData.QGData = 
{
	Alias = "Npc163101",
	Script = "Actor/Npc/TempNPC",
	ID = 163101, --157101替换成复制人齐格芙丽雅
	BornPos02 = sceneData:GetDummyPoint(3,"Q1100502QG").pos,
	BornDir02 = sceneData:GetDummyPoint(3,"Q1100502QG").rot,
	BornPos03 = sceneData:GetDummyPoint(3,"Q1100503QG").pos,
	BornDir03 = sceneData:GetDummyPoint(3,"Q1100503QG").rot,
}

QuestClientData.WashData =
{
	Alias = "Wash",
	ID = 70710030,
	BornPos = sceneData:GetDummyPoint(3,"Q1100506Wash").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q1100506Wash").rot,
}

QuestClientData.FireData1 =
{
	Alias = "Fire1",
	ID = 70710031,
	BornPos = sceneData:GetDummyPoint(3,"Q1100509Burn1").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q1100509Burn1").rot,
}

QuestClientData.FireData2 =
{
	Alias = "Fire2",
	ID = 70710032,
	BornPos = sceneData:GetDummyPoint(3,"Q1100509Burn2").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q1100509Burn2").rot,
}

QuestClientData.FireData3 =
{
	Alias = "Fire3",
	ID = 70710033,
	BornPos = sceneData:GetDummyPoint(3,"Q1100509Burn3").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q1100509Burn3").rot,
}

QuestClientData.HamData = {
	Alias = "Ham",
	ID = 110005,
	BornPos = sceneData:GetDummyPoint(3,"Q1100516Ham").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q1100516Ham").rot,
}

QuestClientData.NarratorFlow1 =  --告别香菱时，派蒙提示
{
	{dialogID = 110051830, audioEvtName = "", duration = 6.6},

}

QuestClientData.NarratorFlow2 =  --找到白萝卜派蒙开车
{
	{dialogID = 110059702, audioEvtName = "", duration = 2.7},

}

QuestClientData.NarratorFlow3 =  --遇到史莱姆开车
{
	{dialogID = 110059703, audioEvtName = "", duration = 4.3},
	{dialogID = 110059704, audioEvtName = "", duration = 5.3},
	{dialogID = 110059705, audioEvtName = "", duration = 3.5},
}

QuestClientData.NarratorFlow4 =  --对决结束开车
{
	{dialogID = 110059706, audioEvtName = "", duration = 4.1},

}

return QuestClientData