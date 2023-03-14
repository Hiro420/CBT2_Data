require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2064",
		Alias = "Npc2064",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -547.8816,y = 218.5612,z = 336.3548}, rot = {x = 0,y = 40.13717,z = 0}, }, freestyle = 0, time = 20, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -538.3148,y = 218.5612,z = 345.4095}, rot = {x = 0,y = 227.6125,z = 0}, }, freestyle = 0, time = 20, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
