--************************************************************************
--  工具自动生成的类型定义代码(UTF-8 With BOM)，请勿编辑！
--  File Name:    QuestExcelConfig.lua
--  Purpose:      lua类型定义文件
--  Copyright (c) 2017-2100 miHoYo.com, Inc. All rights reserved.
--************************************************************************

--任务类型
QuestType =
{
	AQ = 0, -- Archon Quest 魔神任务
	FQ = 1, -- Fractions Quest 帮派任务
	LQ = 2, -- Legend Quest 传说任务
	EQ = 3, -- Event Quest 活动任务
	DQ = 4, -- Daily Quest 日常任务
	IQ = 5, -- Indescribable Quest 不可描述的任务
	VQ = 6, -- Venture Quest 冒险手册上的调查任务, 不显示在任务面板
}

--任务状态
QuestState =
{
	QUEST_STATE_NONE = 0, -- 不能领取
	QUEST_STATE_UNSTARTED = 1, -- 未开始
	QUEST_STATE_UNFINISHED = 2, -- 未完成
	QUEST_STATE_FINISHED = 3, -- 已完成
	QUEST_STATE_FAILED = 4, -- 已失败
}

--显示状态
QuestShowType =
{
	QUEST_SHOW = 0, -- 显示
	QUEST_HIDDEN = 1, -- 隐藏
}

--任务条件类型
QuestCondType =
{
	QUEST_COND_NONE = 0, -- 未定义
	QUEST_COND_STATE_EQUAL = 1, -- 任务状态等于
	QUEST_COND_STATE_NOT_EQUAL = 2, -- 任务状态不等于
	QUEST_COND_PACK_HAVE_ITEM = 3, -- 背包有道具
	QUEST_COND_AVATAR_ELEMENT_EQUAL = 4, -- 角色元素等于
	QUEST_COND_AVATAR_ELEMENT_NOT_EQUAL = 5, -- 角色元素不等于
	QUEST_COND_AVATAR_CAN_CHANGE_ELEMENT = 6, -- 角色是否可以改变元素
	QUEST_COND_CITY_LEVEL_EQUAL_GREATER = 7, -- 城市等级大于或等于
	QUEST_COND_ITEM_NUM_LESS_THAN = 8, -- 背包道具数量小于填写的数量时
	QUEST_COND_DAILY_TASK_START = 9, -- 固定事件开始
	QUEST_COND_OPEN_STATE_EQUAL = 10, -- OpenState等于某个值
	QUEST_COND_DAILY_TASK_OPEN = 11, -- 固定事件系统已开启
	QUEST_COND_DAILY_TASK_REWARD_CAN_GET = 12, -- 固定事件可领奖
	QUEST_COND_DAILY_TASK_REWARD_RECEIVED = 13, -- 固定事件已领奖
	QUEST_COND_PLAYER_LEVEL_REWARD_CAN_GET = 14, -- 冒险等阶奖励可领取
	QUEST_COND_EXPLORATION_REWARD_CAN_GET = 15, -- 挂机奖励可领取(only client)
	QUEST_COND_IS_WORLD_OWNER = 16, -- 是否为主机
	QUEST_COND_PLAYER_LEVEL_EQUAL_GREATER = 17, -- 冒险等阶大于或等于
	QUEST_COND_SCENE_AREA_UNLOCKED = 18, -- 一级区域已解锁
	QUEST_COND_ITEM_GIVING_ACTIVED = 19, -- 交付已激活
	QUEST_COND_ITEM_GIVING_FINISHED = 20, -- 交付已完成
	QUEST_COND_IS_DAYTIME = 21, -- 是否为白天
	QUEST_COND_CURRENT_AVATAR = 22, -- 当前角色ID
	QUEST_COND_CURRENT_AREA = 23, -- 当前区域ID
	QUEST_COND_QUEST_VAR_EQUAL = 24, -- 任务全局变量等于
	QUEST_COND_QUEST_VAR_GREATER = 25, -- 任务全局变量大于
	QUEST_COND_QUEST_VAR_LESS = 26, -- 任务全局变量小于
	QUEST_COND_FORGE_HAVE_FINISH = 27, -- 锻造已完成(only client)
	QUEST_COND_DAILY_TASK_IN_PROGRESS = 28, -- 固定事件已领取
	QUEST_COND_DAILY_TASK_FINISHED = 29, -- 固定事件已完成
}

