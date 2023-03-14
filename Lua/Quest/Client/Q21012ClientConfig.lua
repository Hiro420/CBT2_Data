local QuestClientData = {}

QuestClientData.MainID = 21012
QuestClientData.ActorAlias = "21012"
QuestClientData.SubIDs = 
{
	q2101201 = 2101201,
	q2101202 = 2101202,
	q2101203 = 2101203,
	q2101204 = 2101204,
    q2101205 = 2101205,
	q2101206 = 2101206,
	q2101207 = 2101207,
	q2101208 = 2101208,
	q2101209 = 2101209,


}

QuestClientData.FemaleData = 
{
	Alias = "Female",
	Script = "Actor/Npc/TempNPC",
	ID = 20029,
    BornPos = sceneData:GetDummyPoint(3,"Q21012").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q21012").rot,
}

return QuestClientData