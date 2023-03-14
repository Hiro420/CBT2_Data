local QuestClientData = {}

QuestClientData.MainID = 20006
QuestClientData.ActorAlias = "20006"
QuestClientData.SubIDs = 
{
    q2000600 = 2000600,
    q2000601 = 2000601,
    q2000602 = 2000602,
	q2000603 = 2000603,
	q2000604 = 2000604,
	q2000605 = 2000605,
	q2000606 = 2000606,
	q2000607 = 2000607,
	q2000608 = 2000608,
	q2000609 = 2000609,
	q2000610 = 2000610,
	
}

QuestClientData.NPCData = 
{
	Npc = "Npc159401",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 159401,
	NPCBornPos = sceneData:GetDummyPoint(3,"EventNpc102").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"EventNpc102").rot,
	PlayerPos = sceneData:GetDummyPoint(3,"Event102_Trans01").pos,
	PlayerDir = sceneData:GetDummyPoint(3,"Event102_Trans01").rot,
}

QuestClientData.NarratorData = {
   Story1 = {
      {dialogID = 200060501, audioEvtName = "", duration = 4 },
   },
   Story2 = {
	{dialogID = 200060601, audioEvtName = "", duration = 4 },
 },



}

QuestClientData.PaimonData = 
{
	Paimon = "Paimon",
	PaimonScript = "Actor/Quest/Q352/Paimon",
	PaimonID = 1005,		
}

QuestClientData.RoutePoints1 =
 {
	 sceneData:GetDummyPoint(3,"Event_20202").pos,
	 sceneData:GetDummyPoint(3,"Event_20202_01").pos,
	 sceneData:GetDummyPoint(3,"Event_20202_02").pos,
 }

QuestClientData.InterData = {
	NoReplyInter1 = {
		{
			{
				type = InteractionType.DIALOG,
				dialogType = DialogType.LOCK_FRAME,
				dialogID = 200060501,
			}
		},
	},
	NoReplyInter2 = {
		{
			{
				type = InteractionType.DIALOG,
				dialogType = DialogType.LOCK_FRAME,
				dialogID = 200060601,
			}
		},
	}
}

return QuestClientData