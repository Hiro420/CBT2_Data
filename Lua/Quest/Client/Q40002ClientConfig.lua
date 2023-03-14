local QuestClientData = {}

QuestClientData.MainID = 40002
QuestClientData.ActorAlias = "40002"
QuestClientData.SubIDs = 
{
    q4000201 = 4000201,
    q4000202 = 4000202,
    q4000203 = 4000203,
}

QuestClientData.PaimonData = 
{
	Alias = "Paimon",
	Script = "Actor/Quest/Q352/Paimon",
    ID = 1005,
    
    BornPos = sceneData:GetDummyPoint(3,"Q4000214_Paimon").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q4000214_Paimon").rot,
}

QuestClientData.PlayerData = 
{
    BornPos = sceneData:GetDummyPoint(3,"Q4000214_Player").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q4000214_Player").rot,
}


--任务白盒临时创建，之后用大世界玩法代替
QuestClientData.Gadget1Data = 
{
    Alias = "Q40002Gadget1",
    ID = 70710021,

    BornPos = sceneData:GetDummyPoint(3,"Q40002Target3").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q40002Target3").rot,
}
-------------------------------------------

QuestClientData.SetPointData = 
{
    Alias = "Q40002Set1",
    ID = 70710040,

    BornPos = sceneData:GetDummyPoint(3,"Q40002Set1").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q40002Set1").rot,
}

QuestClientData.SearchPoint1 = 
{
    Alias = "Npc10212",
    Script = "Actor/Npc/TempNPC",
    ID = 10212,

    BornPos = sceneData:GetDummyPoint(3,"Q40002Search1").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q40002Search1").rot,
}

QuestClientData.SearchPoint2 = 
{
    Alias = "Npc10213",
    Script = "Actor/Npc/TempNPC",
    ID = 10213,

    BornPos = sceneData:GetDummyPoint(3,"Q40002Search2").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q40002Search2").rot,
}

QuestClientData.SearchPoint3 = 
{
    Alias = "Npc10214",
    Script = "Actor/Npc/TempNPC",
    ID = 10214,

    BornPos = sceneData:GetDummyPoint(3,"Q40002Search3").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q40002Search3").rot,
}

QuestClientData.SearchGadget = 
{
    Alias1 = "Q40002Search1",
    Alias2 = "Q40002Search2",
    Alias3 = "Q40002Search3",
    ID1 = 70710041,
    ID2 = 70710042,
    ID3 = 70710043,
}
--@region Narrtor Story Data
QuestClientData.NarratorData = {
        Story1 = {
            {dialogID = 400020001, duration = 5.74},
            {dialogID = 400020002, duration = 5.91},
        },
        --第一次调查的开车
        Story2 = {
            {dialogID = 400020902, duration = 4.85},
        },
    
        --第二次调查的开车
        Story3 = {
            {dialogID = 400020903, duration = 3.29},
        },
    
        Story4 = {
            {dialogID = 400020111, duration = 4},
        },
        Story5 = {
            {dialogID = 400020701, duration = 4.37},
        },
    }
    

--@endregion
return QuestClientData