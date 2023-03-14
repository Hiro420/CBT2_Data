local QuestClientData = {}

QuestClientData.MainID = 22301
QuestClientData.ActorAlias = "22301"
QuestClientData.SubIDs = 
{
    q2230101=2230101,
    q2230191=2230191,
    q2230192=2230192,
    q2230193=2230193,
    q2230102=2230102,
    q2230111=2230111,
    q2230112=2230112,
    q2230113=2230113,
    q2230121=2230121,
    q2230122=2230122,
    q2230123=2230123,
    q2230161=2230161,
    q2230162=2230162,
    q2230163=2230163,
    q2230103=2230103,
    q2230104=2230104,
    q2230105=2230105,
    q2230106=2230106,
    q2230107=2230107,
    q2230108=2230108,
    q2230109=2230109,
}

QuestClientData.NPCData01 = 
{
	Npc = "Npc202601",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 202601,
	InteractionPointPos = sceneData:GetDummyPoint(3,"Q22301JZ").pos,
	InteractionPointDir = sceneData:GetDummyPoint(3,"Q22301JZ").rot,
	NPCBornPos = sceneData:GetDummyPoint(3,"Q22301JZ").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Q22301JZ").rot,

}
QuestClientData.NPCData02 = 
{
	Npc = "Npc162601",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 162601,
	InteractionPointPos = sceneData:GetDummyPoint(3,"Q22301MC").pos,
	InteractionPointDir = sceneData:GetDummyPoint(3,"Q22301MC").rot,
	NPCBornPos = sceneData:GetDummyPoint(3,"Q22301MC").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Q22301MC").rot,

}
QuestClientData.NPCData03 = 
{
	Npc = "Npc201101",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 201101,
	InteractionPointPos = sceneData:GetDummyPoint(3,"Q22301F2Y").pos,
	InteractionPointDir = sceneData:GetDummyPoint(3,"Q22301F2Y").rot,
	NPCBornPos = sceneData:GetDummyPoint(3,"Q22301F2Y").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Q22301F2Y").rot,

}
QuestClientData.NPCData04 = 
{
	Npc = "Npc201001",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 201001,
	InteractionPointPos = sceneData:GetDummyPoint(3,"Q22301LS").pos,
	InteractionPointDir = sceneData:GetDummyPoint(3,"Q22301LS").rot,
	NPCBornPos = sceneData:GetDummyPoint(3,"Q22301LS").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Q22301LS").rot,

}

local TaleType = {}

TaleType['22301911'] = 221
TaleType['22301912'] = 222
TaleType['22301913'] = 223
TaleType['22301921'] = 111
TaleType['22301922'] = 112
TaleType['22301923'] = 113
TaleType['22301931'] = 321
TaleType['22301932'] = 322
TaleType['22301933'] = 323


QuestClientData.TaleType = TaleType

local TaleWant = {}
TaleWant['111'] = 223010301
TaleWant['112'] = 223010302
TaleWant['113'] = 223010303
TaleWant['221'] = 223010304
TaleWant['222'] = 223010305
TaleWant['223'] = 223010306
TaleWant['321'] = 223010305
TaleWant['322'] = 223010305
TaleWant['323'] = 223010306

QuestClientData.TaleWant = TaleWant




return QuestClientData