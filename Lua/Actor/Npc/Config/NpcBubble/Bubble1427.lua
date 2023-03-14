require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.VoicePattern
local TalkModeData = NpcConfigCommon.TalkMode
local NPCConfig={}

NPCConfig.Data =
{
	NpcId = 1427, --唐娜 女 花店里暗恋迪卢克的帮工妹
	--SOLO为单人对话，TALK为多人对话
	Pattern =PatternData.SOLO,
	--BUBBLE为气泡，VOICE为语音，BOTH为都播，NO为都不播
	TalkMode=TalkModeData.BOTH,
	--当未进行单独配置时默认的气泡持续时间
	BubbleTime=5,
	--当未进行单独配置时默认的气泡随机间隔
	BubbleInterval={20,30},
	--随机选择一条进行播放
	DialogData={
		{Id=1016142700,Mode=TalkModeData.BOTH,BubbleTime=6.2,BubbleInterval={20,30}},
		{Id=1016142701,Mode=TalkModeData.BOTH,BubbleTime=3.3,BubbleInterval={20,30}},
	},
}

return NPCConfig