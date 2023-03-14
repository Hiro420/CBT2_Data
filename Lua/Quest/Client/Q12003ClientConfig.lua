local QuestClientData = {}

QuestClientData.MainID = 12003
QuestClientData.ActorAlias = "12003"
QuestClientData.SubIDs = 
{
	q1200301 = 1200301,
	q1200302 = 1200302,
    q1200303 = 1200303,
    q1200304 = 1200304,
    q1200305 = 1200305,
    q1200306 = 1200306,
    q1200307 = 1200307,
    q1200308 = 1200308,
    q1200309 = 1200309,
    q1200310 = 1200310,
    q1200311 = 1200311,

}

QuestClientData.PaimonData = 
{
    Alias = "Paimon",
    Script = "Actor/Quest/Q352/Paimon",
    ID = 1005,
    --Pos1 = sceneData:GetDummyPoint(3,"Q1200301Trigger").pos,
    --Dir1 = sceneData:GetDummyPoint(3,"Q1200301Trigger").rot,

}


 QuestClientData.XingQiuData = 
 {
 	Alias = "Npc10045",
 	Script = "Actor/Quest/Q301/Gaia301",---暂用凯亚资源，需替换
 	ID = 10045,
 	Pos1 = sceneData:GetDummyPoint(3,"Q1200005XQ").pos,
    Dir1 = sceneData:GetDummyPoint(3,"Q1200005XQ").rot,
    Pos2 = sceneData:GetDummyPoint(3,"Q1200308XQ").pos,
    Dir2 = sceneData:GetDummyPoint(3,"Q1200308XQ").rot,

 }

 QuestClientData.WlyData = 
 {
 	Alias = "Npc162601",
 	Script = "Actor/Npc/TempNPC",
 	ID = 162601,
 	Pos1 = sceneData:GetDummyPoint(3,"Q12003Battle").pos,
  Dir1 = sceneData:GetDummyPoint(3,"Q12003Battle").rot,
 }
 QuestClientData.GuardData01 = 
 {
 	Alias = "Npc10050",
 	Script = "Actor/Npc/TempNPC",
 	ID = 10050,
 	Pos1 = sceneData:GetDummyPoint(3,"Q12003Guard01").pos,
  Dir1 = sceneData:GetDummyPoint(3,"Q12003Guard01").rot,
 }
 QuestClientData.GuardData02 = 
 {
 	Alias = "Npc10051",
 	Script = "Actor/Npc/TempNPC",
 	ID = 10051,
 	Pos1 = sceneData:GetDummyPoint(3,"Q12003Guard02").pos,
  Dir1 = sceneData:GetDummyPoint(3,"Q12003Guard02").rot,
 }
 QuestClientData.GuardData03 = 
 {
 	Alias = "Npc10049",
 	Script = "Actor/Npc/TempNPC",
 	ID = 10049,
 	Pos1 = sceneData:GetDummyPoint(3,"Q12003Guard03").pos,
  Dir1 = sceneData:GetDummyPoint(3,"Q12003Guard03").rot,
 }

 QuestClientData.CollectorsData = 
 {
 	Alias = "Npc10048",
 	Script = "Actor/Npc/TempNPC",
 	ID = 10048,
 	--Pos1 = sceneData:GetDummyPoint(3,"Q12003Battle").pos,
  --Dir1 = sceneData:GetDummyPoint(3,"Q12003Battle").rot,
 }

 QuestClientData.JiaDingData = 
 {
 	Alias = "Npc1627",
 	Script = "Actor/Npc/TempNPC",
 	ID = 1627,
 	Pos1 = sceneData:GetDummyPoint(3,"Npc1627Born").pos,
    Dir1 = sceneData:GetDummyPoint(3,"Npc1627Born").rot,
 }

 QuestClientData.NarratorData =
{
    story1 = 
    {
        {dialogID = 120030601, audioEvtName = "", duration = 3 },
        {dialogID = 120030602, audioEvtName = "", duration = 3 },
    },

}
QuestClientData.NarratorData1 =
{
    story1 = 
    {
        {dialogID = 120030601, audioEvtName = "", duration = 3 },
        {dialogID = 120030602, audioEvtName = "", duration = 3 },
    },

}
QuestClientData.NarratorData2 =
{
    story1 = 
    {
        {dialogID = 120030601, audioEvtName = "", duration = 3 },
        {dialogID = 120030602, audioEvtName = "", duration = 3 },
    },

}
return QuestClientData