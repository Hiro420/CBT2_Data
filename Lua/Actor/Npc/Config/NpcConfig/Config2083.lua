require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2083",
		Alias = "Npc2083",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -634.4622,y = 223.2267,z = 220.9914}, rot = {x = 356.173,y = 275.6989,z = 1.000535}, }, freestyle = 1090, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
