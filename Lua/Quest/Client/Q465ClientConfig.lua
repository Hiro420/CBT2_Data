local QuestClientData = {}

QuestClientData.MainID = 465
QuestClientData.ActorAlias = "465"
QuestClientData.SubIDs = 
{
	q46501 = 46501,
    q46502 = 46502,
	q46503 = 46503,
	q46504 = 46504,
	q46505 = 46505,
	q46506 = 46506,
	q46507 = 46507,
	q46508 = 46508,
	q46509 = 46509,
	q46510 = 46510,
	q46511 = 46511,
	q46512 = 46512,
	q46513 = 46513,
	q46514 = 46514,
	q46515 = 46515,
	q46516 = 46516,
	q46517 = 46517,
	q46518 = 46518,
	q46519 = 46519,
	q46520 = 46520,
	q46521 = 46521,
	q46522 = 46522,
	q46523 = 46523,
	q46524 = 46524,
	q46525 = 46525,
}

QuestClientData.PaimonData = 
{
	Paimon = "Paimon",
	PaimonScript = "Actor/Quest/Q352/Paimon",
	PaimonID = 1005,
	Pos3 = sceneData:GetDummyPoint(20019,"Q465Paimon3").pos,
	Dir3 = sceneData:GetDummyPoint(20019,"Q465Paimon3").rot,
	Pos4 = sceneData:GetDummyPoint(3,"Q465Paimon4").pos,
	Dir4 = sceneData:GetDummyPoint(3,"Q465Paimon4").rot,
	Pos5 = sceneData:GetDummyPoint(3,"Q465Paimon5").pos,
	Dir5 = sceneData:GetDummyPoint(3,"Q465Paimon5").rot,
	Pos7 = sceneData:GetDummyPoint(3,"Q465Paimon7").pos,
	Dir7 = sceneData:GetDummyPoint(3,"Q465Paimon7").rot,
	hiddenPos = sceneData:GetDummyPoint(3,"Q301Hidden").pos,
	hiddenDir = sceneData:GetDummyPoint(3,"Q301Hidden").rot,		
}

QuestClientData.DilucData = 
{
	Diluc = "Diluc",
	DilucScript = "Actor/Quest/Q376/Diluc",
	DilucID = 1009,
    Pos1 = sceneData:GetDummyPoint(3,"Q465DilucTemp1").pos,
    Dir1 = sceneData:GetDummyPoint(3,"Q465DilucTemp1").rot,
    Pos2 = sceneData:GetDummyPoint(3,"Q465Diluc2").pos,
    Dir2 = sceneData:GetDummyPoint(3,"Q465Diluc2").rot,
    Pos3 = sceneData:GetDummyPoint(20019,"Q465Diluc3").pos,
	Dir3 = sceneData:GetDummyPoint(20019,"Q465Diluc3").rot,
	Pos4 = sceneData:GetDummyPoint(3,"Q465Diluc4").pos,
	Dir4 = sceneData:GetDummyPoint(3,"Q465Diluc4").rot,
	Pos5 = sceneData:GetDummyPoint(1018,"Q465Diluc5").pos,
    Dir5 = sceneData:GetDummyPoint(1018,"Q465Diluc5").rot,
    hiddenPos = sceneData:GetDummyPoint(3,"Q301Hidden").pos,
	hiddenDir = sceneData:GetDummyPoint(3,"Q301Hidden").rot,		
}

QuestClientData.KaeyaData = 
{
	Kaeya = "Gaia",
	KaeyaScript = "Actor/Quest/Q301/Gaia301",
	KaeyaID = 1004,
	Pos1 = sceneData:GetDummyPoint(1004,"Q465Kaeya1").pos,
	Dir1 = sceneData:GetDummyPoint(1004,"Q465Kaeya1").rot,
	Pos2 = sceneData:GetDummyPoint(1004,"Q465Kaeya2").pos,
	Dir2 = sceneData:GetDummyPoint(1004,"Q465Kaeya2").rot,
	Pos3 = sceneData:GetDummyPoint(3,"Q465Kaeya3").pos,
	Dir3 = sceneData:GetDummyPoint(3,"Q465Kaeya3").rot,
	Pos4 = sceneData:GetDummyPoint(3,"Q465Kaeya4").pos,
    Dir4 = sceneData:GetDummyPoint(3,"Q465Kaeya4").rot,
    hiddenPos = sceneData:GetDummyPoint(3,"Q301Hidden").pos,
	hiddenDir = sceneData:GetDummyPoint(3,"Q301Hidden").rot,
}

QuestClientData.HoffmanData = 
{
	Hoffman = "Hoffman",
	HoffmanScript = "Actor/Quest/Q376/Soldier",
	HoffmanID = 1218,
    Pos1 = sceneData:GetDummyPoint(1004,"Q465Hoffman1").pos,
	Dir1 = sceneData:GetDummyPoint(1004,"Q465Hoffman1").rot,
	Pos2 = sceneData:GetDummyPoint(3,"Q465Hoffman2").pos,
    Dir2 = sceneData:GetDummyPoint(3,"Q465Hoffman2").rot,
    hiddenPos = sceneData:GetDummyPoint(3,"Q301Hidden").pos,
	hiddenDir = sceneData:GetDummyPoint(3,"Q301Hidden").rot,		
}

QuestClientData.AbyssWaterData = {
	AbyssWater = "AbyssWater",
	AbyssWaterScript = "Actor/Quest/Q376/Soldier",
	AbyssWaterID = 1219,
	Pos1 = sceneData:GetDummyPoint(20019,"Q465Abyss1").pos,
	Dir1 = sceneData:GetDummyPoint(20019,"Q465Abyss1").rot,
	Pos2 = sceneData:GetDummyPoint(20019,"Q465Abyss2").pos,
	Dir2 = sceneData:GetDummyPoint(20019,"Q465Abyss2").rot,
	Pos3 = sceneData:GetDummyPoint(20019,"Q465Abyss3").pos,
	Dir3 = sceneData:GetDummyPoint(20019,"Q465Abyss3").rot,
	hiddenPos = sceneData:GetDummyPoint(3,"Q301Hidden").pos,
	hiddenDir = sceneData:GetDummyPoint(3,"Q301Hidden").rot,	
}

QuestClientData.TempDungeonData = {
	TempDungeon = "TempDungeon",
	TempDungeonID = 100174,
	TempDungeonPos = sceneData:GetDummyPoint(3,"Q465DilucDungeon").pos,
    TempDungeonDir = sceneData:GetDummyPoint(3,"Q465DilucDungeon").rot,
}

QuestClientData.NarratorData = {
	Story1 = {
		{dialogID = 4650001, audioEvtName = "", duration = 5},
		{dialogID = 4650002, audioEvtName = "", duration = 3},
    },
    Story2 = {
		{dialogID = 3500201, audioEvtName = "", duration = 3},
		{dialogID = 4650003, audioEvtName = "", duration = 3},
		{dialogID = 4650004, audioEvtName = "", duration = 5},
	},
	Story3 = {
		{dialogID = 3500201, audioEvtName = "", duration = 3},
		{dialogID = 4660001, audioEvtName = "", duration = 6},
		{dialogID = 4660008, audioEvtName = "", duration = 4},
		{dialogID = 4660009, audioEvtName = "", duration = 4},
	},
}

QuestClientData.InterData = {
    NoReplyInter = {
		{
			{
				type = InteractionType.DIALOG,
				dialogType = DialogType.LOCK_FRAME,
				dialogID = 3500001,
			}
		},
	}
}

return QuestClientData