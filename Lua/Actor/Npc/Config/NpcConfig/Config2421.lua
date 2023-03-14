require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2421",
		Alias = "Npc2421",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = 324.5025,y = 216.7595,z = 162.6348}, rot = {x = 0,y = 36.14706,z = 0}, }, freestyle = 1180, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 323.0845,y = 218.2096,z = 145.1541}, rot = {x = 0,y = 239.2292,z = 0}, }, freestyle = 1280, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 323.6756,y = 217.7608,z = 138.6929}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 309.6496,y = 216.73,z = 135.2594}, rot = {x = 0,y = 331.3445,z = 0}, }, freestyle = 1280, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 308.644,y = 216.7083,z = 102.8103}, rot = {x = 0,y = 208.1971,z = 0}, }, freestyle = 1280, time = 10, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = 316.1655,y = 216.7863,z = 107.5185}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 316.1736,y = 216.1264,z = 131.213}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = 352.2215,y = 216.8089,z = 161.2796}, rot = {x = 0,y = 97.55805,z = 0}, }, freestyle = 1280, time = 10, action = PatternData.Stand, },
				},
			},
		},
	},
}

return NPCConfig
