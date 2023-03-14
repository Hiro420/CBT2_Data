local QuestClientData = {}

QuestClientData.MainID = 20036
QuestClientData.ActorAlias = "20036"
QuestClientData.SubIDs = 
{
    q2003600 = 2003600,
    q2003601 = 2003601,
    q2003602 = 2003602,
	q2003603 = 2003603,
	q2003604 = 2003604,
	q2003605 = 2003605,
    
}

QuestClientData.NPCData = 
{
	Npc = "Npc1521",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 1521,
	InteractionPointPos = sceneData:GetDummyPoint(3,"Event_21000_01").pos,
	InteractionPointDir = sceneData:GetDummyPoint(3,"Event_21000_01").rot,
	NPCBornPos = sceneData:GetDummyPoint(3,"Event_21000_01").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Event_21000_01").rot,

}

 





return QuestClientData