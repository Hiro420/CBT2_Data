
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayVideo5",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "PlayVideo5"
self.Category = "Video" --自行修改分类
self.Description = "Cs_MDAQ071_Davalin" --自行修改用例描述

function playFinish()
	print("play video finish")
end

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "Cs_MDAQ071_Davalin_Boy", --步骤描述
	Action = UAutoCoroutine(function()
		self:PlayVideo("Cs_MDAQ071_Davalin_Boy.usm", 300007, true)
		yield_return(CS.UnityEngine.WaitForSeconds(60))
    end)
}

UAutoLuaTestCase.Step_2 = {
	Order = 2, --执行顺序
	Type = CaseType.MonoTest,
	Description = "Cs_MDAQ071_Davalin_Girl", --步骤描述
	Action = UAutoCoroutine(function()
		self:PlayVideo("Cs_MDAQ071_Davalin_Girl.usm", 300007, true)
		yield_return(CS.UnityEngine.WaitForSeconds(60))
    end)
}

return self
