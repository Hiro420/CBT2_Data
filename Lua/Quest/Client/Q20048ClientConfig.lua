local QuestClientData = {}

QuestClientData.MainID = 20048
QuestClientData.ActorAlias = "20048"
QuestClientData.SubIDs = 
{
    q2004800 = 2004800,
    q2004801 = 2004801,
    q2004802 = 2004802,
	q2004803 = 2004803,
	q2004804 = 2004804,
	q2004805 = 2004805,
    q2004806 = 2004806,
}

QuestClientData.NPCData = 
{
	Npc = "Npc1567",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 1567,
	InteractionPointPos = sceneData:GetDummyPoint(3,"Event_21700_01").pos,
	InteractionPointDir = sceneData:GetDummyPoint(3,"Event_21700_01").rot,
	InteractionPointPos02 = sceneData:GetDummyPoint(3,"Event_21700_02").pos,
	InteractionPointDir02 = sceneData:GetDummyPoint(3,"Event_21700_02").rot,

	NPCBornPos = sceneData:GetDummyPoint(3,"Event_21700").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Event_21700").rot,

}

 





return QuestClientData