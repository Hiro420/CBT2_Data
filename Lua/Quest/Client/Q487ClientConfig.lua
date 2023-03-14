local QuestClientData = {}

QuestClientData.MainID = 487
QuestClientData.ActorAlias = "487"
QuestClientData.SubIDs = 
{
	q48701 = 48701,
	q48702 = 48702,
    q48703 = 48703,
    q48704 = 48704,
    q48705 = 48705,
    q48706 = 48706,
    q48707 = 48707,
    q48708 = 48708,
}

QuestClientData.NarratorData = {
	Story1 = {
    	{dialogID = 4870601, audioEvtName = "", duration = 7},
		{dialogID = 4870602, audioEvtName = "", duration = 6},
		{dialogID = 4870603, audioEvtName = "", duration = 5},
	},
	Story2 = {
    	{dialogID = 4870501, audioEvtName = "", duration = 3},
		{dialogID = 4870502, audioEvtName = "", duration = 3},
		{dialogID = 4870503, audioEvtName = "", duration = 3},
		{dialogID = 4870504, audioEvtName = "", duration = 3},
		{dialogID = 4870505, audioEvtName = "", duration = 3},
	},
	Story3 = {
    	{dialogID = 4870001, audioEvtName = "", duration = 7},
		{dialogID = 4870002, audioEvtName = "", duration = 3},
	},
}

QuestClientData.CatData = 
{	
    Alias = "FindCat",
	Script = "Actor/Npc/FindCat",
	ID = 10007,
	Pos = sceneData:GetDummyPoint(3,"Q48702Cat").pos,
    Dir = sceneData:GetDummyPoint(3,"Q48702Cat").rot,
    CatPos1 = sceneData:GetDummyPoint(3,"Q48702Cat01").pos,
	CatDir1 = sceneData:GetDummyPoint(3,"Q48702Cat01").rot,
	CatPos2 = sceneData:GetDummyPoint(3,"Q48702Cat02").pos,
	CatDir2 = sceneData:GetDummyPoint(3,"Q48702Cat02").rot, 
	CatPos3 = sceneData:GetDummyPoint(3,"Q48702Cat03").pos,
	CatDir3 = sceneData:GetDummyPoint(3,"Q48702Cat03").rot,
	CatPos4 = sceneData:GetDummyPoint(3,"Q48710Cat").pos,
	CatDir4 = sceneData:GetDummyPoint(3,"Q48710Cat").rot,
	RandomPos ={sceneData:GetDummyPoint(3,"Q48702Cat01"),
				sceneData:GetDummyPoint(3,"Q48702Cat02"),
				sceneData:GetDummyPoint(3,"Q48702Cat03")}
	

}

QuestClientData.CatNpcData = 
{
	Alias = "CatNpc",
	Script = "Actor/Npc/TempNPC",
	ID = 10031,
	NPCPos1 = sceneData:GetDummyPoint(3,"Q48701NPC").pos,
	NPCDir1 = sceneData:GetDummyPoint(3,"Q48701NPC").rot,	
}

QuestClientData.WindyData = 
{
	Alias = "Venti01",
	Script = "Actor/Quest/Q301/Wendy301",
	ID = 100101,
    bornPos = sceneData:GetDummyPoint(3,"Q48701Windy").pos,
	bornDir = sceneData:GetDummyPoint(3,"Q48701Windy").rot,
	bornPos1 = sceneData:GetDummyPoint(3,"Q48703WindyLeave").pos,
	bornDir1 = sceneData:GetDummyPoint(3,"Q48703WindyLeave").rot,	

}

QuestClientData.PaimonData = 
{
	Alias = "Paimon",
	Script = "Actor/Quest/Q352/Paimon",
	ID = 1005,
	Pos = sceneData:GetDummyPoint(3,"Q48705Paimon").pos,
	Dir = sceneData:GetDummyPoint(3,"Q48705Paimon").rot,
	Pos1 = sceneData:GetDummyPoint(3,"Q48712Paimon").pos,
	Dir1 = sceneData:GetDummyPoint(3,"Q48712Paimon").rot,
}

return QuestClientData