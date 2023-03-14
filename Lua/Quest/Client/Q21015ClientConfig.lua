local QuestClientData = {}

QuestClientData.MainID = 21015
QuestClientData.ActorAlias = "21015"

QuestClientData.SubIDs = 
{
	q2101501 = 2101501,
	q2101502 = 2101502,
	q2101503 = 2101503,
	q2101504 = 2101504,
	q2101505 = 2101505,

}

QuestClientData.XiaojiujiuData = 
{
	Alias = "Npc2311",
	Script = "Actor/Npc/TempNPC",
	ID = 2311,
	BornPos01 = sceneData:GetDummyPoint(3,"Q21015hua03").pos,
	BornDir01 = sceneData:GetDummyPoint(3,"Q21015hua03").rot,
}


return QuestClientData