--任务内容类型
QuestContentType =
{
	QUEST_CONTENT_NONE = 0, -- 未定义
	QUEST_CONTENT_KILL_MONSTER = 1, -- 杀死怪物
	QUEST_CONTENT_COMPLETE_TALK = 2, -- 完成对话
	QUEST_CONTENT_MONSTER_DIE = 3, -- 自己场景怪物死亡
	QUEST_CONTENT_FINISH_PLOT = 4, -- 完成剧情(客户端判断)
	QUEST_CONTENT_OBTAIN_ITEM = 5, -- 获得道具
	QUEST_CONTENT_TRIGGER_FIRE = 6, -- 触发器触发
	QUEST_CONTENT_CLEAR_GROUP_MONSTER = 7, -- 清空怪物营地
	QUEST_CONTENT_NOT_FINISH_PLOT = 8, -- 未完成剧情(客户端判断)
	QUEST_CONTENT_ENTER_DUNGEON = 9, -- 进入副本
	QUEST_CONTENT_ENTER_MY_WORLD = 10, -- 进入我的大世界
	QUEST_CONTENT_FINISH_DUNGEON = 11, -- 完成地下城
	QUEST_CONTENT_DESTROY_GADGET = 12, -- 摧毁物件
	QUEST_CONTENT_OBTAIN_MATERIAL_WITH_SUBTYPE = 13, -- 获得指定类型材料
	QUEST_CONTENT_NICK_NAME = 14, -- 任意一次取名后
	QUEST_CONTENT_WORKTOP_SELECT = 15, -- 和操作台交互
	QUEST_CONTENT_SEAL_BATTLE_RESULT = 16, -- 封印战斗结束
	QUEST_CONTENT_ENTER_ROOM = 17, -- 进入室内
	QUEST_CONTENT_GAME_TIME_TICK = 18, -- 时间改变
	QUEST_CONTENT_FAIL_DUNGEON = 19, -- 地下城失败
	QUEST_CONTENT_LUA_NOTIFY = 20, -- LUA脚本通知事件进度
	QUEST_CONTENT_TEAM_DEAD = 21, -- 整队死亡
	QUEST_CONTENT_COMPLETE_ANY_TALK = 22, -- 完成任意对话
	QUEST_CONTENT_UNLOCK_TRANS_POINT = 23, -- 解锁传送点
	QUEST_CONTENT_ADD_QUEST_PROGRESS = 24, -- 增加特定QuestContent的进度
	QUEST_CONTENT_INTERACT_GADGET = 25, -- 和特定物件交互
	QUEST_CONTENT_DAILY_TASK_COMP_FINISH = 26, -- 固定事件系统完成积分奖励进度
	QUEST_CONTENT_FINISH_ITEM_GIVING = 27, -- 完成交付
	QUEST_CONTENT_SKILL = 107, -- 使用技能
	QUEST_CONTENT_CITY_LEVEL_UP = 109, -- 升级城市,可回溯
	QUEST_CONTENT_PATTERN_GROUP_CLEAR_MONSTER = 110, -- 只能是同一个父任务创建的PatternGroup
	QUEST_CONTENT_ITEM_LESS_THAN = 111, -- 背包道具小于指定数量
	QUEST_CONTENT_PLAYER_LEVEL_UP = 112, -- 达到冒险等阶,可回溯
	QUEST_CONTENT_DUNGEON_OPEN_STATUE = 113, -- 地城领奖台领奖
	QUEST_CONTENT_UNLOCK_AREA = 114, -- 解锁区域(女神像)
	QUEST_CONTENT_OPEN_CHEST_WITH_GADGET_ID = 115, -- 打开某场景内特定GadgetID宝箱
	QUEST_CONTENT_UNLOCK_TRANS_POINT_WITH_TYPE = 116, -- 解锁特定类型传送点
	QUEST_CONTENT_FINISH_DAILY_DUNGEON = 117, -- 完成日常地城次数
	QUEST_CONTENT_FINISH_WEEKLY_DUNGEON = 118, -- 完成周常地城次数
	QUEST_CONTENT_QUEST_VAR_EQUAL = 119, -- 任务全局变量等于
	QUEST_CONTENT_QUEST_VAR_GREATER = 120, -- 任务全局变量大于
	QUEST_CONTENT_QUEST_VAR_LESS = 121, -- 任务全局变量小于
}

