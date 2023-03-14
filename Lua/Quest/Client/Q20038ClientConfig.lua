local QuestClientData = {}

QuestClientData.MainID = 20038
QuestClientData.ActorAlias = "20038"
QuestClientData.SubIDs = 
{
    q2003800 = 2003800,
    q2003801 = 2003801,
    q2003802 = 2003802,
	q2003803 = 2003803,
	q2003804 = 2003804,
	q2003805 = 2003805,
	q2003806 = 2003806,
	q2003807 = 2003807,
	q2003808 = 2003808,
	q2003809 = 2003809,
	q2003810 = 2003810,
    
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