--baseClass提供基础接口
local baseClass = require('UAuto/TestCases/Number/NumberBase')
--所有testcase继承baseClass
local UAutoLuaTestCase = class("AvatarTalent",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "AvatarTalent"
self.Category = "数值"
self.Description="角色数值型天赋验证"

function self:CheckTalent(avatar, talentIDList)

	yield_return(self:ChangeAvatar(avatar,true))
	local baseHP = self.base:GetFloatPropertyValue("maxHP")
	self.base:SetAvatarHpBase(baseHP)

	for i = 1, #talentIDList do 
		local id = talentIDList[i]
		local cmd = "talent unlock "..tostring(id)
		local combatPropertyBefore = self.base:GetEntityCombatProperty()
		yield_return(self.base:RunGM(cmd))
		yield_return(self.base:CheckAvatarTalent(combatPropertyBefore,id,0))
	end
	
end


self.AnboTalentCheck = {
	Order = 1,
	Type = CaseType.MonoTest,
	Description="安柏天赋验证",
	Action = UAutoCoroutine(function()
		--yield_return(self.base:RunGM("clear all",false))
		yield_return(self.base:RunGM("player level 20"))
		local avatar="Anbo"
		local TalentIds={211}
		self:CheckTalent(avatar, TalentIds)
	end)
}


self.LisaTalentCheck = {
	Order = 2,
	Type = CaseType.MonoTest,
	Description="丽莎天赋验证",
	Action = UAutoCoroutine(function()
		local avatar="Lisa"
		local TalentIds={41}
		self:CheckTalent(avatar, TalentIds)
	end)
}

self.KeayaTalentCheck = {
	Order = 3,
	Type = CaseType.MonoTest,
	Description="凯亚天赋验证",
	Action = UAutoCoroutine(function()
		local avatar="Kaeya"
		local TalentIds={151}
		self:CheckTalent(avatar, TalentIds)
	end)
}

self.QinTalentCheck = {
	Order = 4,
	Type = CaseType.MonoTest,
	Description="琴天赋验证",
	Action = UAutoCoroutine(function()
		local avatar="Qin"
		local TalentIds={31}
		self:CheckTalent(avatar, TalentIds)
	end)
}

-- self.DilucTalentCheck = {
-- 	Order = 5,
-- 	Type = CaseType.MonoTest,
-- 	Description="迪卢克天赋验证",
-- 	Action = UAutoCoroutine(function()
-- 		local avatar="Diluc"
-- 		local TalentIds={1400,1401,1402,1403,1420,1421,1422}
-- 		self:CheckTalent(avatar, TalentIds)
-- 	end)
-- }



self.PlayerGirlTalentCheck = {
	Order = 6,
	Type = CaseType.MonoTest,
	Description="女主天赋验证",
	Action = UAutoCoroutine(function()
		local avatar="PlayerGirl"
		yield_return(self:ChangeAvatar(avatar,true))
		yield_return(CS.UnityEngine.WaitForSeconds(1))
		yield_return(self.base:RunGM("skill depot 704"))
		local TalentIds={73}
		yield_return(CS.UnityEngine.WaitForSeconds(1))
		self:CheckTalent(avatar, TalentIds)
	end)
}



self.BarbaraTalentCheck = {
	Order = 7,
	Type = CaseType.MonoTest,
	Description="芭芭拉天赋验证",
	Action = UAutoCoroutine(function()
		local avatar="Barbara"
		local TalentIds={141}
		self:CheckTalent(avatar, TalentIds)
	end)
}


self.RazorTalentCheck = {
	Order = 8,
	Type = CaseType.MonoTest,
	Description="雷泽天赋验证",
	Action = UAutoCoroutine(function()
		local avatar="Razor"
		local TalentIds={201}
		self:CheckTalent(avatar, TalentIds)
	end)
}

self.VentiTalentCheck = {
	Order = 9,
	Type = CaseType.MonoTest,
	Description="温迪天赋验证",
	Action = UAutoCoroutine(function()
		local avatar="Venti"
		local TalentIds={221}
		self:CheckTalent(avatar, TalentIds)
	end)
}


self.XianglingTalentCheck = {
	Order = 10,
	Type = CaseType.MonoTest,
	Description="香菱天赋验证",
	Action = UAutoCoroutine(function()
		local avatar="Xiangling"
		local TalentIds={231}
		self:CheckTalent(avatar, TalentIds)
	end)
}



return self