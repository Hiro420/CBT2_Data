local QuestClientData = {}

QuestClientData.MainID = 10101
QuestClientData.ActorAlias = "10101"
QuestClientData.SubIDs = 
{
	q1010101 = 1010101,
	q1010102 = 1010102,
	q1010103 = 1010103,
	q1010104 = 1010104,
	q1010105 = 1010105,
	q1010106 = 1010106,
	q1010108 = 1010108,
	q1010109 = 1010109,
	q1010111 = 1010111,
	q1010112 = 1010112,
	q1010113 = 1010113,
	q1010114 = 1010114,
	q1010117 = 1010117,
	q1010118 = 1010118,
	q1010119 = 1010119,
}

QuestClientData.LisaData = 
{
	Lisa = "Lisa",
	LisaScript = "Actor/Quest/Q411/Lisa",
    LisaID = 1007,
    
	BornPos = sceneData:GetDummyPoint(3,"Q10101Lisa1").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q10101Lisa1").rot,
	BornPos2 = sceneData:GetDummyPoint(1004,"Q10100Lisa").pos,
	BornDir2 = sceneData:GetDummyPoint(1004,"Q10100Lisa").rot,
	BornPos3 = sceneData:GetDummyPoint(3,"RoutBookClue4").pos,
	BornDir3 = sceneData:GetDummyPoint(3,"RoutBookClue4").rot,
	DungBornPos = sceneData:GetDummyPoint(20010,"Q1010112Lisa").pos,
	DungBornDir = sceneData:GetDummyPoint(20010,"Q1010112Lisa").rot,
	DungBornPos2 = sceneData:GetDummyPoint(20010,"Q1010108Lisa").pos,
	DungBornDir2 = sceneData:GetDummyPoint(20010,"Q1010108Lisa").rot,
}

QuestClientData.PaimonData = 
{
	Paimon = "Paimon",
	PaimonScript = "Actor/Quest/Q352/Paimon",
	PaimonID = 1005,

	DungBornPos = sceneData:GetDummyPoint(20010,"Q1010112Paimon").pos,
	DungBornDir = sceneData:GetDummyPoint(20010,"Q1010112Paimon").rot,
	DungBornPos2 = sceneData:GetDummyPoint(20010,"Q1010108Paimon").pos,
	DungBornDir2 = sceneData:GetDummyPoint(20010,"Q1010108Paimon").rot,
}

QuestClientData.AbyssData = 
{
	Abyss = "AbyssWater",
	AbyssScript = "Actor/Quest/Q376/Soldier",
	AbyssID = 1178,

	DungBornPos = sceneData:GetDummyPoint(20010,"Q1010112Abyss").pos,
	DungBornDir = sceneData:GetDummyPoint(20010,"Q1010112Abyss").rot,
	DungBornPos2 = sceneData:GetDummyPoint(20010,"Q10101Abyss2").pos,
	DungBornDir2 = sceneData:GetDummyPoint(20010,"Q10101Abyss2").rot,
	AbyssEffPos = sceneData:GetDummyPoint(20010,"Q1010112Abyss").pos,
	AbyssEffDir = sceneData:GetDummyPoint(20010,"Q1010112Abyss").rot,
}

QuestClientData.PlayerData = 
{
	BornPos = sceneData:GetDummyPoint(1004,"Q10101Player").pos,
	BornDir = sceneData:GetDummyPoint(1004,"Q10101Player").rot,
	BornPos2 = sceneData:GetDummyPoint(3,"Q10101_Player").pos,
	BornDir2 = sceneData:GetDummyPoint(3,"Q10101_Player").rot,
	DungBornPos = sceneData:GetDummyPoint(20010,"Q1010112Player").pos,
	DungBornDir = sceneData:GetDummyPoint(20010,"Q1010112Player").rot,
	DungBornPos2 = sceneData:GetDummyPoint(20010,"Q1010108Player").pos,
	DungBornDir2 = sceneData:GetDummyPoint(20010,"Q1010108Player").rot,
}

