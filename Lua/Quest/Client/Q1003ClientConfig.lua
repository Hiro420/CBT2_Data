local QuestClientData = {}

QuestClientData.MainID = 1003
QuestClientData.ActorAlias = "1003"
QuestClientData.SubIDs = 
{
	q100301 = 100301,
	q100320 = 100320,
	q100302 = 100302,
	q100303 = 100303,
	q100319 = 100319,
	q100304 = 100304,
	q100305 = 100305,
	q100306 = 100306,
	q100307 = 100307,
	q100308 = 100308,
	q100309 = 100309,	
	q100310 = 100310,
	q100321 = 100321,
	q100311 = 100311,
	q100312 = 100312,
	q100313 = 100313,
	q100314 = 100314,
	q100315 = 100315,
	q100316 = 100316,
	q100317 = 100317,
	q100318 = 100318,

}

QuestClientData.XiaoArrivedCfg =
{
	type = CutsceneType.TIME_LINE_PREFAB,
	canSkip = true,
	castListPath = "Cs_CastList_Q1003",
	resPath = "ART/Cutscene/Cs_LYAQ001_XiaoArrived_Convert",
	startPosType = CutsceneInitPosType.FREE,
	startOffset = {0, 0, 0},
	keepCamera = false
}

QuestClientData.PaimonData = 
{
	Alias = "Paimon",
	Script = "Actor/Quest/Q352/Paimon",
	ID = 1005,
	BornPos01 = sceneData:GetDummyPoint(3,"Q100307Trigger").pos,
	BornDir01 = sceneData:GetDummyPoint(3,"Q100307Trigger").rot,
}

QuestClientData.XiaoData = 
{
	Alias = "Xiao",
	Script = "Actor/Npc/TempNPC",
	ID = 10204,
	BornPos01 = sceneData:GetDummyPoint(3,"Q100301Xiao").pos,
	BornDir01 = sceneData:GetDummyPoint(3,"Q100301Xiao").rot,
	BornPos17 = sceneData:GetDummyPoint(3,"Q100306Xiao").pos,
	BornDir17 = sceneData:GetDummyPoint(3,"Q100306Xiao").rot,

}

QuestClientData.VerrGoldetData = 
{
	Alias = "Npc220801",
	Script = "Actor/Npc/TempNPC",
	ID = 220801, --非尔戈黛特复制人
	BornPos03 = sceneData:GetDummyPoint(3,"Q100303VerrGoldet").pos,
	BornDir03 = sceneData:GetDummyPoint(3,"Q100303VerrGoldet").rot,

}

QuestClientData.YanxiaoData = 
{
	Alias = "Npc220401",
	Script = "Actor/Npc/TempNPC",
	ID = 220401, --言笑复制人
	BornPos06 = sceneData:GetDummyPoint(3,"Q100306Yanxiao").pos,
	BornDir06 = sceneData:GetDummyPoint(3,"Q100306Yanxiao").rot,
	BornPos16 = sceneData:GetDummyPoint(3,"Q100316Yanxiao").pos,
	BornDir16 = sceneData:GetDummyPoint(3,"Q100316Yanxiao").rot,

}

QuestClientData.XiaomingData = 
{
	Alias = "Npc231101",
	Script = "Actor/Npc/TempNPC",
	ID = 231101, --小冥复制人
	BornPos08 = sceneData:GetDummyPoint(3,"Q100308Ming").pos,
	BornDir08 = sceneData:GetDummyPoint(3,"Q100308Ming").rot,
	BornPos08Run01 = sceneData:GetDummyPoint(3,"Q100308MingRun01").pos,
	BornDir08Run01 = sceneData:GetDummyPoint(3,"Q100308MingRun01").rot,
	BornPos08Run02 = sceneData:GetDummyPoint(3,"Q100308MingRun02").pos,
	BornDir08Run02 = sceneData:GetDummyPoint(3,"Q100308MingRun02").rot,
	BornPos12 = sceneData:GetDummyPoint(3,"Q100312Ming").pos,
	BornDir12 = sceneData:GetDummyPoint(3,"Q100312Ming").rot,
	BornPos12Run01 = sceneData:GetDummyPoint(3,"Q100312MingRun01").pos,
	BornDir12Run01 = sceneData:GetDummyPoint(3,"Q100312MingRun01").rot,
	BornPos12Run02 = sceneData:GetDummyPoint(3,"Q100312MingRun02").pos,
	BornDir12Run02 = sceneData:GetDummyPoint(3,"Q100312MingRun02").rot,
	BornPos12Run03 = sceneData:GetDummyPoint(3,"Q100312MingRun03").pos,
	BornDir12Run03 = sceneData:GetDummyPoint(3,"Q100312MingRun03").rot,
	BornPos12Run04 = sceneData:GetDummyPoint(3,"Q100312MingRun04").pos,
	BornDir12Run04 = sceneData:GetDummyPoint(3,"Q100312MingRun04").rot,
	BornPos15 = sceneData:GetDummyPoint(3,"Q100315Ming").pos,
	BornDir15 = sceneData:GetDummyPoint(3,"Q100315Ming").rot,
	BornPos15Run = sceneData:GetDummyPoint(3,"Q100315MingRun").pos,
	BornDir15Run = sceneData:GetDummyPoint(3,"Q100315MingRun").rot,
}


