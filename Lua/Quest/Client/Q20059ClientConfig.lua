local QuestClientData = {}

QuestClientData.MainID = 20059
QuestClientData.ActorAlias = "20059"
QuestClientData.SubIDs = 
{
	q2005901 = 2005901,
	q2005902 = 2005902,
    q2005903 = 2005903,
    q2005904 = 2005904,
    q2005905 = 2005905,
    q2005906 = 2005906,
    q2005907 = 2005907,
	q2005908 = 2005908,
	q2005909 = 2005909,
    q2005910 = 2005910,
    q2005920 = 2005920,
    q2005940 = 2005930,
    q2005960 = 2005950,
    q2005980 = 2005970,
    q2005990 = 2005990,
    q2005999 = 2005999,
}



QuestClientData.NPCData01 = 
{
	NPCScript = "Actor/Npc/TempNPC",
    NPCBornPos = sceneData:GetDummyPoint(3,"Q20059NPCA01").pos,
    NPCBornDir = sceneData:GetDummyPoint(3,"Q20059NPCA01").rot,
}

local NPCData01Id = {}

NPCData01Id['1'] = 1413

QuestClientData.NPCData01Id = NPCData01Id




local TreasureType = {}

TreasureType['2005920']=1


QuestClientData.TreasureType = TreasureType

local TreasureGiven= {}

TreasureGiven['200592001']=1
TreasureGiven['200592002']=1
TreasureGiven['200592003']=1


QuestClientData.TreasureGiven = TreasureGiven

local  TreasureGivenQuest= {}
TreasureGivenQuest['11']=2005930
TreasureGivenQuest['12']=2005950
TreasureGivenQuest['13']=2005970
TreasureGivenQuest['14']=2005990

QuestClientData.TreasureGivenQuest = TreasureGivenQuest

return QuestClientData