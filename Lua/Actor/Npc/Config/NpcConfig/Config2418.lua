require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2418",
		Alias = "Npc2418",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 938.3042,y = 255.5518,z = 1234.533}, rot = {x = 0,y = 284.2581,z = 0}, }, freestyle = 4110, action = PatternData.Sit, },
				},
			},
		},
	},
}

return NPCConfig