QuestClientData.Xiaoming02Data = 
{
	Alias = "Npc231102",
	ID = 231102,
	Script = "Actor/Npc/TempNPC",
}

QuestClientData.GongziData = 
{
	Alias = "Gongzi",
	Script = "Actor/Npc/TempNPC",
	ID = 10200,
	BornPos = sceneData:GetDummyPoint(3,"Q100318Gongzi").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q100318Gongzi").rot,
}

QuestClientData.Rock01Data =
{
	Alias = "Rock100301",
	ID = 70710051,
	BornPos = sceneData:GetDummyPoint(3,"Q100311Rock01").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q100311Rock01").rot,
}

QuestClientData.Rock02Data =
{
	Alias = "Rock100302",
	ID = 70710052,
	BornPos = sceneData:GetDummyPoint(3,"Q100311Rock02").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q100311Rock02").rot,
}

QuestClientData.Rock03Data =
{
	Alias = "Rock100303",
	ID = 70710053,
	BornPos = sceneData:GetDummyPoint(3,"Q100311Rock03").pos,
    BornDir = sceneData:GetDummyPoint(3,"Q100311Rock03").rot,
}

QuestClientData.BornEffData =
{
	Alias = "BornEff1003",
	ID = 70710054,
	BornPos = sceneData:GetDummyPoint(3,"Q100312Ming").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q100312Ming").rot,
	BornPos11 = sceneData:GetDummyPoint(3,"Q100311Eff").pos,
	BornDir11 = sceneData:GetDummyPoint(3,"Q100311Eff").rot,
}

QuestClientData.XiangmoyinData =
{
	Alias = "Xiangmoyin",
	ID = 70710056,
	BornPos = sceneData:GetDummyPoint(3,"Q100321Gadget").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q100321Gadget").rot,
}

QuestClientData.GuideData =
{
	Alias = "Guide1003",
	ID = 70710058,
	BornPos = sceneData:GetDummyPoint(3,"Q100311JieMI").pos,
	BornDir = sceneData:GetDummyPoint(3,"Q100311JieMI").rot,
}

QuestClientData.CameraData = { pos = { x = 921.6797, y = 209.8724, z = 301.0525}, rot = { x = 13.799, y = 199.127, z = 0.0 } }

QuestClientData.Ray = {
	[1] = { posA = { x = 906.27, y = 212.77, z = 262.57}, posB = { x = 921.4964, y = 209.8993, z = 300.5234}},
	[2] = { posA = { x = 917.957, y = 209.935, z = 291.725}, posB = { x = 921.4964, y = 209.8993, z = 300.5234}},
	[3] = { posA = { x = 911.245, y = 211.05, z = 273.209}, posB = { x = 921.4964, y = 209.8993, z = 300.5234}},
}

QuestClientData.NarratorFlow1 =  --靠近望舒客栈开车
{
	{dialogID = 10030101, audioEvtName = "", duration = 2.9},
	{dialogID = 10030102, audioEvtName = "", duration = 6.2},
	{dialogID = 10030103, audioEvtName = "", duration = 8.3},
}

QuestClientData.NarratorFlow2 =  --见到鬼开车
{
	{dialogID = 10030801, audioEvtName = "", duration = 2.4},
	{dialogID = 10030802, audioEvtName = "", duration = 1},
}

QuestClientData.NarratorFlow3 =  --视角解谜开始开车
{
	{dialogID = 10031101, audioEvtName = "", duration = 4},
}

QuestClientData.NarratorFlow4 =  --小鬼再次出现开车开车
{
	{dialogID = 10031201, audioEvtName = "", duration = 6.1},
	{dialogID = 10031202, audioEvtName = "", duration = 2},
	{dialogID = 10031203, audioEvtName = "", duration = 6.3},
}

QuestClientData.NarratorFlow5 =  --进战斗开车开车
{
	{dialogID = 10031401, audioEvtName = "", duration = 2.7},
	{dialogID = 10031402, audioEvtName = "", duration = 5.8},
}

return QuestClientData