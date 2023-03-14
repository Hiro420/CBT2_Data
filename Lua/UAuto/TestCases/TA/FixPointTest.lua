-- require("UAuto/TestCases/TA/Config/FixedPoint")
local baseClass = require('UAuto/TestCases/TA/TABase')
local UAutoLuaTestCase = class("FixPointTest",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "FixPointTest"
self.Category = "TA测试_正式_2" --自行修改分类
self.Description = "TA_定点测试:01" --自行修改用例描述

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
    yield_return(self:TAStartRecord("FixedPoints", "TAFixPointTestDaily", false, 1))
    local height = ' 800 '
    local yOffset = 5
    local playerTable = FixedPoint.FPT_mengde
    yield_return(self:LoopFixedPoints(playerTable, height, yOffset))
    
end)
}

UAutoLuaTestCase.Step_3 = {
	Order = 3, --执行顺序
	Type = CaseType.MonoTest,
	Description = "上报数据", --步骤描述
	Action = UAutoCoroutine(function()
        
        yield_return(self:TAUploadDB())
        
    end)
}


return self