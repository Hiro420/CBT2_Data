local QuestClientData = {}

QuestClientData.MainID = 429
QuestClientData.ActorAlias = "429"
QuestClientData.SubIDs = 
{
	q42901 = 42901,
	q42902 = 42902,
	q42903 = 42903,
	q42904 = 42904,
	q42905 = 42905,
}

QuestClientData.MatchTime = 150
QuestClientData.WavePeriod = 20
QuestClientData.CurrentWave = 1
QuestClientData.WaveNum = 7
QuestClientData.Finish = false
QuestClientData.FriendlyNum = 0
QuestClientData.InitialCoin = 20
QuestClientData.CurrentCoin = 0
QuestClientData.KillCoin = 15
QuestClientData.GameOn = false

QuestClientData.AutoChessJudgeData = 
{
	alias = "AutoChessJudge",
	metaPath = "Actor/Npc/AutoChessJudge",
	configID = 1180,
	bornPos = sceneData:GetDummyPoint(3,"Q429Judge").pos,
	bornDir = sceneData:GetDummyPoint(3,"Q429Judge").rot,	
}

QuestClientData.BoxID = 70300069
QuestClientData.BoxPos = sceneData:GetDummyPoint(3,"Q429Origin").pos
QuestClientData.BoxDir = sceneData:GetDummyPoint(3,"Q429Origin").rot

QuestClientData.EnemyPos =
{
    { x = sceneData:GetDummyPoint(3,"Q429EnemySpawn").pos.x, y = sceneData:GetDummyPoint(3,"Q429EnemySpawn").pos.y, z = sceneData:GetDummyPoint(3,"Q429EnemySpawn").pos.z },
    { x = sceneData:GetDummyPoint(3,"Q429EnemySpawn").pos.x+1, y = sceneData:GetDummyPoint(3,"Q429EnemySpawn").pos.y, z = sceneData:GetDummyPoint(3,"Q429EnemySpawn").pos.z },
    { x = sceneData:GetDummyPoint(3,"Q429EnemySpawn").pos.x-1, y = sceneData:GetDummyPoint(3,"Q429EnemySpawn").pos.y, z = sceneData:GetDummyPoint(3,"Q429EnemySpawn").pos.z },
    { x = sceneData:GetDummyPoint(3,"Q429EnemySpawn").pos.x, y = sceneData:GetDummyPoint(3,"Q429EnemySpawn").pos.y, z = sceneData:GetDummyPoint(3,"Q429EnemySpawn").pos.z+1 },
    { x = sceneData:GetDummyPoint(3,"Q429EnemySpawn").pos.x, y = sceneData:GetDummyPoint(3,"Q429EnemySpawn").pos.y, z = sceneData:GetDummyPoint(3,"Q429EnemySpawn").pos.z-1 },
}
QuestClientData.EnemyDir = sceneData:GetDummyPoint(3,"Q429EnemySpawn").rot

QuestClientData.FriendlyPos = sceneData:GetDummyPoint(3,"Q429FriendlySpawn").pos
QuestClientData.FriendlyDir = sceneData:GetDummyPoint(3,"Q429FriendlySpawn").rot

QuestClientData.FriendlyData =
{
    {ConfigID = 20040001, Level = 1, Cost = 8},
    {ConfigID = 20040002, Level = 1, Cost = 30},
    {ConfigID = 20040003, Level = 1, Cost = 8},
    {ConfigID = 20040004, Level = 1, Cost = 30},
    {ConfigID = 20040005, Level = 1, Cost = 8},
    {ConfigID = 20040006, Level = 1, Cost = 30},
    {ConfigID = 20040007, Level = 1, Cost = 15},
    {ConfigID = 20040008, Level = 1, Cost = 50},
}

QuestClientData.EnemyWave1 =
{
	{ConfigID = 21010301, Level = 1},
}

QuestClientData.EnemyWave2 =
{
    {ConfigID = 21010901, Level = 1},
}

QuestClientData.EnemyWave3 =
{
	{ConfigID = 21010301, Level = 1},
	{ConfigID = 21010301, Level = 1},
}

QuestClientData.EnemyWave4 =
{
    {ConfigID = 21010901, Level = 2},
    {ConfigID = 21010901, Level = 2},
}

QuestClientData.EnemyWave5 =
{
    {ConfigID = 21010301, Level = 2},
    {ConfigID = 21010901, Level = 2},
    {ConfigID = 21010901, Level = 2},
}

QuestClientData.EnemyWave6 =
{
    {ConfigID = 21010301, Level = 3},
    {ConfigID = 21010301, Level = 3},
    {ConfigID = 21010901, Level = 3},
    {ConfigID = 21010901, Level = 3},
}

QuestClientData.EnemyWave7 =
{
    {ConfigID = 21020201, Level = 5},
}

return QuestClientData