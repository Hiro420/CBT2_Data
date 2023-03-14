require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2073",
		Alias = "Npc2073",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -556.6203,y = 249.6237,z = 425.6724}, rot = {x = 0,y = 294.3705,z = 0}, }, freestyle = 1120, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
