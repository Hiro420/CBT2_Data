local QuestClientData = {}

QuestClientData.MainID = 482
QuestClientData.ActorAlias = "482"
QuestClientData.SubIDs = 
{
	q48201 = 48201,
	q48202 = 48202,
	q48203 = 48203,
	q48209 = 48209,
	q48209 = 48207,
	q48204 = 48204,
	q48208 = 48208,
    q48205 = 48205,
}

QuestClientData.AmborData = 
{
	Ambor = "Ambor",
	AmborScript = "Actor/Quest/Q301/Ambor301",
	AmborID = 1002,

	bornPos = sceneData:GetDummyPoint(3,"Q48202Ambor").pos,
	bornDir = sceneData:GetDummyPoint(3,"Q48202Ambor").rot,	

}

QuestClientData.InitRisingWind = {
	Wind1 = "Wind1",
	Wind2 = "Wind2",
	Wind3 = "Wind3",
	Wind4 = "Wind4",
	Wind5 = "Wind5",
	Wind6 = "Wind6",
	Wind7 = "Wind7",
	Wind8 = "Wind8",
	Wind9 = "Wind9",

	WindID = 70710005,
	Wind02ID = 70710005,
    
	Pos1 = sceneData:GetDummyPoint(1015,"WindVertical101").pos,
	Pos2 = sceneData:GetDummyPoint(1015,"WindVertical102").pos,
	Pos3 = sceneData:GetDummyPoint(1015,"WindVertical103").pos,
	Pos4 = sceneData:GetDummyPoint(1015,"WindVertical104").pos,
	Pos5 = sceneData:GetDummyPoint(1015,"WindVertical105").pos,
	Pos6 = sceneData:GetDummyPoint(1015,"WindVertical106").pos,
	Pos7 = sceneData:GetDummyPoint(1015,"WindVertical107").pos,
	Pos8 = sceneData:GetDummyPoint(1015,"WindVertical108").pos,
	Pos9 = sceneData:GetDummyPoint(1015,"WindVertical109").pos,
}

QuestClientData.WindCushionData = 
{
	WindCushion = "WindCushion",
	WindCushion2 = "WindCushion",
	WindCushion3 = "WindCushion",
	WindCushionID = 70300058,
	WindCushionID2 = 70300067,
	WindCushionID3 = 70300068,

	bornPos = sceneData:GetDummyPoint(1015,"WindCushion01").pos,
	bornDir = sceneData:GetDummyPoint(1015,"WindCushion01").rot,	
	bornPos2 = sceneData:GetDummyPoint(1015,"WindCushion02").pos,
	bornDir2 = sceneData:GetDummyPoint(1015,"WindCushion02").rot,	
	bornPos3 = sceneData:GetDummyPoint(1015,"WindCushion03").pos,
	bornDir3 = sceneData:GetDummyPoint(1015,"WindCushion03").rot,	
}

QuestClientData.Flyline1 = 
{	
	sceneData:GetDummyPoint(1015,"Acc01").pos,
	{
		x = sceneData:GetDummyPoint(1015,"Acc01").pos.x + (sceneData:GetDummyPoint(1015,"Acc02").pos.x - sceneData:GetDummyPoint(1015,"Acc01").pos.x)/3,
		y = sceneData:GetDummyPoint(1015,"Acc01").pos.y + (sceneData:GetDummyPoint(1015,"Acc02").pos.y - sceneData:GetDummyPoint(1015,"Acc01").pos.y)/3,
		z = sceneData:GetDummyPoint(1015,"Acc01").pos.z + (sceneData:GetDummyPoint(1015,"Acc02").pos.z - sceneData:GetDummyPoint(1015,"Acc01").pos.z)/3
	},
	{
		x = sceneData:GetDummyPoint(1015,"Acc01").pos.x + (sceneData:GetDummyPoint(1015,"Acc02").pos.x - sceneData:GetDummyPoint(1015,"Acc01").pos.x)/3*2,
		y = sceneData:GetDummyPoint(1015,"Acc01").pos.y + (sceneData:GetDummyPoint(1015,"Acc02").pos.y - sceneData:GetDummyPoint(1015,"Acc01").pos.y)/3*2,
		z = sceneData:GetDummyPoint(1015,"Acc01").pos.z + (sceneData:GetDummyPoint(1015,"Acc02").pos.z - sceneData:GetDummyPoint(1015,"Acc01").pos.z)/3*2
	},
	sceneData:GetDummyPoint(1015,"Acc02").pos,
}

QuestClientData.WindData = {
	Wind1 = "Wind1",
	Wind2 = "Wind2",

    WindID = 70710005,
    
	Pos1 = sceneData:GetDummyPoint(1015,"WindUp01").pos,
	Pos2 = sceneData:GetDummyPoint(1015,"WindUp02").pos,
}

-- QuestClientData.PaimonData = 
-- {
-- 	Paimon = "Paimon",
-- 	PaimonScript = "Actor/Quest/Q352/Paimon",
-- 	PaimonID = 1005,

-- 	bornPos = sceneData:GetDummyPoint(3,"Q482Paimon").pos,
-- 	bornDir = sceneData:GetDummyPoint(3,"Q482Paimon").rot,	

-- }

return QuestClientData