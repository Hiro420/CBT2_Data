local QuestClientData = {}

QuestClientData.MainID = 12002
QuestClientData.ActorAlias = "12002"
QuestClientData.SubIDs = 
{
	q1200201 = 1200201,
	q1200202 = 1200202,
    q1200203 = 1200203,
    q1200204 = 1200204,
    q1200205 = 1200205,
    q1200206 = 1200206,
    q1200207 = 1200207,
    q1200208 = 1200208,
    q1200209 = 1200209,
    q1200210 = 1200210,
	q1200211 = 1200211,
	q1200212 = 1200212,
	q1200213 = 1200213,
	q1200214 = 1200214,
	q1200215 = 1200215,
	q1200216 = 1200216,
	q1200217 = 1200217,
	q1200218 = 1200218,
}
QuestClientData.NarratorData1 = {

    {dialogID = 120020201, audioEvtName = "", duration = 3},
    {dialogID = 120020202, audioEvtName = "", duration = 3},
}
QuestClientData.NarratorData2 = {

    {dialogID = 610045601, audioEvtName = "", duration = 3},
}
QuestClientData.NarratorData3 = {

    {dialogID = 610045602, audioEvtName = "", duration = 3},
}
QuestClientData.NarratorData4 = {

	{dialogID = 610045603, audioEvtName = "", duration = 3},
	{dialogID = 610045604, audioEvtName = "", duration = 3},
}
QuestClientData.NarratorData5 = {

	{dialogID = 120020337, audioEvtName = "", duration = 3},
	{dialogID = 120020338, audioEvtName = "", duration = 3},
}
QuestClientData.PaimonData = 
{
    Alias = "Paimon",
    Script = "Actor/Quest/Q352/Paimon",
    ID = 1005,
    Pos1 = sceneData:GetDummyPoint(3,"Q1200201Trigger").pos,
    Dir1 = sceneData:GetDummyPoint(3,"Q1200201Trigger").rot,

}


 QuestClientData.XingQiuData = 
 {
 	Alias = "Npc10045",
 	Script = "Actor/Quest/Q301/Gaia301",---暂用凯亚资源，需替换
 	ID = 10045,
 	Pos1 = sceneData:GetDummyPoint(3,"Q1200108XQ").pos,
    Dir1 = sceneData:GetDummyPoint(3,"Q1200108XQ").rot,
 }

 QuestClientData.JiaDingData = 
 {
 	Alias = "Npc1627",
 	Script = "Actor/Npc/TempNPC",
 	ID = 1627,
 	Pos1 = sceneData:GetDummyPoint(3,"Npc1627Born").pos,
    Dir1 = sceneData:GetDummyPoint(3,"Npc1627Born").rot,
 }

 QuestClientData.ManagerData = 
 {
 	Alias = "Npc1628",
	 Script = "Actor/Npc/TempNPC",
 	ID = 1628,
 	Pos1 = sceneData:GetDummyPoint(3,"Npc1628Born").pos,
    Dir1 = sceneData:GetDummyPoint(3,"Npc1628Born").rot,
 }		

 QuestClientData.CarData1 = 
 {
	 Alias = "Npc1263",
	 Script = "Actor/Npc/TempNPC",
 	ID = 1263,
 	Pos = sceneData:GetDummyPoint(3,"Q1200209Stone1").pos,
    Dir= sceneData:GetDummyPoint(3,"Q1200209Stone1").rot,
	state = true
 }

 QuestClientData.CarData2 = 
 {
	 Alias = "Npc1264",
	 Script = "Actor/Npc/TempNPC",
 	ID = 1264,

    Pos = sceneData:GetDummyPoint(3,"Q1200209Stone2").pos,
    Dir = sceneData:GetDummyPoint(3,"Q1200209Stone2").rot,
	state = true
 }
 QuestClientData.CarData3 = 
 {
	 Alias = "Npc1265",
	 Script = "Actor/Npc/TempNPC",
 	ID = 1265,
    Pos = sceneData:GetDummyPoint(3,"Q1200209Stone3").pos,
	Dir = sceneData:GetDummyPoint(3,"Q1200209Stone3").rot,
	state = true
 }
 QuestClientData.CarData4 = 
 {
	 Alias = "Npc1266",
	 Script = "Actor/Npc/TempNPC",
 	ID = 1266,
    Pos = sceneData:GetDummyPoint(3,"Q1200209Stone4").pos,
	Dir = sceneData:GetDummyPoint(3,"Q1200209Stone4").rot,
	state = true
 }
 QuestClientData.CarData5 = 
 {
	 Alias = "Npc1267",
	 Script = "Actor/Npc/TempNPC",
 	ID = 1267,
    Pos = sceneData:GetDummyPoint(3,"Q1200209Stone5").pos,
	Dir = sceneData:GetDummyPoint(3,"Q1200209Stone5").rot,
	state = true
 }
 QuestClientData.WinkGagetData1 = 
 {
    Alias = "WinkGagetData1",
	ID = 71700053,
	
    Pos1 = sceneData:GetDummyPoint(3,"Q1200209Stone1").pos,
   Dir1 = sceneData:GetDummyPoint(3,"Q1200209Stone1").rot,
}
QuestClientData.WinkGagetData2 = 
{
   Alias = "WinkGagetData2",
   ID = 71700053,
   Pos1 = sceneData:GetDummyPoint(3,"Q1200209Stone2").pos,
  Dir1 = sceneData:GetDummyPoint(3,"Q1200209Stone2").rot,
}
QuestClientData.WinkGagetData3 = 

