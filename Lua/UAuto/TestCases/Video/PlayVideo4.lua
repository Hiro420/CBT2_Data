
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayVideo4",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "PlayVideo4"
self.Category = "Video" --自行修改分类
self.Description = "MDAQ041" --自行修改用例描述

function playFinish()
	print("play video finish")
end

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "MDAQ041", --步骤描述
	Action = UAutoCoroutine(function()
		self:PlayVideo("MDAQ041.usm", 300001, true, playFinish)
		yield_return(CS.UnityEngine.WaitForSeconds(60))	
    end)
}

return self
