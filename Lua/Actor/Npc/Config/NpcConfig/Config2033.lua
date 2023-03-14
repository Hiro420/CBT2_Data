require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2033",
		Alias = "Npc2033",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -602.918,y = 204.777,z = 162.2403}, rot = {x = 0,y = 125.8763,z = 0}, }, freestyle = 8010, action = PatternData.Sit, },
				},
			},
		},
	},
}

return NPCConfig
