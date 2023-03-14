local QuestClientData = {

	MainID = 22106,

	ActorAlias = "22106",

    SubIDs = 
{
	q2210600 = 2210600,
    q2210601 = 2210601,
    q2210602 = 2210602,
	q2210603 = 2210603,
	q2210604 = 2210604,
	q2210605 = 2210605,
	q2210606 = 2210606,
	q2210607 = 2210607,
	q2210608 = 2210608,
	q2210609 = 2210609,
	q2210610 = 2210610,
	q2210611 = 2210611,
	q2210612 = 2210612,
	q2210613 = 2210613,
	q2210614 = 2210614,
},

Actors = 
	{
		Lulu = 
		{
			alias = "Npc207401",
			script = "Actor/Npc/TempNPC",
			id = 207401,
			pos = sceneData:GetDummyPoint(3, "Q22000LuluSpawn").pos,
			rot = sceneData:GetDummyPoint(3, "Q22000LuluSpawn").rot,
		},
		Meng = 
		{
			alias = "Npc203101",
			script = "Actor/Npc/TempNPC",
			id = 203101,
			pos = sceneData:GetDummyPoint(3, "Q22000MengSpawn").pos,
			rot = sceneData:GetDummyPoint(3, "Q22000MengSpawn").rot,
		},
		Fei = 
		{
			alias = "Npc203001",
			script = "Actor/Npc/TempNPC",
			id = 203001,
			pos = sceneData:GetDummyPoint(3, "Q22000FeiSpawn").pos,
			rot = sceneData:GetDummyPoint(3, "Q22000FeiSpawn").rot,
		},
	},

}


return QuestClientData