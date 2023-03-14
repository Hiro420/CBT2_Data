require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.GeneralPattern
local NPCConfig={}

NPCConfig.Data =
{
	NpcId = "1630",
	Alias= "Npc1630",
	DayPatterns = {PatternData.Stand},
	NightPatterns = {PatternData.Hide},

	DayStandPosData = 
	{
		{
			{dummypoint=sceneData:GetDummyPoint(3, "Npc1630Born"),freestyle=1230},
		},
	},

	--位置坐标，对于巡逻npc为巡逻路径点合集
}

return NPCConfig