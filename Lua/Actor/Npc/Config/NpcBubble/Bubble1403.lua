require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.VoicePattern
local TalkModeData = NpcConfigCommon.TalkMode
local NPCConfig={}

NPCConfig.Data =
{
	NpcId = 1403, --昆恩 男 水果小贩
	--SOLO为单人对话，TALK为多人对话
	Pattern = PatternData.TALK,
	--BUBBLE为气泡，VOICE为语音，BOTH为都播，NO为都不播
	TalkMode = TalkModeData.BOTH,
	--当未进行单独配置时默认的气泡持续时间
	BubbleTime = 5,
	--当未进行单独配置时默认的气泡随机间隔
	BubbleInterval = {20,30},
	--是否为对话发起人
	IsInitiator = 1,
	--随机选择一条进行播放
	TalkInterval = {5,10},
	TalkData = {
		{	
			--talk编号
			Index = 1,
			--设置对话目标列表，发起对话时将确认对方的对话占用状态，若对方已被占用则不会发起
			TargetList = {"Npc1401",},
			DialogData = 
			{
				--当targetIndex=0时会结束对话并通知对方也结束对话，在对话的最后一句务必配置targetIndex=0
				{Id=1016140300,Mode=TalkModeData.BOTH,BubbleTime=2.3,BubbleInterval={1,2},Target="Npc1401",TargetIndex=1},
				{Id=1016140301,Mode=TalkModeData.BOTH,BubbleTime=2.8,BubbleInterval={1,2},Target="Npc1401",TargetIndex=2},
				{Id=1016140302,Mode=TalkModeData.BOTH,BubbleTime=2.6,BubbleInterval={1,2},Target="Npc1401",TargetIndex=0}
			},
			TalkInterval={20,30},
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