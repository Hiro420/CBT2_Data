--************************************************************************
--  工具自动生成的类型定义代码(UTF-8 With BOM)，请勿编辑！
--  File Name:    AvatarTalentExcelConfig.lua
--  Purpose:      lua类型定义文件
--  Copyright (c) 2017-2100 miHoYo.com, Inc. All rights reserved.
--************************************************************************

--天赋点类型
TalentPointType =
{
	TALENT_POINT_NONE = 0, -- 未定义
	TALENT_POINT_SMALL = 1, -- 小天赋点
	TALENT_POINT_BIG = 2, -- 大天赋点
}

--筛选条件
TalentFilterCond =
{
	TALENT_FILTER_NONE = 0, -- 未定义
	TALENT_FILTER_FIRE_AVATAR = 1, -- 火元素角色
	TALENT_FILTER_ELEC_AVATAR = 2, -- 电元素角色
	TALENT_FILTER_WATER_AVATAR = 3, -- 水元素角色
	TALENT_FILTER_GRASS_AVATAR = 4, -- 草元素角色
	TALENT_FILTER_WIND_AVATAR = 5, -- 风元素角色
	TALENT_FILTER_ICE_AVATAR = 6, -- 冰元素角色
	TALENT_FILTER_ROCK_AVATAR = 7, -- 岩元素角色
}

--得意技类型
ProudSkillType =
{
	PROUD_SKILL_NONE = 0, -- 未定义
	PROUD_SKILL_CORE = 1, -- 核心得意技
	PROUD_SKILL_INHERENT = 2, -- 固有得意技
	PROUD_SKILL_ACTIVE = 3, -- 主动技能用到的得意技
}

--生效类型
EffectTargetType =
{
	EFFECT_TARGET_NONE = 0, -- 未定义
	EFFECT_TARGET_SOLO = 1, -- 选择生效角色
	EFFECT_TARGET_TEAM = 2, -- 对全队生效
}

--得意技生活效果类型
ProudLifeEffectType =
{
	PROUD_EFFECT_NONE = 0, -- 未定义
	PROUD_EFFECT_COMBINE_RETURN_MATERIAL = 1, -- 参数：发生概率（万分比）、[合成类型]、返还比例（小数）
	PROUD_EFFECT_COMBINE_MULTIPLY_OUTPUT = 2, -- 参数：发生概率（万分比）、[合成类型]、产出几倍
	PROUD_EFFECT_COMBINE_EXTRA_OUTPUT = 3, -- 参数：发生概率（万分比）、[合成类型]、道具ID、道具数量
	PROUD_EFFECT_COMBINE_ADD_EXTRA_PROB = 4, -- 参数：[合成类型]、增加的概率（万分比）
	PROUD_EFFECT_COOK_EXTRA_PROFICIENCY = 101, -- 参数：额外熟练度，[料理类型]，[烹饪类型]，生效类型（个人或队伍）
	PROUD_EFFECT_COOK_WIDEN_JUDGE_AREA = 102, -- 参数：扩大的倍率，[料理类型]，[烹饪类型]，生效类型（个人或队伍）
	PROUD_EFFECT_COOK_ADD_BONUS_PROB = 103, -- 参数：表示触发完美料理时，获得专属料理概率提升，[料理类型]，[烹饪类型]，生效类型（个人或队伍）
	PROUD_EFFECT_FORGE_REDUCE_TIME = 203, -- 参数：[锻造类型]，减少比例（小数）
	PROUD_EFFECT_FORGE_ADD_EXTRA_PROB = 204, -- 参数：[锻造类型]，增加的权重（万分比）
}

