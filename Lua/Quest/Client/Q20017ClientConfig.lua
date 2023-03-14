local QuestClientData = {}

QuestClientData.MainID = 20017
QuestClientData.ActorAlias = "20017"
QuestClientData.SubIDs =
{
    q2001701 = 2001701,
    q2001702 = 2001702,
	  q2001703 = 2001703,
    q2001704 = 2001704,
    q2001705 = 2001705,
    q2001706 = 2001706,
    q2001707 = 2001707,
    q2001708 = 2001708,
    q2001708 = 2001709,

}

QuestClientData.NPCData =
{
	Npc = "Npc154901",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 154901,
	NPCBornPos = sceneData:GetDummyPoint(3,"Q20017NPC").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Q20017NPC").rot,

}

QuestClientData.Item01ID01 = 100306
QuestClientData.Item01ID02 = 100307

QuestClientData.Item01IDPos01 = sceneData:GetDummyPoint(3,"Q20017Item011").pos
QuestClientData.Item01IDPos02 = sceneData:GetDummyPoint(3,"Q20017Item012").pos
QuestClientData.Item01IDPos03 = sceneData:GetDummyPoint(3,"Q20017Item013").pos



QuestClientData.Item02ID = 100308
QuestClientData.Item02IDPos = sceneData:GetDummyPoint(3,"Q20017Item02").pos

QuestClientData.RoutePoints =
{
	sceneData:GetDummyPoint(3,"Q20017NPCWalk01").pos,
	sceneData:GetDummyPoint(3,"Q20017NPCWalk02").pos,
	sceneData:GetDummyPoint(3,"Q20017NPCWalk03").pos,
  sceneData:GetDummyPoint(3,"Q20017NPCWalk04").pos,
	sceneData:GetDummyPoint(3,"Q20017NPCWalk05").pos,
}


QuestClientData.InterData = {
    NoReplyInter = {
		{
			{
				type = InteractionType.DIALOG,
				dialogType = DialogType.LOCK_FRAME,
				dialogID = 200170201,
			}
		},
	}
}

return QuestClientData