--任务指引类型
QuestGuideType =
{
	QUEST_GUIDE_NONE = 0, -- 未定义
	QUEST_GUIDE_LOCATION = 1, -- 地点
	QUEST_GUIDE_NPC = 2, -- NPC
}

--场景内指引类型
ShowQuestGuideType =
{
	QUEST_GUIDE_ITEM_ENABLE = 0, -- 是
	QUEST_GUIDE_ITEM_DISABLE = 1, -- 不启用
	QUEST_GUIDE_ITEM_MOVE_HIDE = 2, -- 移动中隐藏
}

--任务指引自动开启或关闭
QuestGuideAuto =
{
	QUEST_GUIDE_AUTO_NONE = 0, -- 未定义
	QUEST_GUIDE_AUTO_ENABLE = 1, -- 自动开启
	QUEST_GUIDE_AUTO_DISABLE = 2, -- 自动关闭
}

--任务指引样式
QuestGuideStyle =
{
	QUEST_GUIDE_STYLE_NONE = 0, -- 未定义
	QUEST_GUIDE_STYLE_START = 1, -- 任务开始指引
	QUEST_GUIDE_STYLE_TARGET = 2, -- 任务中指引
	QUEST_GUIDE_STYLE_FINISH = 3, -- 任务完成指引
	QUEST_GUIDE_STYLE_POINT = 4, -- 任务点指引
}

--任务指引层级
QuestGuideLayer =
{
	QUEST_GUIDE_LAYER_NONE = 0, -- 未定义
	QUEST_GUIDE_LAYER_UI = 1, -- UI层级
	QUEST_GUIDE_LAYER_SCENE = 2, -- 场景层级
}

