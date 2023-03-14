local QuestClientData = {}

QuestClientData.MainID = 40007
QuestClientData.ActorAlias = "40007"
QuestClientData.SubIDs = 
{
    q4000701 = 4000701,
    q4000702 = 4000702,
}

QuestClientData.ThiefData = 
{   
    Alias = "Npc10205",
    Script = "Actor/Npc/TempNPC",
    ID = 10205,

    BornPos = sceneData:GetDummyPoint(3,"Q40007_ThiefRout1").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q40007_ThiefRout1").rot,	
    BornPos2 = sceneData:GetDummyPoint(3,"Q40007_ThiefRout2").pos,
    BornDir2 = sceneData:GetDummyPoint(3,"Q40007_ThiefRout2").rot,
}




return QuestClientData