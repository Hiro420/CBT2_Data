local NpcUtil = {}

local NpcEventTypeLua = require("Actor/Npc/NPCEventType")
local NpcModeType = require("Actor/Npc/NpcMode/NpcModeType")

NpcUtil.NpcEventType = NpcEventTypeLua.DailyNpcEventType

--得到蒙德城所有NPC信息，返回值为一个table
NpcUtil.GetMengdeNpcList = function()
    local list = {}
    local i = 1401
    while (i <= 1569) do
        table.insert(list, "Npc" .. tostring(i))
    end
    return list
end

--得到风龙来袭屏蔽的所有NPC信息，返回值为一个table
NpcUtil.GetMengdeNpcListSpecial = function()
    local list = {
        "Npc1401",
        "Npc1403",
        "Npc1404",
        "Npc1405",
        "Npc1408",
        "Npc1409",
        "Npc1410",
        "Npc1412",
        "Npc1413",
        "Npc1414",
        "Npc1419",
        "Npc1421",
        "Npc1423",
        "Npc1425",
        "Npc1427",
        "Npc1429",
        "Npc1430",
        "Npc1431",
        "Npc1433",
        "Npc1435",
        "Npc1445",
        "Npc1447",
        "Npc1449",
        "Npc1451",
        "Npc1453",
        "Npc1455",
        "Npc1457",
        "Npc1459",
        "Npc1461",
        "Npc1463",
        "Npc1465",
        "Npc1467",
        "Npc1469",
        "Npc1471",
        "Npc1473",
        "Npc1475",
        "Npc1477",
        "Npc1479",
        "Npc1521",
        "Npc1523",
        "Npc1525",        
        "Npc1567",
        "Npc1569",
        "Npc1574",
        "Npc1577",
        "Npc1578",
        "Npc1587",
        "Npc1593",
        "Npc1599",
        "Npc1600",
        "Npc1601",
        "Npc1602",
        "Npc1603",
        "Npc1604",
        "Npc1605",
        "Npc1606",
        "Npc1607"
    }
    return list
end


NpcUtil.GetMengdeNpcListPublic = function()
    local list = {        
        "Npc1404",
        "Npc1410",
        "Npc1412",
        "Npc1414",
        "Npc1465",
        "Npc1475",
        "Npc1477",
        "Npc1523"
    }
    return list
end
return NpcUtil
