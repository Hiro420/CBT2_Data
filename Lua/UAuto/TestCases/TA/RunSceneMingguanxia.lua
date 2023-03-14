local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("RunSceneMingguanxia",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "RunSceneMingguanxia"
self.Category = "TA测试" --自行修改分类
self.Description = "TA_遍历：明冠峡" --自行修改用例描述



UAutoLuaTestCase.Step_1 = {
	Order = 1, --执行顺序
	Type = CaseType.MonoTest,
	Description = "遍历明冠峡", --步骤描述
    Action = UAutoCoroutine(function()

    yield_return(self.base:RunGM("quest finish 35001 "))
yield_return(self:CloseMapIfExist())
yield_return(CS.UnityEngine.WaitForSeconds(5))
yield_return(self.base:RunGM("AREA 3 ALL"))

--一键解锁后关地图
retry = 20
while (retry>0) do
    local map = CS.UnityEngine.GameObject.Find('InLevelMapPage');
   
    if(map~= nil and map.activeInHierarchy == true)
    then
        yield_return(self:CloseMapIfExist())
    else
        yield_return(CS.UnityEngine.WaitForSeconds(1))
    end
    retry = retry - 1
end

--跳一下防止摄像机不跟角色
yield_return(self.base:Jump())

        -- 设定体力无限
        yield_return(self.base:RunGM("STAMINA INFINITE ON"))
        -- 设定角色无敌
        yield_return(self.base:RunGM("WUDI ON"))
        -- 设定角色隐身
        CS.MoleMole.GlobalVars.DebugPlayerInvisible_On = true

        -----------------
        -- 测试脚本主体 --
        -----------------

        local fieldName = "Mingguanxia"

        -- 获取当前entity
        local entityManager = singletonManager:GetSingletonInstance("MoleMole.EntityManager")
        local localAvatar = entityManager:GetLocalAvatarEntity()

        -- 地块边界设定 Mingguanxia
        local minX = 2555
        local maxX = 2806
        local minZ = -575
        local maxZ = -194


        local x = minX
        local z = minZ
        local rotX = 0

        -- 网格粒度
        local interaction = 10

        -- 开启性能采集
        local gm_startStatUnit = string.format("StartStatUnit Test@Server-Case@FixedPoints@%s", 'TARunSceneMingguanxiaDaily')
        yield_return(self.base:RunGM(gm_startStatUnit))
        local dataFileName = self.base:GetStatFileName()
        print(dataFileName.."$$##")

        yield_return(self.base:RunGM(string.format("goto %s %s %s", x, 1000, z)))
        yield_return(CS.UnityEngine.WaitForSeconds(20))
        --移动到第一个点附近等待20s

        local direction = true
        while (x <= maxX)
        do
            if direction then
                -- 正向遍历z
                while(z <= maxZ)
                do
                    y = self.base:GetCurrentY(x, z)
                    pos = CS.UnityEngine.Vector3(x, y, z)
                    localAvatar:SetPosition(pos)
                    z = z + interaction
                    yield_return(CS.UnityEngine.WaitForSeconds(1))
                    yield_return(self.base:TakeStatSnap())
                    yield_return(self.base:RunGM("SnapshotStatUnit -1"))
                end
            else
                -- 逆向遍历z
                while (z >= minZ)
                do
                    y = self.base:GetCurrentY(x, z)
                    pos = CS.UnityEngine.Vector3(x, y, z)
                    localAvatar:SetPosition(pos)
                    z = z - interaction
                    yield_return(CS.UnityEngine.WaitForSeconds(1))
                    yield_return(self.base:TakeStatSnap())
                    yield_return(self.base:RunGM("SnapshotStatUnit -1"))
                end
            end

            x = x + interaction
            direction = not direction
        end

        -- 停止性能采集
        yield_return(self.base:RunGM("StopStatUnit"))
        local remoteFile = self.base:UploadStatFile()
        self.base:UploadToStatDB(remoteFile)


    end)
}
    
return self