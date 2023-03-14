local baseClass = require('UAuto/Base/UAutoLuaTestBase')
local UAutoLuaTestCase = class("chest",baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "collectres"
self.Category = "CollectRes" --自行修改分类
self.Description = "扫地机器人，扫一遍新手区全图，收集用到的资源列表" --自行修改用例描述

self.doSkillCount = 15
self.doSkillWait = 0.3
self.caseWait = 5
self.dungeonList = {4100, 4101, 4102, 4103, 4010, 4007, 4011}
self.mengdeScenes = {1009, 1008, 1004}
self.uiList = {}
self.cutscenes = {}
self.skip = false
self.layerMask = ~(1 << CS.UnityEngine.LayerMask.NameToLayer("InteeTrigger"))
self.maxDistance = 500

self.points = {
    {
        2908.0,
        226.9201,
        -1720.0
    },
    {
        2779.99976,
        293.5768,
        -1607.99988
    },
    {
        2751.99927,
        258.507446,
        -1296.00049
    },
    {
        2796.0,
        241.952271,
        -1092.0
    },
    {
        2768.0,
        202.400024,
        -795.9999
    },
    {
        2672.00049,
        202.4,
        -647.9999
    },
    {
        2412.0,
        202.399963,
        -491.999969
    },
    {
        2323.99976,
        247.87207,
        -484.000366
    },
    {
        2127.99976,
        226.1114,
        -603.9992
    },
    {
        1932.00049,
        256.489166,
        -587.999756
    },
    {
        1840.0,
        247.593735,
        -724.000244
    },
    {
        1720.00024,
        255.569763,
        -772.0001
    },
    {
        1608.0,
        287.5488,
        -1148.0
    },
    {
        1584.0,
        244.639923,
        -1572.0
    },
    {
        1748.0,
        189.199051,
        -1836.0
    },
    {
        1840.0,
        188.85527,
        -1908.0
    },
    {
        2248.0,
        194.500015,
        -1992.00012
    },
    {
        2728.0,
        194.500031,
        -2024.0
    },
    {
        2876.0,
        194.500015,
        -1940.0
    },
    {
        2932.0,
        194.5,
        -1856.0
    }
}

UAutoLuaTestCase.Step_1 = {
	Order = 1,
	Type = CaseType.MonoTest,
	Description = "测一遍主角和安伯技能",
	Action = UAutoCoroutine(function()
		if self.skip then
			return
		end
		yield_return(self.base:RunGM("STAMINA INFINITE ON"))
		yield_return(self.base:RunGM("WUDI ON"))
		yield_return(self.base:RunGM("ENERGY INFINITE ON"))
		-- 男主
		yield_return(self:ChangeAvatar("PlayerBoy"))
		yield_return(self.base:RunGM("skill depot 704"))
		local attackCount = self.doSkillCount
		while attackCount > 0 do
			yield_return(CS.UnityEngine.WaitForSeconds(self.doSkillWait))
			yield_return(self.base:Skill(0))
			attackCount = attackCount - 1
		end

		-- 加强普攻
		yield_return(CS.UnityEngine.WaitForSeconds(self.caseWait))
		yield_return(self.base:Skill(0, false))
		yield_return(CS.UnityEngine.WaitForSeconds(2))
		yield_return(self.base:SkillUp(0))

		-- 风球
		yield_return(CS.UnityEngine.WaitForSeconds(self.caseWait))
		yield_return(self.base:Skill(1))

		-- 风球ex
		yield_return(CS.UnityEngine.WaitForSeconds(self.caseWait))
		yield_return(self.base:Skill(1, false))
		yield_return(CS.UnityEngine.WaitForSeconds(2))
		yield_return(self.base:SkillUp(1))

		-- 充能技
		yield_return(CS.UnityEngine.WaitForSeconds(self.caseWait))
		yield_return(self.base:Skill(4))

		-- 女主
		yield_return(CS.UnityEngine.WaitForSeconds(self.caseWait))
		yield_return(self:ChangeAvatar("PlayerGirl"))
		yield_return(self.base:RunGM("skill depot 704"))
		attackCount = self.doSkillCount
		while attackCount > 0 do
			yield_return(CS.UnityEngine.WaitForSeconds(self.doSkillWait))
			yield_return(self.base:Skill(0))
			attackCount = attackCount - 1
		end

		-- 加强普攻
		yield_return(CS.UnityEngine.WaitForSeconds(self.caseWait))
		yield_return(self.base:Skill(0, false))
		yield_return(CS.UnityEngine.WaitForSeconds(2))
		yield_return(self.base:SkillUp(0))

		-- 风球
		yield_return(CS.UnityEngine.WaitForSeconds(self.caseWait))
		yield_return(self.base:Skill(1))

		-- 风球ex
		yield_return(CS.UnityEngine.WaitForSeconds(self.caseWait))
		yield_return(self.base:Skill(1, false))
		yield_return(CS.UnityEngine.WaitForSeconds(2))
		yield_return(self.base:SkillUp(1))

		-- 充能技
		yield_return(CS.UnityEngine.WaitForSeconds(self.caseWait))
		yield_return(self.base:Skill(4))

		-- 安伯
		yield_return(CS.UnityEngine.WaitForSeconds(self.caseWait))
		yield_return(self:ChangeAvatar("Anbo"))
		-- 普攻
		attackCount = self.doSkillCount
		while attackCount > 0 do
			yield_return(CS.UnityEngine.WaitForSeconds(self.doSkillWait))
			yield_return(self.base:Skill(0))
			attackCount = attackCount - 1
		end

		-- 扔娃娃
		yield_return(CS.UnityEngine.WaitForSeconds(self.caseWait))
		yield_return(self.base:Skill(1, false))
		yield_return(CS.UnityEngine.WaitForSeconds(2))
		yield_return(self.base:SkillUp(1))

		-- 充能技
		yield_return(CS.UnityEngine.WaitForSeconds(self.caseWait))
		yield_return(self.base:Skill(4))

		-- 加强普攻
		yield_return(CS.UnityEngine.WaitForSeconds(self.caseWait))
		yield_return(self.base:Skill(0, false))
		yield_return(CS.UnityEngine.WaitForSeconds(2))
		yield_return(self.base:SkillUp(0))
		yield_return(self.base:Skill(0))
	end)
}

function pnpoly(points, testx, testy)
  local c = false
  local nvert = #points
  local j = nvert
  for i = 1, nvert do
	local condition1 = (points[i][3] > testy) ~= (points[j][3] > testy)
	local condition2 = testx < (points[j][1]-points[i][1]) * (testy-points[i][3]) / (points[j][3]-points[i][3]) + points[i][1]
    if condition1 and condition2 then
	   c = not c
	end
	j = i
  end
  return c;
end

function GetGroundPos(worldPos)
	local ray = CS.UnityEngine.Ray()
	local hitInfo = CS.UnityEngine.RaycastHit()
	ray.direction = CS.UnityEngine.Vector3.down
	worldPos.y = 500
	ray.origin = worldPos
	local hits = CS.UnityEngine.Physics.RaycastAll(ray, self.maxDistance, self.layerMask)
	if hits.Length > 0 then
		worldPos = hits[0].point
	end
	return worldPos
end


UAutoLuaTestCase.Step_2 = {
	Order = 2, --执行顺序
	Type = CaseType.MonoTest,
	Description = "去一遍所有新手区地城", --步骤描述
	Action = UAutoCoroutine(function()
		local entityManager = singletonManager:GetSingletonInstance("MoleMole.EntityManager")
		local coroutineManager = singletonManager:GetSingletonInstance("MoleMole.CoroutineManager")
		local sectrManager = singletonManager:GetSingletonInstance("SECTR_Manager")

		local localAvatar = entityManager:GetLocalAvatarEntity()
		local rect = {100000, 100000, -100000, -100000}
		for _, point in ipairs(self.points) do
			if point[1] < rect[1] then
				rect[1] = point[1]
			end
			if point[1] > rect[3] then
				rect[3] = point[1]
			end
			if point[3] < rect[2] then
				rect[2] = point[3]
			end
			if point[3] > rect[4] then
				rect[4] = point[3]
			end
		end

		local x = rect[1]
		local z = rect[2]
		local y = localAvatar:GetPosition().y
		local deltaX = 25
		local deltaZ = 40
		local count = 0
		local pos = CS.UnityEngine.Vector3(x, y, z)
		CS.UnityEngine.Debug.Log(rect[1] .. " " .. rect[2] .. " " .. rect[3] .. " " .. rect[4])
		while x < rect[3] or z < rect[4] do
			if (x + deltaX < rect[1]) or (x + deltaX > rect[3]) then
				deltaX = -deltaX
				z = z + deltaZ
			else
				x = x + deltaX
			end

			if pnpoly(self.points, x, z) then
				count = 0
				pos.x = x
				pos.z = z
				pos = GetGroundPos(pos)
				localAvatar:SetPosition(pos)
				yield_return(CS.UnityEngine.WaitForSeconds(0.1))
				-- 等待资源加载完成再移动到下一个位置
				-- local co = coroutineManager:StartCoroutine(
				-- 	sectrManager:InitIter(pos, nil)
				-- )

				-- yield_return(co)
			end
			-- CS.UnityEngine.Debug.Log(x .. " " .. z)
			count = count +1
			if count >= 200 then
				CS.UnityEngine.Debug.Log(x .. " " .. z)
				break
			end
		end
		CS.UnityEngine.Debug.Log("over")
		-- 升到15级
		-- yield_return(self.base:RunGM("level 15"))


		-- 副本
		-- for _, dungeonId in ipairs(self.dungeonList) do
			--yield_return(self.base:RunGM("dungeon " .. dungeonId))
			--yield_return(CS.UnityEngine.WaitForSeconds(10))
		-- end
		-- 蒙德城内场景
		for _, sceneId in ipairs(self.mengdeScenes) do
			yield_return(CS.UnityEngine.WaitForSeconds(20))
			yield_return(self.base:RunGM("jump " .. sceneId))
		end

		singletonManager:GetSingletonInstance("MoleMole.AssetCollectManager"):Output()
	end)
}


return self