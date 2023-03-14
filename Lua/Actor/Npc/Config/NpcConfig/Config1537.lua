require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "1537",
		Alias = "Npc1537",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1959.126,y = 215.4653,z = -912.5508}, rot = {x = 0,y = 20.78435,z = 0}, }, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1930.507,y = 223.8262,z = -940.645}, rot = {x = 0,y = 341.8592,z = 0}, }, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
