--[[
    luaide  模板位置位于 Template/FunTemplate/NewFileTemplate.lua 其中 Template 为配置路径 与luaide.luaTemplatesDir
    luaide.luaTemplatesDir 配置 https://www.showdoc.cc/web/#/luaide?page_id=713062580213505
    author:尤志林
    time:2019-11-29 15:40:04
]]
require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest1003 = class("Quest1003", questActorProxy)

Quest1003.defaultAlias = "Quest1003"


local DailyNpcManager = require('Actor/DailyNPCManager')
local q1003Cfg
local subIDs
local paimonData
local xiaoData
local mainquestid = 1003
local verrGoldetData 
local yanxiaoData
local xiaomingData
local xiaoming02Data
local gongziData
local rock01Data
local rock02Data
local rock03Data
local guideData
local bornEffData
local xiangmoyinData

local vec = {
    [1] = { posA = { x = 0, y = 0, z = 0}, posB = { x = 0, y = 0, z = 0}},
    [2] = { posA = { x = 0, y = 0, z = 0}, posB = { x = 0, y = 0, z = 0}},
    [3] = { posA = { x = 0, y = 0, z = 0}, posB = { x = 0, y = 0, z = 0}}
}
local angle = {}
local check_flag = 0
local match_flag = 0 

function Quest1003:OnDataLoaded()
	q1003Cfg = self.clientData
	subIDs = q1003Cfg.SubIDs
	mainquestid = 1003
	paimonData = q1003Cfg.PaimonData
	xiaoData = q1003Cfg.XiaoData
	verrGoldetData = q1003Cfg.VerrGoldetData
	yanxiaoData = q1003Cfg.YanxiaoData
	xiaomingData = q1003Cfg.XiaomingData
	xiaoming02Data = q1003Cfg.Xiaoming02Data
	gongziData = q1003Cfg.GongziData
	rock01Data = q1003Cfg.Rock01Data
	rock02Data = q1003Cfg.Rock02Data
	rock03Data = q1003Cfg.Rock03Data
	guideData = q1003Cfg.GuideData
	bornEffData = q1003Cfg.BornEffData
	xiangmoyinData = q1003Cfg.XiangmoyinData
end


-- Generated
function Quest1003:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
	self.subStartHandlers["100301"] = self.OnSubStart100301
	self.subStartHandlers["100320"] = self.OnSubStart100320
	self.subStartHandlers["100302"] = self.OnSubStart100302
	self.subStartHandlers["100303"] = self.OnSubStart100303
	self.subStartHandlers["100319"] = self.OnSubStart100319
	self.subStartHandlers["100304"] = self.OnSubStart100304
	self.subStartHandlers["100305"] = self.OnSubStart100305
	self.subStartHandlers["100306"] = self.OnSubStart100306
	self.subStartHandlers["100307"] = self.OnSubStart100307
	self.subStartHandlers["100308"] = self.OnSubStart100308
	self.subStartHandlers["100309"] = self.OnSubStart100309
	self.subStartHandlers["100310"] = self.OnSubStart100310
	self.subStartHandlers["100321"] = self.OnSubStart100321
	self.subStartHandlers["100311"] = self.OnSubStart100311
	self.subStartHandlers["100312"] = self.OnSubStart100312
	self.subStartHandlers["100313"] = self.OnSubStart100313
	self.subStartHandlers["100314"] = self.OnSubStart100314
	self.subStartHandlers["100315"] = self.OnSubStart100315
	self.subStartHandlers["100316"] = self.OnSubStart100316
	self.subStartHandlers["100317"] = self.OnSubStart100317
	self.subStartHandlers["100318"] = self.OnSubStart100318
end

