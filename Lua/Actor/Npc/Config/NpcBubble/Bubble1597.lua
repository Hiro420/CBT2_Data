require('Actor/ActorCommon')
local NpcConfigCommon = require('Actor/Npc/Config/NpcConfigCommon')
local PatternData = NpcConfigCommon.VoicePattern
local TalkModeData = NpcConfigCommon.TalkMode
local NPCConfig={}

NPCConfig.Data =
{
	NpcId = 1597, --翔鹰海滩 玩耍小孩 女 小吉
	--SOLO为单人对话，TALK为多人对话
	Pattern = PatternData.TALK,
	--BUBBLE为气泡，VOICE为语音，BOTH为都播，NO为都不播
	TalkMode = TalkModeData.BOTH,
	--当未进行单独配置时默认的气泡持续时间
	BubbleTime = 5,
	--当未进行单独配置时默认的气泡随机间隔
	BubbleInterval = {30,60},
	--是否为对话发起人
	IsInitiator = 1,
	--talk结束之后的间隔
	TalkInterval = {30,60},
	--随机选择一条进行播放
	TalkData = {
		{	
			--talk编号,同一个对话务必设置相同的编号
			Index = 1,
			--设置对话目标列表，填写目标的别名。发起对话时将确认对方的对话占用状态，若对方已被占用则不会发起
			TargetList = {"Npc1598",},
			DialogData =
			{
				--当targetIndex=0时会结束对话并通知对方也结束对话，在对话的最后一句务必配置targetIndex=0
				{Id=1016159700,Mode=TalkModeData.BOTH,BubbleTime=2.1,BubbleInterval={1,2},Target="Npc1598",TargetIndex=1},
			},
			TalkInterval={30,60},
		},
		--{
		--	--talk编号
		--	Index=2,
		--	--设置对话目标列表，发起对话时将确认对方的对话占用状态，若对方已被占用则不会发起
		--	TargetList={"Npc1403",},
		--	DialogData=
		--	{
		--		--当targetIndex=0时会结束对话并通知对方也结束对话，在对话的最后一句务必配置targetIndex=0
		--		{Id=4015142199,Mode=TalkModeData.BOTH,BubbleTime=7,BubbleInterval={2,3},Target="Npc1403",TargetIndex=1},
		--		{Id=4015142199,Mode=TalkModeData.BOTH,BubbleTime=7,BubbleInterval={2,3},Target="Npc1403",TargetIndex=2},
		--	},
		--	TalkInterval={5,10},		
		--},
	},
}

return NPCConfig