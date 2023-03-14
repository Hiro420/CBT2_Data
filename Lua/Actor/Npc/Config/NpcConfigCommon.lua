local NpcConfigCommon = 
{

    --全局默认气泡随机间隔
	BubbleTime=5,
	--全局默认气泡随机间隔
	BubbleInterval={5,10},
    --行为模式枚举
	GeneralPattern =
	{
		Stand = 1,
		Patrol = 2,
		Sit = 3,
        Hide = 4,
	},
    ActionPattern=
    {
        DAY_STAND = 1,
        DAY_PATROL = 2,
        DAY_SIT = 3,
        NIGHT_STAND = 4,
        NIGHT_PATROL = 5,
        NIGHT_SIT = 6,
        INSOMNIA_STAND = 7,
        INSOMNIA_PATROL = 8,
        INSOMNIA_SIT = 9,
    },
    ActionType=
    {
        WalkTo = 1,
        WalkToByRoute = 2,
        RunTo = 3,
        RunToByRoute = 4,
        Standby = 5,
        Bodylang = 6,
        Emotion = 7,
        Bubble = 8,
        Speech = 9,
        LuaAction = 10,
    },
    TriggerType=
    {
        StartDay = 1,
        StartNight = 2,
        StartRain = 3,
        Alert = 4,
    },
    --气泡模式枚举
    VoicePattern=
    {
        --单人对话
        SOLO = 1,
        --双人对话
        TALK = 2,
    },
    --气泡、语音播放模式枚举
    TalkMode=
    {
        --只播气泡
        BUBBLE = 1,
        --只播语音
        VOICE = 2,
        --都播
        BOTH = 3,
        --都不播
        NO = 4,
    },

    DailyCondition=
    {
        AllDay = 0,
        Day = 1,
        Night = 2,
    },

    QuestState=
    {
        None = 0,
        UnStarted = 1,
        UnFinished = 2,
        Finished = 3,
        Failed = 4,
    }
}


return NpcConfigCommon