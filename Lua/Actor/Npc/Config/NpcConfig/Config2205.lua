require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2205",
		Alias = "Npc2205",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 958.4683,y = 208.3213,z = 346.4582}, rot = {x = 0,y = 77.74909,z = 0}, }, freestyle = 1190, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
