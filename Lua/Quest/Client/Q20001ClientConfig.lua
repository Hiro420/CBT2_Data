local QuestClientData = {}

QuestClientData.MainID = 20001
QuestClientData.ActorAlias = "20001"
QuestClientData.SubIDs = 
{
    q2000100 = 2000100,
    q2000101 = q2000101,
    q2000102 = q2000102,
	q2000103 = q2000103,
    q2000103 = q2000104,
}

QuestClientData.NPCData = 
{
	Npc = "Npc140301",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 140301,
	NPCPos = sceneData:GetDummyPoint(3,"EventTest01").pos,
	NPCDir = sceneData:GetDummyPoint(3,"EventTest01").rot,
	NPCBornPos = sceneData:GetDummyPoint(3,"EventTest01").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"EventTest01").rot,

}

QuestClientData.RoutePoints1 =
{
	sceneData:GetDummyPoint(3,"Event_100_WalkPoint01").pos,
	sceneData:GetDummyPoint(3,"Event_100_WalkPoint02").pos,
	---sceneData:GetDummyPoint(3,"Event_100_WalkPoint03").pos,
	---sceneData:GetDummyPoint(3,"Event_100_WalkPoint04").pos,
	---sceneData:GetDummyPoint(3,"Event_100_WalkPoint05").pos,
	---sceneData:GetDummyPoint(3,"Event_100_WalkPoint06").pos,
	---sceneData:GetDummyPoint(3,"Event_100_WalkPoint07").pos,
	---sceneData:GetDummyPoint(3,"Event_100_WalkPoint08").pos,
	---sceneData:GetDummyPoint(3,"Event_100_WalkPoint09").pos,
}

QuestClientData.InterData = {
    NoReplyInter = {
		{
			{
				type = InteractionType.DIALOG,
				dialogType = DialogType.LOCK_FRAME,
				dialogID = 200010201,
			}
		},
	}
}

return QuestClientData