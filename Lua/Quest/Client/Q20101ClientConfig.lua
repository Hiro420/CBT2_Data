local QuestClientData = {}

QuestClientData.MainID = 20101
QuestClientData.ActorAlias = "20101"
QuestClientData.SubIDs = 
{
	q2010101 = 2010101,
	q2010102 = 2010102,
    q2010103 = 2010103,
    q2010104 = 2010104,
    q2010105 = 2010105,
    q2010106 = 2010106,
    q2010107 = 2010107,
    q2010108 = 2010108,
    q2010109 = 2010109,
    q2010110 = 2010110,
    q2010111 = 2010111,
    q2010112 = 2010112,
}

QuestClientData.NarratorNokey01 =
{
	{dialogID = 201015201, audioEvtName = "", duration = 3.5},
}

QuestClientData.NarratorNokey02 =
{
	{dialogID = 201015202, audioEvtName = "", duration = 3.5},
}

QuestClientData.NarratorNokey03 =
{
	{dialogID = 201015203, audioEvtName = "", duration = 6},
}

QuestClientData.NarratorNokey04 =
{
	{dialogID = 201015204, audioEvtName = "", duration = 6},
}

QuestClientData.NarratorNokey05 =
{
    {dialogID = 201015201, audioEvtName = "", duration = 3.5},
	{dialogID = 201015205, audioEvtName = "", duration = 5},
}

QuestClientData.NarratorNokey06 =
{
    {dialogID = 201015203, audioEvtName = "", duration = 6},
	{dialogID = 201015205, audioEvtName = "", duration = 5},
}

QuestClientData.NarratorFlow1 =
{
	{dialogID = 201010321, audioEvtName = "", duration = 5.5},
	{dialogID = 201010322, audioEvtName = "", duration = 4.5},
	{dialogID = 201010323, audioEvtName = "", duration = 6.5},
	{dialogID = 201010324, audioEvtName = "", duration = 4},
}

QuestClientData.ScaredNPC = 
{
	ScaredNPC = "ScaredNPC",
	ScaredNPCScript = "Actor/Npc/TempNPC",
    ScaredNPCID = 1501,		
    Pos = sceneData:GetDummyPoint(20023,"NPC_Scared").pos,
    Dir = sceneData:GetDummyPoint(20023,"NPC_Scared").rot,		
}

QuestClientData.GuardNPC = 
{
	GuardNPC = "GuardNPC",
	GuardNPCScript = "Actor/Npc/TempNPC",
    GuardNPCID = 1503,
    Pos = sceneData:GetDummyPoint(20023,"Guard101").pos,
    Dir = sceneData:GetDummyPoint(20023,"Guard101").rot,	
    Motion_type = 1 
    -- 1 =胆小 ，2 =贪婪， 3=正直
}

QuestClientData.GuardNPC201 = 
{
	GuardNPC = "GuardNPC201",
	GuardNPCScript = "Actor/Npc/TempNPC",
    GuardNPCID = 1504,
    Pos = sceneData:GetDummyPoint(20023,"Guard201").pos,
    Dir = sceneData:GetDummyPoint(20023,"Guard201").rot,	
    Motion_type = 1 
    -- 1 =胆小 ，2 =贪婪， 3=正直
}

QuestClientData.GuardNPC401 = 
{
	GuardNPC = "GuardNPC401",
	GuardNPCScript = "Actor/Npc/TempNPC",
    GuardNPCID = 1508,
    Pos = sceneData:GetDummyPoint(20023,"Guard401").pos,
    Dir = sceneData:GetDummyPoint(20023,"Guard401").rot,	
    Motion_type = 1 
    -- 1 =胆小 ，2 =贪婪， 3=正直
}

QuestClientData.DilucData = 
{
	Diluc = "Diluc",
	DilucScript = "Actor/Quest/Q376/Diluc",
	DilucID = 1009,
    bornPos = sceneData:GetDummyPoint(20023,"NPC_Diluc").pos,
	bornDir = sceneData:GetDummyPoint(20023,"NPC_Diluc").rot,		
}

QuestClientData.KeyPos = sceneData:GetDummyPoint(20023,"ViolinQuest").pos
QuestClientData.KeyDir = sceneData:GetDummyPoint(20023,"ViolinQuest").rot

return QuestClientData