{
   Alias = "WinkGagetData3",
   ID = 71700053,
   Pos1 = sceneData:GetDummyPoint(3,"Q1200209Stone3").pos,
  Dir1 = sceneData:GetDummyPoint(3,"Q1200209Stone3").rot,
}
QuestClientData.WinkGagetData4 = 

{
   Alias = "WinkGagetData4",
   ID = 71700053,
   Pos1 = sceneData:GetDummyPoint(3,"Q1200209Stone4").pos,
  Dir1 = sceneData:GetDummyPoint(3,"Q1200209Stone4").rot,
}
QuestClientData.WinkGagetData5 = 
{
   Alias = "WinkGagetData5",
   ID = 71700053,
   Pos1 = sceneData:GetDummyPoint(3,"Q1200209Stone5").pos,
  Dir1 = sceneData:GetDummyPoint(3,"Q1200209Stone5").rot,
}
QuestClientData.CarGagetData1 = 

{
   Alias = "CarGagetData1",
   ID = 71700047,
   Pos1 = sceneData:GetDummyPoint(3,"Q1200209Stone1").pos,
  Dir1 = sceneData:GetDummyPoint(3,"Q1200209Stone1").rot,
}
QuestClientData.CarGagetData2 = 

{
  Alias = "CarGagetData2",
  ID = 71700047,
  Pos1 = sceneData:GetDummyPoint(3,"Q1200209Stone2").pos,
 Dir1 = sceneData:GetDummyPoint(3,"Q1200209Stone2").rot,
}
QuestClientData.CarGagetData3 = 

{
  Alias = "CarGagetData3",
  ID = 71700047,
  Pos1 = sceneData:GetDummyPoint(3,"Q1200209Stone3").pos,
 Dir1 = sceneData:GetDummyPoint(3,"Q1200209Stone3").rot,
}
QuestClientData.CarGagetData4 = 

{
  Alias = "CarGagetData4",
  ID = 71700047,
  Pos1 = sceneData:GetDummyPoint(3,"Q1200209Stone4").pos,
 Dir1 = sceneData:GetDummyPoint(3,"Q1200209Stone4").rot,
}
QuestClientData.CarGagetData5 = 
{
  Alias = "CarGagetData5",
  ID = 71700047,
  Pos1 = sceneData:GetDummyPoint(3,"Q1200209Stone5").pos,
 Dir1 = sceneData:GetDummyPoint(3,"Q1200209Stone5").rot,
}
return QuestClientData