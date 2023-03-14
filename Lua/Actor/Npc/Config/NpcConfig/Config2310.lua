require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2310",
		Alias = "Npc2310",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 1684.06,y = 236.7516,z = 656.9075}, rot = {x = 0,y = 344.9564,z = 0}, }, freestyle = 0, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 1670.479,y = 236.4876,z = 654.9565}, rot = {x = 0,y = 310.427,z = 0}, }, freestyle = 0, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 1677.396,y = 238.555,z = 646.6692}, rot = {x = 0,y = 0,z = 0}, }, freestyle = 0, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 1686.607,y = 237.6969,z = 646.9321}, rot = {x = 0,y = 161.0574,z = 0}, }, freestyle = 0, time = 15, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
