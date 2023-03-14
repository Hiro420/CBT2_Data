local baseClass = require("UAuto/Base/UAutoLuaTestBase")
local UAutoLuaTestCase = class("TABase", baseClass)

local self = UAutoLuaTestCase
self.base = TestCaseBaseClass()

self.memoryWaitTime = 15

function self:TAUpLoadDate(wait, pos, rot)
    wait = wait == nil and 2 or wait
    yield_return(CS.UnityEngine.WaitForSeconds(wait))
    yield_return(self.base:TakeStatSnap())
    if (pos and rot) then
        local gm_SnapshotStatUnit = string.format("SnapshotStatUnit -1,%s %s %s,%s %s %s", pos[1], pos[2], pos[3], rot[1], rot[2], rot[3])
        yield_return(self.base:RunGM(gm_SnapshotStatUnit))
    else
        yield_return(self.base:RunGM("SnapshotStatUnit -1"))
    end
    -- yield_return(self.base:AppendMemoryDetail())

    local remoteFile = self.base:UploadStatFile()
end

function self:TAStartRecord(type, name, tick, gap)
	tick = tick == nil and false or true
    gap = gap == nil and 1 or gap

    local isOnline = self.base:GetUserPara('-isOnline')
    test = isOnline ~= 'false' and "Server" or "Streaming"

    local isNight = self.base:GetUserPara('-isNight')
    if (isNight == 'true') then
        isNight = '~Night'
    else
        isNight = ''
    end

	if (tick) then
		local gm_startStatUnit = string.format("StartStatUnit Test@%s-Case@%s@%s %s true", test, type, name..isNight, gap)
		yield_return(self.base:RunGM(gm_startStatUnit))
	else
		local gm_startStatUnit = string.format("StartStatUnit Test@%s-Case@%s@%s", test, type, name)
		yield_return(self.base:RunGM(gm_startStatUnit))
	end
end

function self:TAUploadDB( )
    yield_return(self.base:RunGM("StopStatUnit"))
    local remoteFile = self.base:UploadStatFile()
    self.base:UploadToStatDB(remoteFile)
end

function self:MoveByRoute(route)
    for idx, pos in ipairs(route) do
        yield_return(self.base:MoveToPosition(pos))
    end
end

function self:LoopFixedPoints(list, firstHight, yOffset)
    for key, val in ipairs(list) do
        local pos = self:SplitStr(val[1], ' ')
        local rot = self:SplitStr(tostring(val[2]), '(), ')
        local high = pos[1]..firstHight..pos[3]
        local offset = pos[1].." "..(tonumber(pos[2])+yOffset).." "..pos[3]
        yield_return(self.base:RunGM("goto "..high))
        yield_return(CS.UnityEngine.WaitForSeconds(15))
        yield_return(self.base:RunGM("goto "..key))
        yield_return(CS.UnityEngine.WaitForSeconds(3))
        yield_return(self.base:RunGM("goto "..offset))
        yield_return(CS.UnityEngine.WaitForSeconds(3))
        yield_return(self.base:RotateCameraBySpherical(val[2]))
        yield_return(CS.UnityEngine.WaitForSeconds(5))
        yield_return(self:TAUpLoadDate(nil, pos, rot))
    end
end

function self:SplitStr(str, split_char)      
    local t = {}

    for w in string.gmatch(str,"([^'"..split_char.."']+)") do     --按分割字符串
        table.insert(t,w) 
    end
    
    return t
end

function self:TASortPos(playerHighPos, playerPos, camsph)
   local len = #playerHighPos

    for i = 1, len - 1 do
        for j = 1, len - i do
            if playerHighPos[j] < playerHighPos[j + 1] then
                temp = playerHighPos[j + 1]
                playerHighPos[j + 1] = playerHighPos[j]
                playerHighPos[j] = temp
                temp = playerPos[j + 1]
                playerPos[j + 1] = playerPos[j]
                playerPos[j] = temp
                temp = camsph[j + 1]
                camsph[j + 1] = camsph[j]
                camsph[j] = temp
            end
        end
    end
    return playerHighPos, playerPos, camsph
end

----------------------    初始化   ----------------------

function self:TAUnlockAll()
    yield_return(self.base:RunGM("quest accept 35001"))
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
end

function self:TAinitAvatarLst()
    yield_return(self:ChangeAvatar("Ayaka",true))
    yield_return(self:ChangeAvatar("Beidou"))
    yield_return(self:ChangeAvatar("Diluc"))
    yield_return(self:ChangeAvatar("Razor"))
end

function self:TAinitEnv(isNight, weather)
    if (weather == nil) then
        yield_return(self.base:RunGM("WEATHER sun"))
    else
        yield_return(self.base:RunGM("WEATHER "..weather))
    end

    yield_return(self.base:RunGM("player timelock 1"))

    if (isNight == 'true') then
        yield_return(self.base:RunGM("//Time 21"))
    else
        yield_return(self.base:RunGM("//Time 14"))
    end
end
    
function self:TAselectServer(server)
    if (server == "false") then
        yield_return(self.base:EnterStreaming())
    end
end

function self:TAinit()
    yield_return(self.base:RunGM("WUDI ON"))
    yield_return(self.base:RunGM("STAMINA INFINITE ON"))
    local isNight = self.base:GetUserPara("-isNight")
    local isOnline = self.base:GetUserPara("-isOnline")
    yield_return(self:TAselectServer(isOnline))
    yield_return(self:TAinitEnv(isNight))
    yield_return(self:TAinitAvatarLst())
    yield_return(self:TAUnlockAll())
end

return self
