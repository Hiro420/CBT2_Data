
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayVideo1",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "PlayVideo1"
self.Category = "Video" --自行修改分类
self.Description = "Cs_MDAQ019_DragonInCity" --自行修改用例描述

function playFinish()
	print("play video finish")
end

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "Cs_MDAQ019_DragonInCity_Boy", --步骤描述
	Action = UAutoCoroutine(function()
		self:PlayVideo("Cs_MDAQ019_DragonInCity_Boy.usm", 300006, true, playFinish)
		yield_return(CS.UnityEngine.WaitForSeconds(60))

	end)
}

UAutoLuaTestCase.Step_2 = {
	Order = 2, --执行顺序
	Type = CaseType.MonoTest,
	Description = "Cs_MDAQ019_DragonInCity_Girl", --步骤描述
	Action = UAutoCoroutine(function()
		self:PlayVideo("Cs_MDAQ019_DragonInCity_Girl.usm", 300006, true, playFinish)
		yield_return(CS.UnityEngine.WaitForSeconds(60))
	end)
}

return self