function Quest1003:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["100301"] = self.OnSubFinish100301
	self.subFinishHandlers["100320"] = self.OnSubFinish100320
	self.subFinishHandlers["100302"] = self.OnSubFinish100302
	self.subFinishHandlers["100303"] = self.OnSubFinish100303
	self.subFinishHandlers["100319"] = self.OnSubFinish100319
	self.subFinishHandlers["100304"] = self.OnSubFinish100304
	self.subFinishHandlers["100305"] = self.OnSubFinish100305
	self.subFinishHandlers["100306"] = self.OnSubFinish100306
	self.subFinishHandlers["100307"] = self.OnSubFinish100307
	self.subFinishHandlers["100308"] = self.OnSubFinish100308
	self.subFinishHandlers["100309"] = self.OnSubFinish100309
	self.subFinishHandlers["100310"] = self.OnSubFinish100310
	self.subFinishHandlers["100321"] = self.OnSubFinish100321
	self.subFinishHandlers["100311"] = self.OnSubFinish100311
	self.subFinishHandlers["100312"] = self.OnSubFinish100312
	self.subFinishHandlers["100313"] = self.OnSubFinish100313
	self.subFinishHandlers["100314"] = self.OnSubFinish100314
	self.subFinishHandlers["100315"] = self.OnSubFinish100315
	self.subFinishHandlers["100316"] = self.OnSubFinish100316
	self.subFinishHandlers["100317"] = self.OnSubFinish100317
	self.subFinishHandlers["100318"] = self.OnSubFinish100318
end

function Quest1003:PaimonDis()
	local paimon = self:GetQuestNpcActor(paimonData.Alias)
    if paimon ~= nil then
        self:ActionSafeCall(
            function(self)
                paimon:DestroyWithDisappear(false)
            end
        )
	end

end


function Quest1003:Hint()
	local avatarPos = actorUtils.GetAvatarPos()
	local centerpos = sceneData:GetDummyPoint(3,"Q100311JieMI").pos
	local currLen = M.Dist(centerpos, avatarPos)
	if currLen < 3 and check_flag == 1 then
		print("距离正确解谜点极近")
		self:TryCameraMatch()
		self:CallDelay(1, self.Hint)
	elseif check_flag == 1 then
		self:CallDelay(1, self.Hint)
	end
end

function Quest1003:Hint01()
	local avatarPos01 = actorUtils.GetAvatarPos()
	local centerpos01 = sceneData:GetDummyPoint(3,"Q100311JieMI").pos
	local currLen01 = M.Dist(centerpos01, avatarPos01)
	local runtimeID01 = actorMgr:GetEntityHandler("Rock100301")
	local runtimeID02 = actorMgr:GetEntityHandler("Rock100302")
	local runtimeID03 = actorMgr:GetEntityHandler("Rock100303")

	local cameraPos001 = self:GetCameraPos()
	local cameraRot001 = self:GetCameraEuler()
	local totalangle = 0

	for i=1,3 do
		--print("角度控制亮度")
		vec[i].posA = q1003Cfg.Ray[i].posA - cameraPos001
		vec[i].posB = q1003Cfg.Ray[i].posB - cameraPos001
		angle[i] = M.ForwardAngle(vec[i].posA, vec[i].posB)
		if  angle[i] < 20 and  angle[i] > 3 then
			--print("亮度角度大于3但小于20")
			totalangle = totalangle + 3/angle[i]
		elseif  angle[i] < 3 then
			--print("亮度角度小于3")
			totalangle = totalangle + 1
		else
			totalangle = totalangle + 3/20
		end
	end

	local q100311state = self:GetSubQuestState(100311)
	--print("q100311state"  ..q100311state)
	if  q100311state ~=  3 then  -- 视角解谜未完成过
		--print("视角解谜未完成过")
		if currLen01 > 3 and currLen01 < 20 then
			local v = 20 * (3/currLen01 + totalangle) / 4
			--print("value"  ..v)
			self:SetEntityMaterialPropValue(runtimeID01, 1, v)
			self:SetEntityMaterialPropValue(runtimeID02, 1, v)
			self:SetEntityMaterialPropValue(runtimeID03, 1, v)
			self:CallDelay(0.5, self.Hint01)
		elseif currLen01 < 3 then
			--print("currLen01 < 3")
			local v = 20 * totalangle / 3
			self:SetEntityMaterialPropValue(runtimeID01, 1, v)
			self:SetEntityMaterialPropValue(runtimeID02, 1, v)
			self:SetEntityMaterialPropValue(runtimeID03, 1, v)
			self:CallDelay(0.5, self.Hint01)
		else
			--print("其他情况")
			self:CallDelay(0.5, self.Hint01)
		end
	end
