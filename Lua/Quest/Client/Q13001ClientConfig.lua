local QuestClientData = {}

QuestClientData.MainID = 13001
QuestClientData.ActorAlias = "13001"
QuestClientData.SubIDs = 
{
	q1300101 = 1300101,
	q1300102 = 1300102,
    q1300103 = 1300103,
    q1300104 = 1300104,
    q1300105 = 1300105,
    q1300106 = 1300106,
    q1300107 = 1300107,
    q1300108 = 1300108,
    q1300109 = 1300109,
    q1300110 = 1300110,
}

QuestClientData.PaimonData = 
{
    Alias = "Paimon",
    Script = "Actor/Quest/Q352/Paimon",
    ID = 1005,
    --Pos1 = sceneData:GetDummyPoint(3,"Q1300101Trigger").pos,
    --Dir1 = sceneData:GetDummyPoint(3,"Q1300101Trigger").rot,
   -- Pos2 = sceneData:GetDummyPoint(3,"Q1300104Trigger").pos,
    --Dir2 = sceneData:GetDummyPoint(3,"Q1300104Trigger").rot,
}
QuestClientData.DJ = 
{
    Alias = "Npc10201",
    Script = "Actor/Npc/TempNPC",
    ID = 10201,
    --Pos1 = sceneData:GetDummyPoint(3,"Q1300101Trigger").pos,
    --Dir1 = sceneData:GetDummyPoint(3,"Q1300101Trigger").rot,
   -- Pos2 = sceneData:GetDummyPoint(3,"Q1300104Trigger").pos,
    --Dir2 = sceneData:GetDummyPoint(3,"Q1300104Trigger").rot,
}
QuestClientData.YRZ = 
{
    Alias = "Npc10202",
    Script = "Actor/Npc/TempNPC",
    ID = 10202,
    --Pos1 = sceneData:GetDummyPoint(3,"Q1300101Trigger").pos,
    --Dir1 = sceneData:GetDummyPoint(3,"Q1300101Trigger").rot,
   -- Pos2 = sceneData:GetDummyPoint(3,"Q1300104Trigger").pos,
    --Dir2 = sceneData:GetDummyPoint(3,"Q1300104Trigger").rot,
}
QuestClientData.Xiao= 
{
    Alias = "Xiao",
    Script = "Actor/Quest/Q301/Gaia301",---暂用凯亚资源，需替换
    ID = 10204,
    --Pos1 = sceneData:GetDummyPoint(3,"Q1200005XQ").pos,
  -- Dir1 = sceneData:GetDummyPoint(3,"Q1200005XQ").rot,
}
return QuestClientData