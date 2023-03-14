
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("PlayVideo3",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "PlayVideo3"
self.Category = "Video" --自行修改分类
self.Description = "OpeningSequence_Rough_Girl_batch" --自行修改用例描述

function playFinish()
	print("play video finish")
end

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "OpeningSequence_Rough_Girl_batch", --步骤描述
	Action = UAutoCoroutine(function()
		self:PlayVideo("OpeningSequence_Rough_Girl_batch.usm", 300004, true, playFinish)
		yield_return(CS.UnityEngine.WaitForSeconds(60))
	end)
}

return self
