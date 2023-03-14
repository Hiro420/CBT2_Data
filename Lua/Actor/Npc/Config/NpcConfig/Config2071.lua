require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local DailyCondition = NpcConfigCommon.DailyCondition
local QuestState = NpcConfigCommon.QuestState

local NPCConfig = 
{
	Data = 
	{
		NpcId = "2071",
		Alias = "Npc2071",
		DailyScheduleData = 
		{
			{
				condition = { daily = DailyCondition.AllDay, sceneId = 3, priority = 0, },
				actionPoints = 
				{
					{ dummypoint = { pos = {x = -643.793,y = 250.6663,z = 409.4898}, rot = {x = 0,y = 133.1256,z = 0}, }, freestyle = 0, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -627.0579,y = 250.6663,z = 419.3969}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -609.512,y = 250.6663,z = 418.1367}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -601.6414,y = 250.6663,z = 412.923}, rot = {x = 0,y = 51.05259,z = 0}, }, freestyle = 0, time = 15, action = PatternData.Stand, },
					{ dummypoint = { pos = {x = -595.6411,y = 250.6663,z = 399.3478}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -596.8036,y = 250.6663,z = 384.2296}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -611.8886,y = 250.6663,z = 371.983}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -633.1497,y = 250.6663,z = 373.5642}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
					{ dummypoint = { pos = {x = -644.4701,y = 250.6663,z = 386.5498}, rot = {x = 0,y = 0,z = 0}, }, action = PatternData.Patrol, },
				},
			},
		},
	},
}

return NPCConfig
