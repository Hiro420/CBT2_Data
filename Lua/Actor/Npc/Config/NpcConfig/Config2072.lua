require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2072",
		Alias = "Npc2072",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -610.1348,y = 205.432,z = 170.6598}, rot = {x = 0,y = 154.3089,z = 0}, }, freestyle = 1120, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
