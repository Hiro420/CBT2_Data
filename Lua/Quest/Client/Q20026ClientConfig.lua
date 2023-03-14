local QuestClientData = {}

QuestClientData.MainID = 20026
QuestClientData.ActorAlias = "20026"
QuestClientData.SubIDs = 
{
    q2002600 = 2002600,
    q2002601 = 2002601,
    q2002602 = 2002602,
	q2002603 = 2002603,
	q2002604 = 2002604,
	q2002605 = 2002605,
	q2002606 = 2002606,
	q2002607 = 2002607,
	q2002608 = 2002608,	
}

--[[QuestClientData.NPCData = 
{
	Npc = "Npc153701",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 153701,
	NPCBornPos = sceneData:GetDummyPoint(3,"Event20302NPC").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Event20302NPC").rot,
}]]
--

QuestClientData.NarratorData = {
	Story1 = {
	   {dialogID = 200260501, audioEvtName = "", duration = 4 },
	},
	Story2 = {
	 {dialogID = 200260601, audioEvtName = "", duration = 4 },
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
				 dialogID = 200260501,
			 }
		 },
	 },
	 NoReplyInter2 = {
		 {
			 {
				 type = InteractionType.DIALOG,
				 dialogType = DialogType.LOCK_FRAME,
				 dialogID = 200260601,
			 }
		 },
	 }
 }

return QuestClientData