--任务执行类型
QuestExecType =
{
	QUEST_EXEC_NONE = 0, -- 未定义
	QUEST_EXEC_DEL_PACK_ITEM = 1, -- 删除背包中道具
	QUEST_EXEC_UNLOCK_POINT = 2, -- 解锁传送点
	QUEST_EXEC_UNLOCK_AREA = 3, -- 解锁区域
	QUEST_EXEC_UNLOCK_FORCE = 4, -- 解锁力场
	QUEST_EXEC_LOCK_FORCE = 5, -- 锁住力场
	QUEST_EXEC_CHANGE_AVATAR_ELEMET = 6, -- 改变角色元素
	QUEST_EXEC_REFRESH_GROUP_MONSTER = 7, -- 刷新怪物营地
	QUEST_EXEC_SET_IS_FLYABLE = 8, -- 设置飞行能力
	QUEST_EXEC_SET_IS_WEATHER_LOCKED = 9, -- 设置天气锁定状态
	QUEST_EXEC_SET_IS_GAME_TIME_LOCKED = 10, -- 设置游戏时间锁定状态
	QUEST_EXEC_SET_IS_TRANSFERABLE = 11, -- 设置传送能力
	QUEST_EXEC_GRANT_TRIAL_AVATAR = 12, -- 发放试用角色
	QUEST_EXEC_OPEN_BORED = 13, -- 开放无聊度系统
	QUEST_EXEC_ROLLBACK_QUEST = 14, -- 回滚任务
	QUEST_EXEC_NOTIFY_GROUP_LUA = 15, -- 通知group脚本
	QUEST_EXEC_SET_OPEN_STATE = 16, -- 设置开启状态
	QUEST_EXEC_LOCK_POINT = 17, -- 锁点
	QUEST_EXEC_DEL_PACK_ITEM_BATCH = 18, -- 批量删除背包中道具
	QUEST_EXEC_REFRESH_GROUP_SUITE = 19, -- 刷新指定Group指定的Suite
	QUEST_EXEC_REMOVE_TRIAL_AVATAR = 20, -- 删除试用角色
	QUEST_EXEC_SET_GAME_TIME = 21, -- 设置游戏时间
	QUEST_EXEC_SET_WEATHER_GADGET = 22, -- 设置天气物件是否有效
	QUEST_EXEC_ADD_QUEST_PROGRESS = 23, -- 增加其他任务的进度
	QUEST_EXEC_NOTIFY_DAILY_TASK = 24, -- 通知每日事件系统
	QUEST_EXEC_CREATE_PATTERN_GROUP = 25, -- 在指定位置实例化指定的pattern
	QUEST_EXEC_REMOVE_PATTERN_GROUP = 26, -- 删除父任务创建的PatternGroup
	QUEST_EXEC_REFRESH_GROUP_SUITE_RANDOM = 27, -- 随机刷新GroupSuite, 在后几个参数内随机
	QUEST_EXEC_ACTIVE_ITEM_GIVING = 28, -- 激活交付
	QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = 29, -- 删除全部指定道具，与1的区别主要是不用自己填数量
	QUEST_EXEC_ROLLBACK_PARENT_QUEST = 30, -- 强制回滚当前父任务的所有子任务，不管有没有存档点
	QUEST_EXEC_LOCK_AVATAR_TEAM = 31, -- 强制锁定角色队伍, 下线自然恢复
	QUEST_EXEC_UNLOCK_AVATAR_TEAM = 32, -- 解锁角色队伍
	QUEST_EXEC_UPDATE_QUEST_VAR = 33, -- 修改任务全局变量
	QUEST_EXEC_UPDATE_PARENT_QUEST_REWARD_INDEX = 34, -- 修改父任务奖励索引
}

--对话触发方式
TalkBeginWay =
{
	TALK_BEGIN_NONE = 0, -- 未定义
	TALK_BEGIN_AUTO = 1, -- 自动触发
	TALK_BEGIN_MANUAL = 2, -- 手动触发
}

--对话主角处理类型
TalkHeroType =
{
	TALK_HERO_LOCAL = 0, -- 当前角色
	TALK_HERO_MAIN = 1, -- 强制主角
}

--对话角色类型
TalkRoleType =
{
	TALK_ROLE_NONE = 0, -- 未定义
	TALK_ROLE_NPC = 1, -- NPC
	TALK_ROLE_PLAYER = 2, -- 玩家
}

--对话显示类型
TalkShowType =
{
	TALK_SHOW_DEFAULT = 0, -- 默认：单句显示多局选择
	TALK_SHOW_FORCE_SELECT = 1, -- 强制成为选项
}

--随机任务过滤器类型
RandomQuestFilterType =
{
	RQ_FILTER_NONE = 0, -- 无
	RQ_FILTER_PLAYER_POS_RING = 1, -- 玩家中心环形，参数[内环半径，外环半径]
	RQ_FILTER_NPC = 2, -- 过滤已经被占用的NPC, 无参数
	RQ_FILTER_PLAYER_LEVEL = 3, -- 玩家冒险等阶，无参数(根据factor配的形如20,80上下范围过滤)
}

