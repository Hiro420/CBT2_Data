require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.VoicePattern
local TalkModeData = NpcConfigCommon.TalkMode
local NPCConfig={}

NPCConfig.Data =
{
	NpcId = 1608, --蒙德 佩佩 小男孩
	--SOLO为单人对话，TALK为多人对话
	Pattern =PatternData.SOLO,
	--BUBBLE为气泡，VOICE为语音，BOTH为都播，NO为都不播
	TalkMode=TalkModeData.BOTH,
	--当未进行单独配置时默认的气泡持续时间
	BubbleTime=10,
	--当未进行单独配置时默认的气泡随机间隔
	BubbleInterval={5,10},
	--随机选择一条进行播放
	DialogData={
		{Id=1022110100,Mode=TalkModeData.BOTH,BubbleTime=10,BubbleInterval={15,25}},
	},
}

return NPCConfig