end

function Quest1003:TryCameraMatch()
	local isCameraMatch01 = false
	local isCameraMatch02 = false
    local cameraPos01 = self:GetCameraPos()
    local cameraRot01 = self:GetCameraEuler()

	for i=1,3 do
		--print("比较位置")
        match_flag = 1
        vec[i].posA = q1003Cfg.Ray[i].posA - cameraPos01
        vec[i].posB = q1003Cfg.Ray[i].posB - cameraPos01
        angle[i] = M.ForwardAngle(vec[i].posA, vec[i].posB)
		if angle[i] > 3 then
			--print("角度一大于3")
            match_flag = 0
            break
        end
    end

	if match_flag == 1 then
		--print("比较相机")
        isCameraMatch01 = M.CompareEuler(cameraRot01, q1003Cfg.CameraData.rot, 77)
    end

	if isCameraMatch01 == true then           --Camera Match
		--print("首次匹配成功")
		--self:PlayEffect("Eff_SceneObj_Xiangmoyin_Hint", q1003Cfg.BornEffData.BornPos11)
		self:CallDelay(0.6,
		function(self)
			--print("再次比较相机")
			local cameraPos02 = self:GetCameraPos()
			local cameraRot02 = self:GetCameraEuler()
			for i=1,3 do
				--print("比较位置")
				match_flag = 1
				vec[i].posA = q1003Cfg.Ray[i].posA - cameraPos02
				vec[i].posB = q1003Cfg.Ray[i].posB - cameraPos02
				angle[i] = M.ForwardAngle(vec[i].posA, vec[i].posB)
				if angle[i] > 3 then
					--print("角度二大于3")
					match_flag = 0
					break
				end
			end

			if match_flag == 1 then
				isCameraMatch02 = M.CompareEuler(cameraRot02, q1003Cfg.CameraData.rot, 77)
			end

			if isCameraMatch02 == true then
				--print("再次匹配成功")
				local runtimeID01 = actorMgr:GetEntityHandler("Rock100301")
				local runtimeID02 = actorMgr:GetEntityHandler("Rock100302")
				local runtimeID03 = actorMgr:GetEntityHandler("Rock100303")
				self:SetEntityMaterialPropValue(runtimeID01,1,20)
				self:SetEntityMaterialPropValue(runtimeID02,1,20)
				self:SetEntityMaterialPropValue(runtimeID03,1,20)
				--self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q100311Eff").pos, 0, 3, true)
				self:PlayEffect("Eff_SceneObj_Xiangmoyin_Hint", q1003Cfg.BornEffData.BornPos11)
				globalActor:EnablePlayerInput(false)
				self:CallDelay(1,
				function()
					globalActor:EnablePlayerInput(true)
					check_flag = 0
					local quest = actorMgr:GetActor(q1003Cfg.ActorAlias)
					if quest ~= nil then
						quest:FinishQuestID(false, 100311)
					end
				end
				)
			else
				isCameraMatch01 = false
			end
		
		end
		)
    end
end

function Quest1003:OnSubStart100301(quest)
	print("100301 start:...")
	actorMgr:CreateActorWithPos("Q100301Trigger", "Actor/Gadget/Q100301Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q1003Trigger").pos, sceneData:GetDummyPoint(3,"Q1003Trigger").rot, true, false)
end

function Quest1003:OnSubStart100320(quest)
	print("100320 start:...")
	actorMgr:CreateActorWithPos("Q100320Trigger", "Actor/Gadget/Q100320Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q100320Trigger").pos, sceneData:GetDummyPoint(3,"Q100320Trigger").rot, true, false)
end

function Quest1003:OnSubStart100302(quest)
	print("100302 start:...")
	local task = curtainUtils.CreateEntityCreateTask({xiaoData.Alias})
	self:PlayCutsceneIndex(100301,
	function (self)
		local quest = actorMgr:GetActor(q1003Cfg.ActorAlias)
		if quest ~= nil then
			quest:FinishQuestID(false, 100302)
		end

		self:TransmitPlayer(3, sceneData:GetDummyPoint(3, "Q100301PlayerPos").pos, sceneData:GetDummyPoint(3, "Q100301PlayerPos").rot, nil,
		function (self)
			self:CreateQuestNpc(quest, xiaoData.ID)
			self:RequestInteraction(xiaoData.Alias)
		end ,task
		)
	end
	)
