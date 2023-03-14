require("UAuto/TestCases/TA/Config/FixedPoint")
local baseClass = require('UAuto/TestCases/TA/TABase')
local UAutoLuaTestCase = class("TACb2LiyueFixPoint",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "TACb2LiyueFixPoint"
self.Category = "TA测试_正式_3" --自行修改分类
self.Description = "TA_定点测试:璃月CB2Test" --自行修改用例描述

UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "初始化", --步骤描述
	Action = UAutoCoroutine(function()
        yield_return(self:TAinit())
    end)
}

UAutoLuaTestCase.Step_2 = {
	Order = 2, --执行顺序
	Type = CaseType.MonoTest,
	Description = "开始定点测试", --步骤描述
	Action = UAutoCoroutine(function()

    --开启性能采集
    yield_return(self:TAStartRecord("FixedPoints", "TACb2LiyueFixPoint", false, 1))
    local height = ' 800 '
    local yOffset = 5
    local playerTable = FixedPoint.FPT_liyue
    yield_return(self:LoopFixedPoints(playerTable, height, yOffset))

end)
}



UAutoLuaTestCase.Step_3 = {
    Order = 3, --执行顺序
    Type = CaseType.MonoTest,
    Description = "上传数据", --步骤描述
    Action = UAutoCoroutine(function()
        
        yield_return(self:TAUploadDB())
		
	end)
}
return self