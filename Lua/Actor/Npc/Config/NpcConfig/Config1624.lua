require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1624",
		Alias = "Npc1624",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1736.842,y = 276.2554,z = 480.3494}, rot = {x = 0,y = 354.3237,z = 0}, }, freestyle = 1190, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 1738.088,y = 275.8806,z = 473.2346}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 1737.562,y = 275.5969,z = 464.0668}, rot = {x = 0,y = 226.4614,z = 0}, }, freestyle = 1190, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 1739.809,y = 275.6628,z = 468.3563}, rot = {x = 0,y = 83.47831,z = 0}, }, freestyle = 8040, time = 20, action = PatternData.Sit, },
				},
			},
		},
	},
}

return NPCConfig
