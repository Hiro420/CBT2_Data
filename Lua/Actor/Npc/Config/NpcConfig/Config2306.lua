require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2306",
		Alias = "Npc2306",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1743.741,y = 256.3927,z = 528.4839}, rot = {x = 0,y = 298.6679,z = 0}, }, freestyle = 0, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 1750.899,y = 256.3649,z = 530.7221}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 1757.159,y = 256.3975,z = 536.472}, rot = {x = 0,y = 30.65303,z = 0}, }, freestyle = 0, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 1760.261,y = 256.4208,z = 534.1512}, rot = {x = 0,y = 39.02468,z = 0}, }, freestyle = 0, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 1750.656,y = 256.3589,z = 516.6995}, rot = {x = 0,y = 181.9917,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 1750.077,y = 258.5872,z = 520.1756}, rot = {x = 0,y = 31.31926,z = 0}, }, freestyle = 0, time = 10, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
