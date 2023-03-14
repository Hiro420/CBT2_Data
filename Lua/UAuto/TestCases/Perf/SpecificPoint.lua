--baseClass提供基础接口
local baseClass = require('UAuto/Base/UAutoLuaTestBase')
--所有testcase继承baseClass
local UAutoLuaTestCase = class("SpecificPoint",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "SpecificPoint"
self.Category = "PerformanceTest"
self.Description = "性能测试特征点测试"
self.Order=10001

-- split a string
function string:split(sep)
    local sep, fields = sep or ":", {}
    local pattern = string.format("([^%s]+)", sep)
    self:gsub(pattern, function (c) fields[#fields + 1] = c end)
    return fields
end

self.Step1 = {
	Order = 1,
	Type = CaseType.MonoTest,
	Description = "性能测试特征点测试",
    Action = UAutoCoroutine(function()
        local entityManager = singletonManager:GetSingletonInstance("MoleMole.EntityManager")
        local localAvatar = entityManager:GetLocalAvatarEntity()

        -- 获取相机信息
        local mainCamera = entityManager:GetMainCameraEntity()
        local cameraMove = mainCamera:GetVisualComponent("VCPipelineCameraMove")

        -- 准备测试点数据
        -- row 的格式为 "10_20_30,40_50_60"
        -- local row = "2733.72_194.606_-1700.6,-0.7699156_0.1049198_3.339703"
        local row = self.base:GetUserPara("-row")
        local tb = string.split(row, ',')
        local pos_str = tb[1]
        local camera_str = tb[2]
        
        -- GOTO到测试地点
        local pos_tb = string.split(pos_str, "_")
        local pos_x = pos_tb[1]
        local pos_y = pos_tb[2]
        local pos_z = pos_tb[3]

        local gm_goto = string.format("GOTO %s %s %s", pos_x, pos_y, pos_z)
        yield_return(self.base:RunGM(gm_goto))
        yield_return(CS.UnityEngine.WaitForSeconds(10))
        yield_return(self.base:RunGM(gm_goto))
        yield_return(CS.UnityEngine.WaitForSeconds(10))

        -- 设置镜头
        local camera_tb = string.split(camera_str, '_')
        local camera_x = tonumber(camera_tb[1])
        local camera_y = tonumber(camera_tb[2])
        local camera_z = tonumber(camera_tb[3])

        for i=10,1,-1 do
            cameraMove.data.lastCameraSpherical = CS.UnityEngine.Vector3(camera_x, camera_y, camera_z)
            cameraMove.data.lastFrameCameraSpherical = CS.UnityEngine.Vector3(camera_x, camera_y, camera_z)
            cameraMove.data.cameraSpherical = CS.UnityEngine.Vector3(camera_x, camera_y, camera_z)

            yield_return(CS.UnityEngine.WaitForSeconds(1))
        end

        -- local deltaX = cameraMove.data.cameraSpherical.x - camera_x
        -- while (deltaX > 0.01)
        -- do
        --     cameraMove.data.lastCameraSpherical = CS.UnityEngine.Vector3(camera_x, camera_y, camera_z)
        --     cameraMove.data.lastFrameCameraSpherical = CS.UnityEngine.Vector3(camera_x, camera_y, camera_z)
        --     cameraMove.data.cameraSpherical = CS.UnityEngine.Vector3(camera_x, camera_y, camera_z) 

        --     yield_return(CS.UnityEngine.WaitForSeconds(1))
        --     deltaX = cameraMove.data.cameraSpherical.x - camera_x
        -- end

        -- 开启性能采集
        -- local gm_stat = string.format("StartStatUnit SpecificPoint-%s 2", pos_str)
        local gm_stat = string.format("StartStatEngineModule SpecificPoint-%s", pos_str)
        yield_return(self.base:RunGM(gm_stat))

        -- 等待10秒
        yield_return(CS.UnityEngine.WaitForSeconds(10))

        -- 停止性能采集
        yield_return(self.base:RunGM("StopStatEngineModule"))

    end)
       
}

return self