end

function Quest1003:OnSubStart100303(quest)
	print("100303 start:...")
	local q4000505state = self:GetSubQuestState(4000505)
	print("q4000505state"  ..q4000505state)
	if  q4000505state ~=  3 then  -- 海灯节未完成过
		print("海灯节未完成过")
		local quest = actorMgr:GetActor(q1003Cfg.ActorAlias)
		if quest ~= nil then
			local q100319state = self:GetSubQuestState(100319)
			print("q100319state"  ..q100319state)
			quest:FinishQuestID(false, 100319)
		end
	end
	self:CreateQuestNpc(quest, xiaoData.ID)
end

function Quest1003:OnSubStart100319(quest)
	print("100319 start:...")
end

function Quest1003:OnSubStart100304(quest)
	print("100304 start:...")
	self:NotifyTo("Npc2208", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2202", DailyNpcManager.NpcEventType.HIDESELF, true) --淮安在和菲尔替换位置后，这行脚本去掉
	self:CallDelay(2,
	function(self)
		self:CreateQuestNpc(quest, verrGoldetData.ID)
	end
	)
end

function Quest1003:OnSubStart100305(quest)
	print("100305 start:...")
	self:NotifyTo("Npc2208", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2204", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2202", DailyNpcManager.NpcEventType.HIDESELF, true) --淮安在和菲尔替换位置后，这行脚本去掉
	self:CallDelay(2,
	function(self)
		self:CreateQuestNpc(quest, verrGoldetData.ID)
	end
	)
end

function Quest1003:OnSubStart100306(quest)
	print("100306 start:...")
	self:NotifyTo("Npc2202", DailyNpcManager.NpcEventType.HIDESELF, true) --淮安在和菲尔替换位置后，这行脚本去掉
	self:NotifyTo("Npc2208", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2204", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:CreateQuestNpc(quest, yanxiaoData.ID)
	self:CallDelay(2,
	function(self)
		self:CreateQuestNpc(quest, verrGoldetData.ID)
	end
	)
end

function Quest1003:OnSubStart100307(quest)
	print("100307 start:...")
	self:NotifyTo("Npc2202", DailyNpcManager.NpcEventType.HIDESELF, true) --淮安在和菲尔替换位置后，这行脚本去掉
	self:NotifyTo("Npc2208", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2204", DailyNpcManager.NpcEventType.HIDESELF, true)
	local yanxiao = actorMgr:GetActorInternal("Npc2204011003")
	if yanxiao  == nil then
		self:CreateQuestNpc(quest, yanxiaoData.ID)
	end
	self:CallDelay(2,
	function(self)
		self:CreateQuestNpc(quest, verrGoldetData.ID)
	end
	)
	actorMgr:CreateActorWithPos("Q100307Trigger", "Actor/Gadget/Q100307Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q100307Trigger").pos, sceneData:GetDummyPoint(3,"Q100307Trigger").rot, true, false)
end

function Quest1003:OnSubStart100308(quest)
	print("100308 start:...")
	self:NotifyTo("Npc2202", DailyNpcManager.NpcEventType.HIDESELF, true) --淮安在和菲尔替换位置后，这行脚本去掉
	self:NotifyTo("Npc2208", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2204", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2311", DailyNpcManager.NpcEventType.HIDESELF, true)
	--self:CreateQuestNpc(quest, xiaomingData.ID)
	self:CreateQuestNpc(quest, paimonData.ID)
	self:RequestInteraction(paimonData.Alias)
	local yanxiao = actorMgr:GetActorInternal("Npc2204011003")
	if yanxiao  == nil then
		self:CreateQuestNpc(quest, yanxiaoData.ID)
	end
	self:CallDelay(2,
	function(self)
		self:CreateQuestNpc(quest, verrGoldetData.ID)
	end
	)
	--actorMgr:CreateActorWithPos("Q100308Trigger", "Actor/Gadget/Q100308Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q100308Trigger").pos, sceneData:GetDummyPoint(3,"Q100308Trigger").rot, true, false)
end

function Quest1003:OnSubStart100309(quest)
	print("100309 start:...")
	self:NotifyTo("Npc2202", DailyNpcManager.NpcEventType.HIDESELF, true) --淮安在和菲尔替换位置后，这行脚本去掉
	self:NotifyTo("Npc2208", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2204", DailyNpcManager.NpcEventType.HIDESELF, true)
	local yanxiao = actorMgr:GetActorInternal("Npc2204011003")
	if yanxiao  == nil then
		self:CreateQuestNpc(quest, yanxiaoData.ID)
	end
	self:CallDelay(2,
	function(self)
		self:CreateQuestNpc(quest, verrGoldetData.ID)
	end
	)
end

function Quest1003:OnSubStart100310(quest)
	print("100310 start:...")
	self:NotifyTo("Npc2202", DailyNpcManager.NpcEventType.HIDESELF, true) --淮安在和菲尔替换位置后，这行脚本去掉
	self:NotifyTo("Npc2208", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2204", DailyNpcManager.NpcEventType.HIDESELF, true)
	local yanxiao = actorMgr:GetActorInternal("Npc2204011003")
	if yanxiao  == nil then
		self:CreateQuestNpc(quest, yanxiaoData.ID)
	end
	self:CallDelay(2,
	function(self)
		self:CreateQuestNpc(quest, verrGoldetData.ID)
	end
	)
end

function Quest1003:OnSubStart100321(quest)
	print("100321 start:...")
	self:SpawnGadget(quest, xiangmoyinData.ID)
end

function Quest1003:OnSubStart100311(quest)
	print("100311 start:...")
	-- globalActor:UnSpawn("Rock100301")
	-- globalActor:UnSpawn("Rock100302")
	-- globalActor:UnSpawn("Rock100303")
	self:SpawnGadget(quest, rock01Data.ID)
	self:SpawnGadget(quest, rock02Data.ID)
	self:SpawnGadget(quest, rock03Data.ID)
	self:SpawnGadget(quest, guideData.ID)
	check_flag = 1
	self:Hint()
	self:Hint01()
	self:NotifyTo("Npc2202", DailyNpcManager.NpcEventType.HIDESELF, true) --淮安在和菲尔替换位置后，这行脚本去掉
	self:NotifyTo("Npc2208", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NotifyTo("Npc2204", DailyNpcManager.NpcEventType.HIDESELF, true)
	local yanxiao = actorMgr:GetActorInternal("Npc2204011003")
	if yanxiao  == nil then
		self:CreateQuestNpc(quest, yanxiaoData.ID)
	end
	self:CallDelay(2,
	function(self)
		self:CreateQuestNpc(quest, verrGoldetData.ID)
	end
	)
	
	--actorMgr:CreateActorWithPos("Q100311Trigger", "Actor/Gadget/Q100311Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q100311Trigger").pos, sceneData:GetDummyPoint(3,"Q100311Trigger").rot, true, false)
end

function Quest1003:OnSubStart100312(quest)
	print("100312 start:...")
	-- globalActor:UnSpawn("Rock100301")
	-- globalActor:UnSpawn("Rock100302")
	-- globalActor:UnSpawn("Rock100303")
	check_flag = 0
	globalActor:UnSpawn("BornEff1003")
	globalActor:UnSpawn("Guide1003")
	self:SpawnGadget(quest, bornEffData.ID)
	--self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q100312Ming").pos, 2, 2, true)
	self:NotifyTo("Npc2311", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:NarratorOnlyTask(q1003Cfg.NarratorFlow4)

	local xiaoming = self:GetQuestNpcActor(xiaoming02Data.Alias)
	if xiaoming ~= nil then
		xiaoming:DestroyWithDither(false, 5.5)
	end

	self:CallDelay(7,
		function(self)
			local quest = actorMgr:GetActor(q1003Cfg.ActorAlias)
			if quest ~= nil then
				quest:FinishQuestID(false, 100312)
			end
		end
	)

	self:CallDelay(0.1,
	function(self)
		self:CreateQuestNpc(quest, xiaoming02Data.ID)
		local xiaoming = self:GetQuestNpcActor(xiaoming02Data.Alias)
		if xiaoming ~= nil then
			print("跑步开始…………")
			xiaoming:RunToTask(q1003Cfg.XiaomingData.BornPos12Run01,
				function(self)	
					local xiaoming = self:GetQuestNpcActor(xiaoming02Data.Alias)
					if xiaoming ~= nil then
						self:DestroyQuestNpcActorByAlias(xiaoming02Data.Alias, false)
					end
					local quest = actorMgr:GetActor(q1003Cfg.ActorAlias)
					if quest ~= nil then
						quest:FinishQuestID(false, 100312)
					end
				end
			)
		end
	end
	)
end

function Quest1003:OnSubStart100313(quest)
	print("100313 start:...")
	self:CreateQuestNpc(quest, xiaomingData.ID)
	actorMgr:CreateActorWithPos("Q100313Trigger", "Actor/Gadget/Q100313Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q100313Trigger").pos, sceneData:GetDummyPoint(3,"Q100313Trigger").rot, true, false)
end


function Quest1003:OnSubStart100314(quest)
	print("100314 start:...")
end

function Quest1003:OnSubStart100315(quest)
	print("100315 start:...")
	self:NotifyTo("Npc2311", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:CreateQuestNpc(quest, xiaomingData.ID)
end

function Quest1003:OnSubStart100316(quest)
	print("100316 start:...")
	self:NotifyTo("Npc2204", DailyNpcManager.NpcEventType.HIDESELF, true)
	self:CreateQuestNpc(quest, yanxiaoData.ID)
end

function Quest1003:OnSubStart100317(quest)
	print("100317 start:...")
	self:CreateQuestNpc(quest, xiaoData.ID)
end

function Quest1003:OnSubStart100318(quest)
	print("100318 start:...")
	self:CreateQuestNpc(quest, gongziData.ID)
end

function Quest1003:OnSubFinish100301(quest)
end

function Quest1003:OnSubFinish100320(quest)
	self:ActionSafeCall(
		function(self)
			self:NarratorOnlyTask(q1003Cfg.NarratorFlow1, nil, "StoryCut")
		end
	)
end

function Quest1003:OnSubFinish100302(quest)
end

function Quest1003:OnSubFinish100303(quest)
	local xiao = self:GetQuestNpcActor(xiaoData.Alias)
    if xiao ~= nil then
        self:ActionSafeCall(
			function(self)
                self:DestroyQuestNpcActorByAlias(xiaoData.Alias, false)
            end
        )
	end
	self:PaimonDis()
end

function Quest1003:OnSubFinish100319(quest)
end

function Quest1003:OnSubFinish100304(quest)
	self:PaimonDis()
end

function Quest1003:OnSubFinish100305(quest)
end

function Quest1003:OnSubFinish100306(quest)
	self:PaimonDis()
end

function Quest1003:OnSubFinish100307(quest)
end

function Quest1003:OnSubFinish100308(quest)
	self:NotifyTo("Npc2311", DailyNpcManager.NpcEventType.STARTDAILY, true)
	--self:NarratorOnlyTask(q1003Cfg.NarratorFlow2)
	local xiaoming = self:GetQuestNpcActor(xiaomingData.Alias)
	if xiaoming ~= nil then
		self:DestroyQuestNpcActorByAlias(xiaomingData.Alias, false)
	end
	self:PaimonDis()
end

function Quest1003:OnSubFinish100309(quest)
	self:PaimonDis()
end

function Quest1003:OnSubFinish100310(quest)
	--self:NarratorOnlyTask(q1003Cfg.NarratorFlow3)
	self:PaimonDis()
end

function Quest1003:OnSubFinish100321(quest)
	globalActor:UnSpawn("Xiangmoyin")
	self:ShowQuestPictureDialog(247)
end

function Quest1003:OnSubFinish100311(quest)
	print("100311 finish:...")

	self:NotifyTo("Npc2202", DailyNpcManager.NpcEventType.STARTDAILY, true) --淮安在和菲尔替换位置后，这行脚本去掉
	self:NotifyTo("Npc2208", DailyNpcManager.NpcEventType.STARTDAILY, true)
	self:NotifyTo("Npc2204", DailyNpcManager.NpcEventType.STARTDAILY, true)
	--self:PlayEffect("Eff_RockCrystal_Absorb", q1003Cfg.BornEffData.BornPos11)
	-- globalActor:UnSpawn("Rock100301")
	-- globalActor:UnSpawn("Rock100302")
	-- globalActor:UnSpawn("Rock100303")
	local runtimeID01 = actorMgr:GetEntityHandler("Rock100301")
	local runtimeID02 = actorMgr:GetEntityHandler("Rock100302")
	local runtimeID03 = actorMgr:GetEntityHandler("Rock100303")
	self:SetEntityMaterialPropValue(runtimeID01,1,0)
	self:SetEntityMaterialPropValue(runtimeID02,1,0)
	self:SetEntityMaterialPropValue(runtimeID03,1,0)

	--self:EnterSceneLookCamera(sceneData:GetDummyPoint(3,"Q100311Eff").pos, 0, 3, true)
	local verrGoldet = self:GetQuestNpcActor(verrGoldetData.Alias)
    if verrGoldet ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(verrGoldetData.Alias, false)
            end
        )
	end
	
	local yanxiao = self:GetQuestNpcActor(yanxiaoData.Alias)
    if yanxiao ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(yanxiaoData.Alias, false)
            end
        )
    end
end

function Quest1003:OnSubFinish100312(quest)
	local xiaoming02 = self:GetQuestNpcActor(xiaoming02Data.Alias)
	if xiaoming02 ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(xiaoming02Data.Alias, false)
            end
        )
	end
end

function Quest1003:OnSubFinish100313(quest)
	globalActor:UnSpawn("Rock100301")
	globalActor:UnSpawn("Rock100302")
	globalActor:UnSpawn("Rock100303")
end

function Quest1003:OnSubFinish100314(quest)
	local task = curtainUtils.CreateEntityCreateTask({xiaomingData.Alias})
	self:CallDelay(2,
	function (self)
		self:ActionSafeCall(
			function (self)
				self:TransmitPlayer(3, sceneData:GetDummyPoint(3, "Q100315PlayerPos").pos, sceneData:GetDummyPoint(3, "Q100315PlayerPos").rot, nil ,                
				function(self)
					self:CreateQuestNpc(quest, xiaomingData.ID)
					self:RequestInteraction(xiaomingData.Alias)
				end ,task)
			end
		)
	end
)
end

function Quest1003:OnSubFinish100315(quest)
	self:NotifyTo("Npc2311", DailyNpcManager.NpcEventType.STARTDAILY, true)
	local xiaoming = self:GetQuestNpcActor(xiaomingData.Alias)
	if xiaoming ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(xiaomingData.Alias, false)
            end
        )
	end
	self:PaimonDis()
end

function Quest1003:OnSubFinish100316(quest)
	self:PaimonDis()
end

function Quest1003:OnSubFinish100317(quest)
	self:NotifyTo("Npc2204", DailyNpcManager.NpcEventType.STARTDAILY, true)

	local xiao = self:GetQuestNpcActor(xiaoData.Alias)
    if xiao ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(xiaoData.Alias, false)
            end
        )
	end
	
	local yanxiao = self:GetQuestNpcActor(yanxiaoData.Alias)
    if yanxiao ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(yanxiaoData.Alias, false)
            end
        )
	end
	
	self:PaimonDis()
end

function Quest1003:OnSubFinish100318(quest)
	local gongzi = self:GetQuestNpcActor(gongziData.Alias)
    if gongzi ~= nil then
        self:ActionSafeCall(
            function(self)
                self:DestroyQuestNpcActorByAlias(gongziData.Alias, false)
            end
        )
	end
	
	self:PaimonDis()
end

function Quest1003:Start()
end

function Quest1003:OnDestroy()
end

return Quest1003