QuestClientData.RouteData =
{
	Route1 = sceneData:GetDummyPoint(3,"Q10101BookRoute1").pos,
	Route2 = sceneData:GetDummyPoint(3,"Q10101BookRoute2").pos,
	Route3 = sceneData:GetDummyPoint(3,"Q10101BookRoute3").pos,
	Route4 = sceneData:GetDummyPoint(3,"Q10101BookRoute4").pos,
	Route5 = sceneData:GetDummyPoint(3,"Q10101BookRoute5").pos,
}

QuestClientData.RouteBookData =
{
	BookID = 70700005,
	Alias = "Q10101Bookclue",

	BookCluePos1 = sceneData:GetDummyPoint(3,"RoutBookClue1").pos,
	BookClueDir1 = sceneData:GetDummyPoint(3,"RoutBookClue1").rot,
	BookCluePos3 = sceneData:GetDummyPoint(3,"RoutBookClue3").pos,
	BookClueDir3 = sceneData:GetDummyPoint(3,"RoutBookClue3").rot,
	BookCluePos4 = sceneData:GetDummyPoint(3,"RoutBookClue4").pos,
	BookClueDir4 = sceneData:GetDummyPoint(3,"RoutBookClue4").rot,
}

QuestClientData.BookData =
{
	BookID = 70700015,
	Alias = "Q10101Book",
	BookPos = sceneData:GetDummyPoint(1004,"Q10101Book").pos,
	BookDir = sceneData:GetDummyPoint(1004,"Q10101Book").rot,
}

QuestClientData.LisaHitEffect =
{
	EffectID = 70700010,
	Alias = "Q10101HitEffect",

	EffectPos1 = sceneData:GetDummyPoint(3,"Q10101LisaThunder1").pos,
	EffectDir1 = sceneData:GetDummyPoint(3,"Q10101LisaThunder1").rot,
	EffectPos2 = sceneData:GetDummyPoint(3,"Q10101LisaThunder2").pos,
	EffectDir2 = sceneData:GetDummyPoint(3,"Q10101LisaThunder2").rot,
	EffectPos3 = sceneData:GetDummyPoint(3,"Q10101LisaThunder3").pos,
	EffectDir3 = sceneData:GetDummyPoint(3,"Q10101LisaThunder3").rot,
}

QuestClientData.LisaSkillEffect =
{
	EffectID = 70700011,
	Alias = "Q10101SkillEffect",

	EffectPos1 = sceneData:GetDummyPoint(20010,"Q1010112Lisa").pos,
	EffectDir1 = sceneData:GetDummyPoint(20010,"Q1010112Lisa").rot,
}

QuestClientData.DungeonSealEffect =
{
	EffectID = 70700013,
	Alias = "Q10101DungeonSealEffect",

	EffectPos1 = sceneData:GetDummyPoint(3,"Q10101DungeonBreak").pos,
	EffectDir1 = sceneData:GetDummyPoint(3,"Q10101DungeonBreak").rot,
}

QuestClientData.DungeonSealBreak =
{
	EffectID = 70700014,
	Alias = "Q10101DungeonSealBreak",

	EffectPos1 = sceneData:GetDummyPoint(3,"Q10101DungeonBreak").pos,
	EffectDir1 = sceneData:GetDummyPoint(3,"Q10101DungeonBreak").rot,
}

QuestClientData.NarratorData =
{
	Story1 = {
		{dialogID = 101010201, audioEvtName = "", duration = 7},
		{dialogID = 101010202, audioEvtName = "", duration = 4},
	},

	Story2 = {
		{dialogID = 101010203, audioEvtName = "", duration = 6},
		{dialogID = 101010204, audioEvtName = "", duration = 3},
	},

	Story3 = {
		{dialogID = 101010205, audioEvtName = "", duration = 6},
		{dialogID = 101010206, audioEvtName = "", duration = 2}
	},

	Story4 = {
		{dialogID = 101011101, audioEvtName = "", duration = 3},
		{dialogID = 101011102, audioEvtName = "", duration = 4},
		{dialogID = 101011103, audioEvtName = "", duration = 6}
	},

	Story5 = {
		{dialogID = 101011104, audioEvtName = "", duration = 4}
	}
}
return QuestClientData