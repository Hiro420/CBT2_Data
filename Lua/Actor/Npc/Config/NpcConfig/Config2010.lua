require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2010",
		Alias = "Npc2010",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -569.3163,y = 239.3025,z = 321.9329}, rot = {x = 0,y = 164.5373,z = 0}, }, freestyle = 1171, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
