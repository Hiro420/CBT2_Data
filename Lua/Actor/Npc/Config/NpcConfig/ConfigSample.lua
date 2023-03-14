require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local NPCConfig={}

NPCConfig.Data =
{
	NpcId = "1477",
	Alias= "MengdeDayStand_1",
	DayPatterns = {PatternData.Stand, PatternData.Patrol},
	NightPatterns = {PatternData.Sit, PatternData.Hide},

	DayStandPosData = 
	{
		{
			{dummypoint=sceneData:GetDummyPoint(3, "Npc1525Route1_1"),freestyle=1220},
			{dummypoint=sceneData:GetDummyPoint(3, "Npc1525Route1_4"),freestyle=4100},
			{dummypoint=sceneData:GetDummyPoint(3, "Npc1525Route1_1"),freestyle=1220},
		},
	},

	NightStandPosData = 
	{
		{
			{dummypoint=sceneData:GetDummyPoint(3, "Npc1525Route1_1"),freestyle=1220},
			{dummypoint=sceneData:GetDummyPoint(3, "Npc1525Route1_4"),freestyle=4100},
			{dummypoint=sceneData:GetDummyPoint(3, "Npc1525Route1_1"),freestyle=1220},
		},
	},

	DaySitPosData = 
	{
		{
			{dummypoint=sceneData:GetDummyPoint(3, "Npc1525Route1_1"),freestyle=1220},
			{dummypoint=sceneData:GetDummyPoint(3, "Npc1525Route1_4"),freestyle=4100},
			{dummypoint=sceneData:GetDummyPoint(3, "Npc1525Route1_1"),freestyle=1220},
		},
	},

	NightSitPosData = 
	{
		{
			{dummypoint=sceneData:GetDummyPoint(3, "Npc1525Route1_1"),freestyle=1220},
			{dummypoint=sceneData:GetDummyPoint(3, "Npc1525Route1_4"),freestyle=4100},
			{dummypoint=sceneData:GetDummyPoint(3, "Npc1525Route1_1"),freestyle=1220},
		},
	},

	DayPatrolPosData = 
	{	
		{
			{dummypoint=sceneData:GetDummyPoint(3, "Npc1525Route1_2"),time=5},
			{dummypoint=sceneData:GetDummyPoint(3, "Npc1525Route1_3"),time=5},
		},
		{
			{dummypoint=sceneData:GetDummyPoint(3, "Npc1525Route1_3"),time=0},
			{dummypoint=sceneData:GetDummyPoint(3, "Npc1525Route1_4"),time=0},
		},
	},

	NightPatrolPosData =
	{
		{
			{dummypoint=sceneData:GetDummyPoint(3, "Npc1525Route1_2"),time=5},
			{dummypoint=sceneData:GetDummyPoint(3, "Npc1525Route1_3"),time=0},

		},
		{
			{dummypoint=sceneData:GetDummyPoint(3, "Npc1525Route1_3"),time=0},
			{dummypoint=sceneData:GetDummyPoint(3, "Npc1525Route1_4"),time=5},
		},
	},
	--位置坐标，对于巡逻npc为巡逻路径点合集
}

return NPCConfig