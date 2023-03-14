local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("Testweapon",baseClass)

local self = UAutoLuaTestCase
self.TestFixture = "Testweapon"
self.Category = "武器装备" --自行修改分类
self.Description = "挂接原武器、觉醒武器、收武器、界面武器展示 by wxt" --挂接原武器、觉醒武器、收武器、界面武器展示、（武器技能效果?）

--脚本读excel提取id
self.wplist1 = {"11101","11201","11301","11302","11303","11304","11305","11306","11401","11402","11403","11404","11405","11406","11407","11408","11501","11502"}
self.wplist2 = {"12101","12201","12301","12302","12303","12304","12305","12306","12401","12402","12403","12404","12405","12406","12407","12408","12501","12502"}
self.wplist3 = {"13101","13201","13301","13302","13303","13401","13402","13403","13404","13504","13505"}
self.wplist4 = {"14101","14201","14301","14302","14303","14304","14305","14306","14401","14402","14403","14404","14405","14406","14407","14408","14501","14502"}
self.wplist5 = {"15101","15201","15301","15302","15303","15304","15305","15306","15401","15402","15403","15404","15405","15406","15407","15408","15501","15502"}
self.wplist6 = {["11301"]=111301,["11302"]=111302,["11303"]=111303,["11304"]=111304,["11305"]=111305,["11306"]=111306,["11401"]=111401,["11402"]=111402,["11403"]=111403,["11404"]=111404,["11405"]=111405,["11406"]=111406,["11407"]=111407,["11408"]=111408,["11501"]=111501,["11502"]=111502,["12301"]=112301,["12302"]=112302,["12303"]=112303,["12304"]=112304,["12305"]=112305,["12306"]=112306,["12401"]=112401,["12402"]=112402,["12403"]=112403,["12404"]=112404,["12405"]=112405,["12406"]=112406,["12407"]=112407,["12408"]=112408,["12501"]=112501,["12502"]=112502,["13301"]=113301,["13302"]=113302,["13303"]=113303,["13401"]=113401,["13402"]=113402,["13403"]=113403,["13404"]=113404,["13504"]=113504,["13505"]=113505,["14301"]=114301,["14302"]=114302,["14303"]=114303,["14304"]=114304,["14305"]=114305,["14306"]=114306,["14401"]=114401,["14402"]=114402,["14403"]=114403,["14404"]=114404,["14405"]=114405,["14406"]=114406,["14407"]=114407,["14408"]=114408,["14501"]=114501,["14502"]=114502,["15301"]=115301,["15302"]=115302,["15303"]=115303,["15304"]=115304,["15305"]=115305,["15306"]=115306,["15401"]=115401,["15402"]=115402,["15403"]=115403,["15404"]=115404,["15405"]=115405,["15406"]=115406,["15407"]=115407,["15408"]=115408,["15501"]=115501,["15502"]=115502,}

function checkwp(wpid)
	yield_return(self.base:RunGM("equip add "..wpid.." 1 0 0"))
	yield_return(self.base:Skill(0))
	yield_return(CS.UnityEngine.WaitForSeconds(10))
	--yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/GrpMainBtn/GrpMainToggle/GrpTopPanel/BtnSystem/Button"))
	--yield_return(self.base:MouseClick( "Canvas/Pages/CharacterPage/GrpCharacter/GrpTab/Menu/Content/BtnWeapon/Text/Touch", true ))
	--yield_return(self.base:MouseClick( "Canvas/Pages/CharacterPage/GrpCharacter/GrpAvatarInfo/Weapon/WeaponCurrent/GrpAction/BtnPromote/Content"))
	--yield_return(self.base:MouseClick( "Canvas/Pages/EquipOverviewPage/GrpEquip/BtnBack/Content/Btn"))
	--yield_return(self.base:MouseClick( "Canvas/Pages/CharacterPage/GrpCharacter/BtnReturn/Content/Btn"))
	--如果有武器技能
	if self.wplist6[wpid] ~= nil
	then
		yield_return(self.base:RunGM("equip add "..wpid.." 1 0 1"))
		yield_return(self.base:Skill(0))
		yield_return(CS.UnityEngine.WaitForSeconds(10))
		--yield_return(self.base:MouseClick( "Canvas/Pages/InLevelMainPage/GrpMainPage/GrpMainBtn/GrpMainToggle/GrpTopPanel/BtnSystem/Button"))
		--yield_return(self.base:MouseClick( "Canvas/Pages/CharacterPage/GrpCharacter/GrpTab/Menu/Content/BtnWeapon/Text/Touch", true ))
		--yield_return(self.base:MouseClick( "Canvas/Pages/CharacterPage/GrpCharacter/GrpAvatarInfo/Weapon/WeaponCurrent/GrpAction/BtnPromote/Content"))
		--yield_return(self.base:MouseClick( "Canvas/Pages/EquipOverviewPage/GrpEquip/BtnBack/Content/Btn"))
		--yield_return(self.base:MouseClick( "Canvas/Pages/CharacterPage/GrpCharacter/BtnReturn/Content/Btn"))

		--根据技能id判断效果？
	end
end

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "初始化", --初始化
	Action = UAutoCoroutine(function()
		--self.base.driver.ServerName="Master"
		--yield_return(self.base:RunGM("clear all"))
		yield_return(self.base:RunGM("player level 10"))
	end)
}
UAutoLuaTestCase.Step_2 = {
	Order = 2, --执行顺序
	Type = CaseType.MonoTest,
	Description = "单手剑", --单手剑检查
	Action = UAutoCoroutine(function()
		yield_return(self:ChangeAvatar("Ayaka"))
		for i,v in pairs(self.wplist1) do
			checkwp(v)
		end
	end)
}

UAutoLuaTestCase.Step_3 = {
	Order = 3, --执行顺序
	Type = CaseType.MonoTest,
	Description = "双手剑", --双手剑检查
	Action = UAutoCoroutine(function()
		yield_return(self:ChangeAvatar("Diluc"))
		for i,v in pairs(self.wplist2) do
			checkwp(v)
		end
	end)
}
UAutoLuaTestCase.Step_4 = {
	Order = 4, --执行顺序
	Type = CaseType.MonoTest,
	Description = "长枪", --长枪检查
	Action = UAutoCoroutine(function()
		yield_return(self:ChangeAvatar("Xiangling"))
		for i,v in pairs(self.wplist3) do
			checkwp(v)
		end
	end)
}
UAutoLuaTestCase.Step_5 = {
	Order = 5, --执行顺序
	Type = CaseType.MonoTest,
	Description = "法器", --法器检查
	Action = UAutoCoroutine(function()
		yield_return(self:ChangeAvatar("Lisa"))
		for i,v in pairs(self.wplist4) do
			checkwp(v)
		end
	end)
}
UAutoLuaTestCase.Step_6 = {
	Order = 6, --执行顺序
	Type = CaseType.MonoTest,
	Description = "弓", --弓检查
	Action = UAutoCoroutine(function()
		yield_return(self:ChangeAvatar("Anbo"))
		for i,v in pairs(self.wplist5) do
			checkwp(v)
		end
	end)
}
return self
