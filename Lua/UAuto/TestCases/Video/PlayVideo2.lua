
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayVideo2",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "PlayVideo2"
self.Category = "Video" --自行修改分类
self.Description = "Cs_MDAQ018_MDCityShow" --自行修改用例描述

function playFinish()
	print("play video finish")
end

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "Cs_MDAQ018_MDCityShow", --步骤描述
	Action = UAutoCoroutine(function()
		self:PlayVideo("Cs_MDAQ018_MDCityShow.usm", nil, false, playFinish)
		yield_return(CS.UnityEngine.WaitForSeconds(60))
	end)
}

return self
