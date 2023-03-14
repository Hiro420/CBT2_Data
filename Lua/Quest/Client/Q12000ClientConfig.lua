local QuestClientData = {}

QuestClientData.MainID = 12000
QuestClientData.ActorAlias = "12000"
QuestClientData.SubIDs = 
{
	q1200001 = 1200001,
	q1200002 = 1200002,
    q1200003 = 1200003,
    q1200004 = 1200004,
    q1200005 = 1200005,
    q1200006 = 1200006,
    q1200007 = 1200007,
    q1200008 = 1200008,
    q1200009 = 1200009,
    q1200010 = 1200010,
    q1200011 = 1200011,
}

QuestClientData.NarratorData = {

    {dialogID = 120000201, audioEvtName = "", duration = 3},
    {dialogID = 120000202, audioEvtName = "", duration = 3},
    {dialogID = 120000203, audioEvtName = "", duration = 3},
    {dialogID = 120000204, audioEvtName = "", duration = 3},    
}
QuestClientData.NarratorData1 = {

    {dialogID = 120000201, audioEvtName = "", duration = 3},
    {dialogID = 120000202, audioEvtName = "", duration = 3},
    {dialogID = 120000203, audioEvtName = "", duration = 3},
    {dialogID = 120000204, audioEvtName = "", duration = 3},    
}
QuestClientData.CHData = 
{
    Alias = "Npc2062",
    Script = "Actor/Npc/TempNPC",
    ID = 2062,
    Pos1 = sceneData:GetDummyPoint(3,"Q1200103Guard").pos,
   Dir1 = sceneData:GetDummyPoint(3,"Q1200103Guard").rot,
}
QuestClientData.GuardData01 = 
{
    Alias = "Npc10049",
    Script = "Actor/Npc/TempNPC",
    ID = 10049,
    Pos1 = sceneData:GetDummyPoint(3,"Q12000Guard01move").pos,
 Dir1 = sceneData:GetDummyPoint(3,"Q12000Guard01move").rot,
}
QuestClientData.GuardData02 = 
{
    Alias = "Npc10052",
    Script = "Actor/Npc/TempNPC",
    ID = 10052,
    Pos1 = sceneData:GetDummyPoint(3,"Q12000Guard02move").pos,
 Dir1 = sceneData:GetDummyPoint(3,"Q12000Guard02move").rot,
}
QuestClientData.GuardData03 = 
{
    Alias = "Npc10051",
    Script = "Actor/Npc/TempNPC",
    ID = 10051,
    Pos1 = sceneData:GetDummyPoint(3,"Q12000Guard03move").pos,
 Dir1 = sceneData:GetDummyPoint(3,"Q12000Guard03move").rot,
}

QuestClientData.PaimonData = 
{
    Alias = "Paimon",
    Script = "Actor/Quest/Q352/Paimon",
    ID = 1005,
    Pos1 = sceneData:GetDummyPoint(3,"Q1200005CH").pos,
    Dir1 = sceneData:GetDummyPoint(3,"Q1200005CH").rot,
    Pos2 = sceneData:GetDummyPoint(3,"Q1200008CH").pos,
    Dir2 = sceneData:GetDummyPoint(3,"Q1200008CH").rot,
    Pos3 = sceneData:GetDummyPoint(3,"Q1200008CHmove").pos,
    Dir3 = sceneData:GetDummyPoint(3,"Q1200008CHmove").rot,
}


 QuestClientData.XingQiuData = 
 {
 	Alias = "Npc10045",
 	Script = "Actor/Quest/Q301/Gaia301",---暂用凯亚资源，需替换
 	ID = 10045,
 	Pos1 = sceneData:GetDummyPoint(3,"Q1200005XQ").pos,
    Dir1 = sceneData:GetDummyPoint(3,"Q1200005XQ").rot,
    Pos2 = sceneData:GetDummyPoint(3,"Q1200003XQ").pos,
    Dir2 = sceneData:GetDummyPoint(3,"Q1200003XQ").rot,

 }
 QuestClientData.BookmanagerData = 
{
    Alias = "Npc1625",
    ID = 1625,

}
QuestClientData.InterData = {
	Cutscene1 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        castListPath = "Cs_CastList_Paimon",
        resPath = "ART/Cutscene/Cs_BigWorldShow_Cutscene",
        canSkip = false,
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        keepCamera = true
	},
}




return QuestClientData