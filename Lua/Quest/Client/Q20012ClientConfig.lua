local QuestClientData = {}

QuestClientData.MainID = 20012
QuestClientData.ActorAlias = "20012"
QuestClientData.SubIDs = 
{
    q2001200 = 2001200,
    q2001201 = q2001201,
    q2001202 = q2001202,
	q2001203 = q2001203,
    q2001203 = q2001204,
}

QuestClientData.NPCData = 
{
	Npc = "Npc157001",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 157001,
	bubble = 4611001,
	NPCPos = sceneData:GetDummyPoint(3,"Event_20502").pos,
	NPCDir = sceneData:GetDummyPoint(3,"Event_20502").rot,
	NPCBornPos = sceneData:GetDummyPoint(3,"Event_20502").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Event_20502").rot,

}

QuestClientData.RoutePoints1 =
{
	sceneData:GetDummyPoint(3,"Event_20502_01").pos,
	sceneData:GetDummyPoint(3,"Event_20502_02").pos,
	sceneData:GetDummyPoint(3,"Event_20502_03").pos,
	sceneData:GetDummyPoint(3,"Event_20502_04").pos,
	sceneData:GetDummyPoint(3,"Event_20502_05").pos,
	sceneData:GetDummyPoint(3,"Event_20502_06").pos,
	sceneData:GetDummyPoint(3,"Event_20502_07").pos,
	sceneData:GetDummyPoint(3,"Event_20502_08").pos,
	sceneData:GetDummyPoint(3,"Event_20502_09").pos,
	sceneData:GetDummyPoint(3,"Event_20502_10").pos,
}

QuestClientData.InterData = {
    NoReplyInter = {
		{
			{
				type = InteractionType.DIALOG,
				dialogType = DialogType.LOCK_FRAME,
				dialogID = 200120201,
			}
		},
	}
}

return QuestClientData