local QuestClientData = {}

QuestClientData.MainID = 20040
QuestClientData.ActorAlias = "20040"
QuestClientData.SubIDs = 
{
    q2004000 = 2004000,
    q2004001 = 2004001,
    q2004002 = 2004002,
	q2004003 = 2004003,
	q2004004 = 2004004,
	q2004005 = 2004005,
	q2004006 = 2004006,
	q2004007 = 2004007,
    
}

QuestClientData.NPCData = 
{
	Npc = "Npc158101",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 158101,
	NPCBornPos = sceneData:GetDummyPoint(3,"Event_20600").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Event_20600").rot,

	NPCBornPos02 = sceneData:GetDummyPoint(3,"Event_20600_03").pos,
	NPCBornDir02 = sceneData:GetDummyPoint(3,"Event_20600_03").rot,

	NPCBornPos03 = sceneData:GetDummyPoint(3,"Event_20600_07").pos,
	NPCBornDir03 = sceneData:GetDummyPoint(3,"Event_20600_07").rot,

}

QuestClientData.RoutePoints1 =
{
	sceneData:GetDummyPoint(3,"Event_20600_01").pos,
	sceneData:GetDummyPoint(3,"Event_20600_02").pos,
}

QuestClientData.RoutePoints2 =
{
	sceneData:GetDummyPoint(3,"Event_20600_03").pos,
	sceneData:GetDummyPoint(3,"Event_20600_04").pos,
	sceneData:GetDummyPoint(3,"Event_20600_05").pos,
	sceneData:GetDummyPoint(3,"Event_20600_06").pos,
}


QuestClientData.RoutePoints3 =
{
	sceneData:GetDummyPoint(3,"Event_20600_01").pos,
}

QuestClientData.PaimonData = 
{
	Paimon = "Paimon",
	PaimonScript = "Actor/Quest/Q352/Paimon",
	PaimonID = 1005,		
}
QuestClientData.InterData = {
	NoReplyInter1 = {
		{
			{
				type = InteractionType.DIALOG,
				dialogType = DialogType.LOCK_FRAME,
				dialogID = 200400501,
			}
		},
	}
}

return QuestClientData