CutSceneData = {}

--Cutscene类型
local CutsceneType =
{
	NONE = 0, -- 无
	TIME_LINE_ASSET = 1, -- 基于Timeline Asset的Cutscene
	TIME_LINE_PREFAB = 2, -- 基于Timeline Prefab的Cutscene
	TIME_LINE_SCENE = 3, -- 基于Timeline Scene的Cutscene
	Other = 4, -- 占位
}

--Cutscene初始点类型
local CutsceneInitPosType =
{
	FREE = 0, -- 相对预制本身的偏移
	RELATIVE_TO_LOCAL_AVATAR = 1, -- 先挪到主角位置，再做偏移
	Other = 2, -- 占位
}


CutSceneData.Detail = {
    -- 主角睁眼
    Cutscene1 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        canSkip = true,
        castListPath = "Cs_CastList_Q351",
        resPath = "ART/Cutscene/Cs_Opening_CutScene1_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        keepCamera = true,
        syncLoad = true,
        fadeInDuration = 0.0,
        modifyLastPoseOffset = true
    },
    -- 鸟瞰世界
    Cutscene2 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        castListPath = "Cs_CastList_Paimon",
        resPath = "ART/Cutscene/Cs_BigWorldShow_Cutscene",
        canSkip = false,
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        keepCamera = true
    },
    -- 登女神岛
    Cutscene3 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        roleSheetPath = "",
        castListPath = "Cs_CastList_Paimon",
        resPath = "ART/Cutscene/Cs_MDAQ010_UnlockSkill_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        fadeOutDuration = 2.0
    },
    -- 森林遇龙
    Cutscene4 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        canSkip = true,
        castListPath = "Cs_CastList_Q355",
        resPath = "ART/Cutscene/Cs_MDAQ013_DragonInYJLin_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        keepCamera = true
    },
    --安伯入队g

    Cutscene5 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        roleSheetPath = "",
        castListPath = "Cs_CastList_Q354",
        canSkip = false,
        resPath = "ART/Cutscene/Cs_AM_FirstArrive_CutScene2_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {x = 0, y = 0, z = 0}
    },
    --初入蒙德

    Cutscene6 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        canSkip = true,
        --castListPath = "Cs_CastList_Q354",
        roleSheetPath = "",
        resPath = "ART/Cutscene/Cs_MDAQ018_MDCityShow_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {x = 0, y = 0, z = 0}
    },
    -- 风龙来袭
    Cutscene7 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        canSkip = true,
        castListPath = "Cs_CastList_Q354",
        roleSheetPath = "",
        resPath = "ART/Cutscene/Cs_DragonInMDCity_CutScene_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {x = 0, y = 0, z = 0}
    },
    -- 风龙boss后1
    Cutscene8_1 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        canSkip = true,
        castListPath = "Cs_CastList_Q358",
        resPath = "ART/Cutscene/Cs_MDAQ022_KaeyaArrived_Part1_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        keepCamera = true,
        fadeInDuration = 0
    },
    -- 风龙boss后2
    Cutscene8_2 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        canSkip = true,
        castListPath = "Cs_CastList_Q354",
        resPath = "ART/Cutscene/Cs_MDAQ022_KaeyaArrived_Part2_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {x = 0, y = 0, z = 0},
        fadeInDuration = 0
    },
    --凯亚登场

    Cutscene9 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        canSkip = true,
        castListPath = "Cs_CastList_Q307",
        resPath = "ART/Cutscene/Cs_MDAQ032_KaeyaTuts_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        keepCamera = false,
        fadeInDuration = 0.0,
        fadeOutDuration = 0.1,
        syncLoad = true
    },
    Cutscene10 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        canSkip = true,
        castListPath = "Cs_CastList_Q358",
        resPath = "ART/Cutscene/Cs_MDAQ025_QinLisa_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        keepCamera = false,
        syncLoad = true,
        fadeInDuration = 0.0
    },
    --天气恢复
    Cutscene11 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        canSkip = true,
        castListPath = "Cs_CastList_Paimon",
        resPath = "ART/Cutscene/Cs_MDAQ000_ChangeWeather_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        fadeInDuration = 2.0
    },
    --

    Cutscene12 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        canSkip = true,
        castListPath = "Cs_CastList_Q372",
        resPath = "ART/Cutscene/Cs_MDAQ040_VentiShow_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        -- keepCamera = true,
        entityBan = "37201_Dialog",
        fadeInDuration = 0.0
    },
    --净化龙泪
    Cutscene13 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        canSkip = true,
        castListPath = "Cs_CastList_Q372",
        resPath = "ART/Cutscene/Cs_MDAQ41_CleanTear_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        keepCamera = true,
        entityBan = "37201_Dialog",
        fadeInDuration = 0.0
    },
    --地下偷琴
    Cutscene14 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        canSkip = true,
        castListPath = "Cs_CastList_Q375",
        resPath = "ART/Cutscene/Cs_MDAQ48_Runaway01_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        keepCamera = true,
        syncLoad = true,
        fadeOutDuration = 1.5
    },
    --温蒂逃跑
    Cutscene15 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        canSkip = true,
        castListPath = "Cs_CastList_Q375",
        resPath = "ART/Cutscene/Cs_MDAQ48_Runaway02_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        keepCamera = false,
        syncLoad = true,
        fadeInDuration = 0.0,
        fadeOutDuration = 1.5
    },
    --摘星之崖
    Cutscene16 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        canSkip = true,
        castListPath = "Cs_CastList_Q384",
        resPath = "ART/Cutscene/Cs_MDAQ063_ZhaiXingYa_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        keepCamera = false
    },
    --哥妹出场
    Cutscene17 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        canSkip = true,
        castListPath = "Cs_CastList_Q384",
        resPath = "ART/Cutscene/Cs_MDAQ063_ZhaiXingYaSideB_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        keepCamera = false
    },
    --迪卢克后门
    Cutscene19 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        canSkip = true,
        --castListPath = "Cs_CastList_Q351",
        resPath = "ART/Cutscene/Cs_DLCLQ001_DLCbattle_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        keepCamera = false,
        syncLoad = true,
        fadeInDuration = 0.0
    },
    --迪卢克前门
    Cutscene20 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        canSkip = true,
        --castListPath = "Cs_CastList_Q351",
        resPath = "ART/Cutscene/Cs_DLCLQ003_DLCbattle02_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        keepCamera = false,
        syncLoad = true,
        fadeInDuration = 0.0
    },
    --琴个人线

    Cutscene21 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        canSkip = true,
        castListPath = "Cs_CastList_Q490",
        resPath = "ART/Cutscene/Cs_KYLQ005_QinPraying_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        keepCamera = true,
        syncLoad = true,
        fadeInDuration = 0.0
    },
    --雷泽史莱姆
    Cutscene22 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        canSkip = true,
        castListPath = "Cs_CastList_Q451",
        resPath = "ART/Cutscene/CutScene_RZLQ001_RzArrived_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        keepCamera = true,
        syncLoad = true,
        fadeInDuration = 0.5,
        fadeOutDuration = 1.5
    },
    --雷泽登场
    Cutscene23 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        canSkip = true,
        castListPath = "Cs_CastList_Q454",
        resPath = "ART/Cutscene/Cs_RZLQ004_Rzwolf_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        keepCamera = true,
        syncLoad = true,
        fadeInDuration = 0.5,
        fadeOutDuration = 1.5
    },
    -- 芭芭拉任务
    Cutscene24 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        canSkip = true,
        --castListPath = "Cs_CastList_Q454",
        resPath = "ART/Cutscene/Cs_BabaraQuest_CutScene1_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        keepCamera = true,
        syncLoad = true,
        fadeInDuration = 0.5,
        fadeOutDuration = 1.5
    },
    --女神像
    Cutscene25 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        canSkip = true,
        --castListPath = "Cs_CastList_Q454",
        resPath = "Cs_MDAQ010_UnlockSkill_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        keepCamera = true,
        syncLoad = true,
        fadeInDuration = 0.5,
        fadeOutDuration = 1.5
    },
    --魈登场
    Cutscene26 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        canSkip = true,
        castListPath = "Cs_CastList_Q1003",
        resPath = "ART/Cutscene/Cs_LYAQ001_XiaoArrived_Convert",
        startPosType = CutsceneInitPosType.FREE,
        startOffset = {0, 0, 0},
        keepCamera = false
    }
}
