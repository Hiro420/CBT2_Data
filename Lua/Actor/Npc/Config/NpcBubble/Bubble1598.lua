require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.VoicePattern
local TalkModeData = NpcConfigCommon.TalkMode
local NPCConfig={}

NPCConfig.Data =
{
	NpcId = 1598, --翔鹰海滩 玩耍小孩 男 小威
	--SOLO为单人对话，TALK为多人对话
	Pattern = PatternData.TALK,
	--BUBBLE为气泡，VOICE为语音，BOTH为都播，NO为都不播
	TalkMode = TalkModeData.BOTH,
	--当未进行单独配置时默认的气泡持续时间
	BubbleTime = 5,
	--当未进行单独配置时默认的气泡随机间隔
	BubbleInterval = {30,60},
	--是否为对话发起人
	IsInitiator = 0,
	--随机选择一条进行播放
	TalkInterval = {30,60},
	TalkData = {
		{	
			--talk编号
			Index = 1,
			--设置对话目标列表，发起对话时将确认对方的对话占用状态，若对方已被占用则不会发起
			TargetList = {"Npc1597",},
			DialogData = 
			{
				--当targetIndex=0时会结束对话并通知对方也结束对话，在对话的最后一句务必配置targetIndex=0
				{Id=1016159800,Mode=TalkModeData.BOTH,BubbleTime=2.3,BubbleInterval={1,2},Target="Npc1597",TargetIndex=0},
			},
			TalkInterval={30,60},
		},
		--{
		--	--talk编号
		--	Index=2,
		--	--设置对话目标列表，发起对话时将确认对方的对话占用状态，若对方已被占用则不会发起
		--	TargetList={"Npc1401",},
		--	DialogData=
		--	{
		--		--当targetIndex=0时会结束对话并通知对方也结束对话，在对话的最后一句务必配置targetIndex=0
		--		{Id=4015142199,Mode=TalkModeData.BOTH,BubbleTime=7,BubbleInterval={1,2},Target="Npc1401",TargetIndex=2},
		--		{Id=4015142199,Mode=TalkModeData.BOTH,BubbleTime=7,BubbleInterval={1,2},Target="Npc1401",TargetIndex=0},
		--	},
		--	TalkInterval={5,10},		
		--},
	},
}

return NPCConfig