require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2041",
		Alias = "Npc2041",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -660.1686,y = 219.2503,z = 214.2842}, rot = {x = 0,y = 85.28009,z = 0}, }, freestyle = 1190, time = 14, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -659.8129,y = 219.1,z = 228.8331}, rot = {x = 0,y = 11.54263,z = 0}, }, freestyle = 1190, time = 15, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
