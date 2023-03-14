local QuestClientData = {}

QuestClientData.MainID = 20013
QuestClientData.ActorAlias = "20013"
QuestClientData.SubIDs = 
{
    q2001300 = 2001300,
    q2001301 = 2001301,
    q2001302 = 2001302,
	q2001303 = 2001303,
    q2001303 = 2001304,
}

QuestClientData.NPCData = 
{
	Npc = "Npc141301",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 141301,
	bubble = 4611001,
	NPCPos = sceneData:GetDummyPoint(3,"Event_20503").pos,
	NPCDir = sceneData:GetDummyPoint(3,"Event_20503").rot,
	NPCBornPos = sceneData:GetDummyPoint(3,"Event_20503").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Event_20503").rot,

}

QuestClientData.RoutePoints1 =
{
	sceneData:GetDummyPoint(3,"Event_20503_01").pos,
	sceneData:GetDummyPoint(3,"Event_20503_02").pos,
	sceneData:GetDummyPoint(3,"Event_20503_03").pos,
	sceneData:GetDummyPoint(3,"Event_20503_04").pos,
	sceneData:GetDummyPoint(3,"Event_20503_05").pos,
	sceneData:GetDummyPoint(3,"Event_20503_06").pos,
	sceneData:GetDummyPoint(3,"Event_20503_07").pos,
}

QuestClientData.InterData = {
    NoReplyInter = {
		{
			{
				type = InteractionType.DIALOG,
				dialogType = DialogType.LOCK_FRAME,
				dialogID = 200130201,
			}
		},
	}
}

return QuestClientData