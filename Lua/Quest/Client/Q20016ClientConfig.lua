local QuestClientData = {}

QuestClientData.MainID = 20016
QuestClientData.ActorAlias = "20016"
QuestClientData.SubIDs = 
{
    q2001600 = 2001600,
    q2001601 = 2001601,
    q2001602 = 2001602,
	q2001603 = 2001603,
	q2001604 = 2001604,
	q2001605 = 2001605,
	q2001606 = 2001606,
	q2001607 = 2001607,
	q2001608 = 2001608,
	q2001609 = 2001609,
	q2001610 = 2001610,
	q2001611 = 2001611,	
}

QuestClientData.NPC1Data = 
{
	Npc = "Npc157301",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 157301,
	--temp NPC ID
	NPCBornPos = sceneData:GetDummyPoint(3,"Event20301NPCSpawn1").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Event20301NPCSpawn1").rot,
}

QuestClientData.NPC2Data = 
{
	Npc = "Npc157501",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 157501,
	--temp NPC ID
	NPCBornPos = sceneData:GetDummyPoint(3,"Event20301NPCSpawn2").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Event20301NPCSpawn2").rot,
}

QuestClientData.NPC3Data = 
{
	Npc = "Npc157701",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 157701,
	--temp NPC ID
	NPCBornPos = sceneData:GetDummyPoint(3,"Event20301NPCSpawn3").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Event20301NPCSpawn3").rot,
}

QuestClientData.NarratorData = {
	Story1 = {
	   {dialogID = 200160901, audioEvtName = "", duration = 4 },
	},
	Story2 = {
	 {dialogID = 200161001, audioEvtName = "", duration = 4 },
  },
 }
 
 QuestClientData.PaimonData = 
 {
	 Paimon = "Paimon",
	 PaimonScript = "Actor/Quest/Q352/Paimon",
	 PaimonID = 1005,		
 }
 
 QuestClientData.InterData = {
	 NoReplyInter1 = {
		 {
			 {
				 type = InteractionType.DIALOG,
				 dialogType = DialogType.LOCK_FRAME,
				 dialogID = 200160901,
			 }
		 },
	 },
	 NoReplyInter2 = {
		 {
			 {
				 type = InteractionType.DIALOG,
				 dialogType = DialogType.LOCK_FRAME,
				 dialogID = 200161001,
			 }
		 },
	 }
 }

return QuestClientData