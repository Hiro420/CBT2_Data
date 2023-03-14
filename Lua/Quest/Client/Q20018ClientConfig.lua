local QuestClientData = {}

QuestClientData.MainID = 20018
QuestClientData.ActorAlias = "20018"
QuestClientData.SubIDs =
{
    q2001801 = 2001801,
    q2001802 = 2001802,
	  q2001803 = 2001803,
    q2001804 = 2001804,
    q2001805 = 2001805,
    q2001806 = 2001806,
    q2001807 = 2001807,
    q2001808 = 2001808,
    q2001808 = 2001809,

}

QuestClientData.NPCData =
{
	Npc = "Npc157101",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 157101,
	NPCBornPos = sceneData:GetDummyPoint(3,"Q20018NPC").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Q20018NPC").rot,

}

QuestClientData.Item01ID01 = 100306
QuestClientData.Item01ID02 = 100307

QuestClientData.Item01IDPos01 = sceneData:GetDummyPoint(3,"Q20018Item011").pos
QuestClientData.Item01IDPos02 = sceneData:GetDummyPoint(3,"Q20018Item012").pos
QuestClientData.Item01IDPos03 = sceneData:GetDummyPoint(3,"Q20018Item013").pos



QuestClientData.Item02ID = 100308
QuestClientData.Item02IDPos = sceneData:GetDummyPoint(3,"Q20018Item02").pos

QuestClientData.RoutePoints =
{
	sceneData:GetDummyPoint(3,"Q20018NPCWalk01").pos,
	sceneData:GetDummyPoint(3,"Q20018NPCWalk02").pos,
	sceneData:GetDummyPoint(3,"Q20018NPCWalk03").pos,
  sceneData:GetDummyPoint(3,"Q20018NPCWalk04").pos,
	sceneData:GetDummyPoint(3,"Q20018NPCWalk05").pos,
}


QuestClientData.InterData = {
    NoReplyInter = {
		{
			{
				type = InteractionType.DIALOG,
				dialogType = DialogType.LOCK_FRAME,
				dialogID = 200180201,
			}
		},
	}
}

return QuestClientData
