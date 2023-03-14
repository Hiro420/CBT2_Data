require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20020 = class("Quest20020", questActorProxy)

Quest20020.defaultAlias = "Quest20020"

local q20020Cfg = require('Quest/Client/Q20020ClientConfig')

local subIDs = q20020Cfg.SubIDs

-- Generated
function Quest20020:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
	self.subStartHandlers["2002001"] = self.OnSubStart2002001
	self.subStartHandlers["2002002"] = self.OnSubStart2002002
	self.subStartHandlers["2002003"] = self.OnSubStart2002003
end

function Quest20020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
	self.subFinishHandlers["2002001"] = self.OnSubFinish2002001
	self.subFinishHandlers["2002002"] = self.OnSubFinish2002002
	self.subFinishHandlers["2002003"] = self.OnSubFinish2002003
end

local timer = 0
local vec = {
    [1] = { posA = { x = 0, y = 0, z = 0}, posB = { x = 0, y = 0, z = 0}},
    [2] = { posA = { x = 0, y = 0, z = 0}, posB = { x = 0, y = 0, z = 0}},
    [3] = { posA = { x = 0, y = 0, z = 0}, posB = { x = 0, y = 0, z = 0}}
}
local angle = {}
local check_flag = 0
local match_flag = 0 

function Quest20020:TryCameraMatch()
    local isCameraMatch = false
    local cameraPos = self:GetCameraPos()
    local cameraRot = self:GetCameraEuler()

    for i=1,3 do
        match_flag = 1
        vec[i].posA = q20020Cfg.Ray[i].posA - cameraPos
        vec[i].posB = q20020Cfg.Ray[i].posB - cameraPos
        angle[i] = M.ForwardAngle(vec[i].posA, vec[i].posB)
        if angle[i] > 2 then
            match_flag = 0
            break
        end
    end      

    local isCameraMatch = false
    if match_flag == 1 then
        isCameraMatch = M.CompareEuler(cameraRot, q20020Cfg.CameraData.rot, 60)
    end 

    if isCameraMatch == true then           --Camera Match
        local quest = actorMgr:GetActor(q20020Cfg.ActorAlias)
        if quest ~= nil then
            quest:FinishQuestID(false, 2002002)
        end
    elseif check_flag == 1 then
            self:CallDelay(1, self.TryCameraMatch)
    end
end

--@region sub start handlers
function Quest20020:OnSubStart2002001(quest)
end

function Quest20020:OnSubStart2002002(quest)
    q20020Cfg.Start = false
    q20020Cfg.Finish = false
    check_flag = 1
    self:TryCameraMatch()
end

function Quest20020:OnSubStart2002003(quest)
    check_flag = 0
    self:ShowMessage("然后触发解谜成功后的事件~")
    local quest = actorMgr:GetActor(q20020Cfg.ActorAlias)
    if quest ~= nil then
        quest:FinishQuestID(false, 2002003)
    end
end
--@endregion

--@region sub finish handlers

function Quest20020:OnSubFinish2002001(quest)
end

function Quest20020:OnSubFinish2002002(quest)
end

function Quest20020:OnSubFinish2002003(quest)
end

--@endregion


--@region Invoke
function Quest20020:InvokeOnInteraction(param)
end


function Quest20020:Start()
end

function Quest20020:OnDestroy()
end

return Quest20020