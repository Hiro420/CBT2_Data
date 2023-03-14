require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2030",
		Alias = "Npc2030",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.Day, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -576.7097,y = 205.7383,z = 130.631}, rot = {x = 0,y = 347.4787,z = 0}, }, freestyle = 1171, action = PatternData.Stand, },
				},
			},
			{
				condition = { daily = DailyCondition.Night, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -559.8995,y = 201.8726,z = 161.4875}, rot = {x = 0,y = 273.3733,z = 0}, }, action = PatternData.Hide, },
				},
			},
		},
	},
}

return NPCConfig
