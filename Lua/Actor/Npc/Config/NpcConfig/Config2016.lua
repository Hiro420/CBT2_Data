require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2016",
		Alias = "Npc2016",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -644.7681,y = 223.7262,z = 212.3611}, rot = {x = 0,y = 132.6931,z = 0}, }, freestyle = 1120, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
