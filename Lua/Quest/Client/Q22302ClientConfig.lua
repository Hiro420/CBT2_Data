local QuestClientData = {}

QuestClientData.MainID = 22302
QuestClientData.ActorAlias = "22302"
QuestClientData.SubIDs = 
{
	q2230201 = 2230201,
	q2230202 = 2230202,
	q2230203 = 2230203,
	q2230203 = 2230204,

}

QuestClientData.PaimonReadBook0 =
{
	{dialogID = 223020201, audioEvtName = "", duration = 3},
	{dialogID = 223020202, audioEvtName = "", duration = 3},
	{dialogID = 223020203, audioEvtName = "", duration = 3},
}

QuestClientData.PaimonReadBook1 =
{
	{dialogID = 223020201, audioEvtName = "", duration = 3},
	{dialogID = 223020202, audioEvtName = "", duration = 3},
	{dialogID = 223020203, audioEvtName = "", duration = 3},
}

QuestClientData.NPCData01 = 
{
	Npc = "Paimon",
	NPCScript = "Actor/Npc/TempNPC",
	NpcID = 1005,
	InteractionPointPos = sceneData:GetDummyPoint(3,"Q22302FYSH").pos,
	InteractionPointDir = sceneData:GetDummyPoint(3,"Q22302FYSH").rot,
	NPCBornPos = sceneData:GetDummyPoint(3,"Q22302FYSH").pos,
	NPCBornDir = sceneData:GetDummyPoint(3,"Q22302FYSH").rot,
}

return QuestClientData