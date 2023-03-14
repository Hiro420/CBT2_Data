require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1517",
		Alias = "Npc1517",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 1008, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 5.630874,y = 0.02498459,z = 39.65122}, rot = {x = 0,y = 275.0108,z = 0}, }, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
