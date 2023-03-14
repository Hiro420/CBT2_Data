require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest20060 = class("Quest20060", questActorProxy)

Quest20060.defaultAlias = "Quest20060"

--local q20060Cfg = require('Quest/Client/Q20060ClientConfig')
--local PaimonData=q20060Cfg.NPCData01

local q20060Cfg

function Quest20060:OnDataLoaded()
	q20060Cfg = self.clientData
end

-- Generated
--@region sub start & finish handlers
function Quest20060:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["2006001"] = self.OnSubStart2006001
	self.subStartHandlers["2006002"] = self.OnSubStart2006002
	self.subStartHandlers["2006003"] = self.OnSubStart2006003
	self.subStartHandlers["2006004"] = self.OnSubStart2006004
	self.subStartHandlers["2006005"] = self.OnSubStart2006005
	self.subStartHandlers["2006006"] = self.OnSubStart2006006
	self.subStartHandlers["2006007"] = self.OnSubStart2006007
	self.subStartHandlers["2006008"] = self.OnSubStart2006008
	self.subStartHandlers["2006009"] = self.OnSubStart2006009
	self.subStartHandlers["2006010"] = self.OnSubStart2006010	
end

function Quest20060:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["2006001"] = self.OnSubFinish2006001
	self.subFinishHandlers["2006002"] = self.OnSubFinish2006002
	self.subFinishHandlers["2006003"] = self.OnSubFinish2006003
	self.subFinishHandlers["2006004"] = self.OnSubFinish2006004
	self.subFinishHandlers["2006005"] = self.OnSubFinish2006005
	self.subFinishHandlers["2006006"] = self.OnSubFinish2006006
	self.subFinishHandlers["2006007"] = self.OnSubFinish2006007
	self.subFinishHandlers["2006008"] = self.OnSubFinish2006008
	self.subFinishHandlers["2006009"] = self.OnSubFinish2006009
	self.subFinishHandlers["2006010"] = self.OnSubFinish2006010	
end

function Quest20060:OnSubFailedHandlerBuild()
	self.subFailedHandlers = {}
	self.subFailedHandlers["2006001"] = self.OnSubFailed2006001
	self.subFailedHandlers["2006002"] = self.OnSubFailed2006002
	self.subFailedHandlers["2006003"] = self.OnSubFailed2006003
	self.subFailedHandlers["2006004"] = self.OnSubFailed2006004
	self.subFailedHandlers["2006005"] = self.OnSubFailed2006005
	self.subFailedHandlers["2006006"] = self.OnSubFailed2006006
	self.subFailedHandlers["2006007"] = self.OnSubFailed2006007
	self.subFailedHandlers["2006008"] = self.OnSubFailed2006008
	self.subFailedHandlers["2006009"] = self.OnSubFailed2006009
	self.subFailedHandlers["2006010"] = self.OnSubFailed2006010
end

--[[
    @desc: 传送相关逻辑
    author:{yejz}
    time:2019-10-16 17:59:59
    @return:
]]
---------------------------------------------------------------------------

---------------------------------------------------------------------------------------------

---sub start & finish 内调用的函数
function Quest20060:OnSubStart2006001(quest)

end

function Quest20060:OnSubFinish2006001(quest)

end

function Quest20060:OnSubFailed2006001(quest)
--	local npc_alias = actorMgr:GetActor(PaimonData.Npc)
--	if npc_alias ~= nil then
--		npc_alias:DestroyWithDisappear(false)
--	end
end

function Quest20060:OnSubStart2006002(quest)
	self:NarratorOnlyTask(q20060Cfg.FlowerNotEnough)
end

function Quest20060:OnSubFinish2006002(quest)
	self:NarratorOnlyTask(q20060Cfg.FlowerEnough)
end

function Quest20060:OnSubFailed2006002(quest)

end

function Quest20060:OnSubStart2006003(quest)
	
end

function Quest20060:OnSubFinish2006003(quest)

end

function Quest20060:OnSubFailed2006003(quest)

end

function Quest20060:OnSubStart2006004(quest)
	self:NarratorOnlyTask(q20060Cfg.FlowerEnough2)
end

function Quest20060:OnSubFinish2006004(quest)

end

function Quest20060:OnSubFailed2006004(quest)

end

function Quest20060:OnSubStart2006005(quest)
	
end

function Quest20060:OnSubFinish2006005(quest)

end

function Quest20060:OnSubFailed2006005(quest)

end

function Quest20060:OnSubStart2006006(quest)
	actorMgr:CreateActorWithPos("Q20060Trigger", "Actor/Gadget/Q20060Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "NpcMaleInsomniaStand10Born").pos, sceneData:GetDummyPoint(3, "NpcMaleInsomniaStand10Born").rot, true)
end

function Quest20060:OnSubFinish2006006(quest)
	local trigg_alias = actorMgr:GetActor("Q20060Trigger")
	if trigg_alias ~= nil then
		trigg_alias:DestroyWithDisappear(false)
	end 
end

function Quest20060:OnSubFailed2006006(quest)
	local trigg_alias = actorMgr:GetActor("Q20060Trigger")
	if trigg_alias ~= nil then
		trigg_alias:DestroyWithDisappear(false)
	end 
end

function Quest20060:OnSubStart2006007(quest)

end

function Quest20060:OnSubFinish2006007(quest)

end

function Quest20060:OnSubFailed2006007(quest)

end

function Quest20060:OnSubStart2006008(quest)

end

function Quest20060:OnSubFinish2006008(quest)

end

function Quest20060:OnSubFailed2006008(quest)

end

function Quest20060:OnSubStart2006009(quest)
	self:ShowBlackScreen(0.5, 1, 0.5,nil,
	    function (self)
			self:RequestInteractionForceAlias("Npc1473")
		end
	)	
end

function Quest20060:OnSubFinish2006009(quest)

end
function Quest20060:OnSubFailed2006009(quest)

end

function Quest20060:InvokeOnInteraction(param)
--	if param == 1 then
--		local npc_alias = actorMgr:GetActor(PaimonData.Npc)
--		if npc_alias ~= nil then
--			npc_alias:DestroyWithDisappear(false)
--		end
--	end
end
--@endregion

function Quest20060:Start()
end

function Quest20060:OnDestroy()
end

return Quest20060