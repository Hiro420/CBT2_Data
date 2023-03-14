local QuestClientData = {}

QuestClientData.MainID = 20011
QuestClientData.ActorAlias = "20011"
QuestClientData.SubIDs = 
{
    q2001100 = 2001100,
    q2001101 = q2001101,
    q2001102 = q2001102,
	q2001103 = q2001103,
    q2001103 = q2001104,
}

QuestClientData.NPCData = 
{
	Npc = "Npc140801",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 140801, 
	bubble = 4611001,
	NPCPos = sceneData:GetDummyPoint(3,"Event_20501").pos,
	NPCDir = sceneData:GetDummyPoint(3,"Event_20501").rot,
	NPCBornPos = sceneData:GetDummyPoint(3,"Event_20501").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Event_20501").rot,

}

QuestClientData.RoutePoints1 =
{
	sceneData:GetDummyPoint(3,"Event_20501_01").pos,
	sceneData:GetDummyPoint(3,"Event_20501_02").pos,
	---sceneData:GetDummyPoint(3,"Event_20501_03").pos,
	---sceneData:GetDummyPoint(3,"Event_20501_04").pos,
	---sceneData:GetDummyPoint(3,"Event_20501_05").pos,
	---sceneData:GetDummyPoint(3,"Event_20501_06").pos,
	---sceneData:GetDummyPoint(3,"Event_20501_07").pos,
	---sceneData:GetDummyPoint(3,"Event_20501_08").pos,
	---sceneData:GetDummyPoint(3,"Event_20501_09").pos,
	---sceneData:GetDummyPoint(3,"Event_20501_10").pos,
	---sceneData:GetDummyPoint(3,"Event_20501_11").pos,
}

QuestClientData.InterData = {
    NoReplyInter = {
		{
			{
				type = InteractionType.DIALOG,
				dialogType = DialogType.LOCK_FRAME,
				dialogID = 200110201,
			}
		},
	}
}

return QuestClientData