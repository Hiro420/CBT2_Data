require('Actor/ActorCommon')
local questActorProxy = require('Actor/Quest/QuestActorProxy')

local Quest12002 = class("Quest12002", questActorProxy)

Quest12002.defaultAlias = "Quest12002"


local q12002Cfg = require('Quest/Client/Q12002ClientConfig')
local PaimonData=q12002Cfg.PaimonData
local XingQiuData=q12002Cfg.XingQiuData
local CarData1 = q12002Cfg.CarData1
local CarData2 = q12002Cfg.CarData2
local CarData3 = q12002Cfg.CarData3
local CarData4 = q12002Cfg.CarData4
local CarData5 = q12002Cfg.CarData5
local CarGagetData1 = q12002Cfg.CarGagetData1
local CarGagetData2 = q12002Cfg.CarGagetData2
local CarGagetData3 = q12002Cfg.CarGagetData3
local CarGagetData4 = q12002Cfg.CarGagetData4
local CarGagetData5 = q12002Cfg.CarGagetData5
local WinkGagetData1 = q12002Cfg.WinkGagetData1
local WinkGagetData2 = q12002Cfg.WinkGagetData2
local WinkGagetData3 = q12002Cfg.WinkGagetData3
local WinkGagetData4 = q12002Cfg.WinkGagetData4
local WinkGagetData5 = q12002Cfg.WinkGagetData5

-- Generated
function Quest12002:OnSubStartHandlerBuild()
	self.subStartHandlers = {}
	self.subStartHandlers["1200201"] = self.OnSubStart1200201
	self.subStartHandlers["1200202"] = self.OnSubStart1200202
	self.subStartHandlers["1200203"] = self.OnSubStart1200203
	self.subStartHandlers["1200204"] = self.OnSubStart1200204
	self.subStartHandlers["1200205"] = self.OnSubStart1200205
	self.subStartHandlers["1200206"] = self.OnSubStart1200206
	self.subStartHandlers["1200207"] = self.OnSubStart1200207
    self.subStartHandlers["1200208"] = self.OnSubStart1200208
    self.subStartHandlers["1200209"] = self.OnSubStart1200209
	self.subStartHandlers["1200210"] = self.OnSubStart1200210
	self.subStartHandlers["1200211"] = self.OnSubStart1200211
	self.subStartHandlers["1200212"] = self.OnSubStart1200212
	self.subStartHandlers["1200213"] = self.OnSubStart1200213
	self.subStartHandlers["1200214"] = self.OnSubStart1200214
	self.subStartHandlers["1200215"] = self.OnSubStart1200215
	self.subStartHandlers["1200216"] = self.OnSubStart1200216
	self.subStartHandlers["1200217"] = self.OnSubStart1200217
	self.subStartHandlers["1200218"] = self.OnSubStart1200218
	self.subStartHandlers["1200219"] = self.OnSubStart1200219
	self.subStartHandlers["1200220"] = self.OnSubStart1200220
end

function Quest12002:OnSubFinishHandlerBuild()
	self.subFinishHandlers = {}
	self.subFinishHandlers["1200201"] = self.OnSubFinish1200201
	self.subFinishHandlers["1200202"] = self.OnSubFinish1200202
	self.subFinishHandlers["1200203"] = self.OnSubFinish1200203
	self.subFinishHandlers["1200204"] = self.OnSubFinish1200204
	self.subFinishHandlers["1200205"] = self.OnSubFinish1200205
	self.subFinishHandlers["1200206"] = self.OnSubFinish1200206
	self.subFinishHandlers["1200207"] = self.OnSubFinish1200207
	self.subFinishHandlers["1200208"] = self.OnSubFinish1200208
	self.subFinishHandlers["1200209"] = self.OnSubFinish1200209
	self.subFinishHandlers["1200210"] = self.OnSubFinish1200210
	self.subFinishHandlers["1200211"] = self.OnSubFinish1200211
	self.subFinishHandlers["1200212"] = self.OnSubFinish1200212
	self.subFinishHandlers["1200213"] = self.OnSubFinish1200213
	self.subFinishHandlers["1200214"] = self.OnSubFinish1200214
	self.subFinishHandlers["1200215"] = self.OnSubFinish1200215
	self.subFinishHandlers["1200216"] = self.OnSubFinish1200216
	self.subFinishHandlers["1200217"] = self.OnSubFinish1200217
	self.subFinishHandlers["1200218"] = self.OnSubFinish1200218
	self.subFinishHandlers["1200219"] = self.OnSubFinish1200219
	self.subFinishHandlers["1200220"] = self.OnSubFinish1200220
end


---sub start & finish 内调用的函数


local cardata = {

	CarData1 ,
	CarData2 ,
	CarData3 ,
	CarData4 ,
	CarData5 ,

}

function Quest12002:Guild()		
	local currLen = {}
	for i = 1,5 do
		local avatarPos = actorUtils.GetAvatarPos()
		local carpos = cardata[i].Pos
		local carstate = cardata[i].state
		--print(avatarPos, carpos , carstate)
		if carstate == true then
			currLen[i] = M.Dist(avatarPos,carpos)	
		end
	end
	--print(currLen[1],currLen[2],currLen[3],currLen[4],currLen[5])
	local key12002 = 1
	local min12002 = 10000
		for i=1, 5  do
			if 	currLen[i] ~= nil then
			 	if currLen[i] < min12002 then
					key12002, min12002 = i, currLen[i]
			 	end
			end
		end
	--print(key, min)
	TargetPos = cardata[key12002].Pos
	self:OpenCompass()
	self:CheckLocation()
	
end
function Quest12002:CheckLocation()	
	self:CallDelay(2, self.Guild)
end

function Quest12002:OpenCompass()
    Quest12002:CallOnElemViewOpen(
        function()
            if TargetPos ~= nil then
                local PlayerPos = actorUtils.GetAvatarPos()
                local CompassVector = {
                    x = TargetPos.x - PlayerPos.x,
                    y = 0,
                    z = TargetPos.z - PlayerPos.z,
                }
                
                local playerVector = actorUtils.GetAvatarForward()
                local distance = 2
                local CompassPos = actorUtils.GetAvatarPos()
                CompassPos.x = CompassPos.x + playerVector.x * distance
                CompassPos.y = CompassPos.y 
				CompassPos.z = CompassPos.z + playerVector.z * distance
				local quest = actorMgr:GetActor(q12002Cfg.ActorAlias)
				quest:SpawnGadgetByIdWithPos(1200214, 70700006, 1, CompassPos, M.Dir2Euler(CompassVector))
               -- globalActor:SpawnGadget(70700006, CompassPos, M.Dir2Euler(CompassVector), "Q10101Compass")
                Quest12002.CloseCompass()
            end
        end
    )
end

function Quest12002:CloseCompass()
    print("CloseCompass")
    Quest12002:CallOnElemViewClose(
        function()
            print("delete compass")
            globalActor:UnSpawn("Q10101Compass")
            Quest12002.OpenCompass()
        end
    )
end
function Quest12002:PaimonVanish()
	print("paimon vanish")
	local paimon = self:GetQuestNpcActor(PaimonData.Alias)
	paimon:AirModeOff()
	--paimon:VanishKeep()
	if paimon ~= nil then
		paimon:DestroyWithDisappear(false)
	end
end

function Quest12002:XingQiuDestroy()
    local XingQiu = self:GetQuestNpcActor(XingQiuData.Alias)
	if XingQiu ~= nil then
		XingQiu:Destroy(false)
	end
end




--@region sub sxtart & finish handlers
---按流程触发顺序

function Quest12002:OnSubStart1200201(quest)
    print("********1200201 start")
	self:ExitSneakMode()
	--local xingqiu = self:GetQuestNpcActor(XingQiuData.Alias)
	--xingqiu:DoFreeStyle(1330)
	actorMgr:CreateActorWithPos("Q1200201Trigger", "Actor/Gadget/Q1200201Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Q1200201Trigger").pos, sceneData:GetDummyPoint(3,"Q1200201Trigger").rot, true, false)
end

function Quest12002:OnSubFinish1200201(quest)
	print("********1200201 finish")
	
	self:NarratorOnlyTask(q12002Cfg.NarratorData1)
end

function Quest12002:OnSubStart1200202(quest)----废除

    print("********1200202 start")
    --actorMgr:CreateActorWithPos(PaimonData.Alias, PaimonData.Script, PaimonData.ID, 0, PaimonData.Pos1, PaimonData.Dir1, true, false, 3)

end
function Quest12002:OnSubFinish1200202(quest)
    --self:ActionSafeCall(self.PaimonVanish)
end


function Quest12002:OnSubStart1200203(quest)
	print("********1200203 start")


end


function Quest12002:OnSubFinish1200203(quest)
	print("********1200203 Finish")
	self:ActionSafeCall(self.PaimonVanish)
	self:NarratorOnlyTask(q12002Cfg.NarratorData5)
end

function Quest12002:OnSubStart1200204(quest)
	print("********1200204 start")

end

function Quest12002:OnSubFinish1200204(quest)
    print("********1200204 Finish")

end
function Quest12002:OnSubStart1200205(quest)

end

function Quest12002:OnSubFinish1200205(quest)

end


function Quest12002:OnSubStart1200206(quest)

end

function Quest12002:OnSubFinish1200206(quest)


end
function Quest12002:OnSubStart1200215(quest)

end

function Quest12002:OnSubFinish1200215(quest)

end
function Quest12002:OnSubStart1200207(quest)

	self:NarratorOnlyTask(q12002Cfg.NarratorData2)
    actorMgr:CreateActorWithPos("Q1200207Trigger", "Actor/Gadget/Q1200207Trigger", 70900002, 0, sceneData:GetDummyPoint(3,"Npc1628Born").pos, sceneData:GetDummyPoint(3,"Npc1628Born").rot, true, false)
end

function Quest12002:OnSubFinish1200207(quest)
end
function Quest12002:OnSubStart1200208(quest)

end

function Quest12002:OnSubFinish1200208(quest)
	self:ActionSafeCall(self.PaimonVanish)

	self:NarratorOnlyTask(q12002Cfg.NarratorData3)
end

function Quest12002:OnSubStart1200209(quest)---生成小车1

	self:CreateQuestNpc(quest, CarData1.ID)
	self:SpawnGadget(quest, 71700047, 2)
	--globalActor:SpawnGadget(CarGagetData1.ID, CarGagetData1.Pos1, CarGagetData1.Dir1, CarGagetData1.Alias,3)
	local winkpos1 = WinkGagetData1.Pos1
	--winkpos1.y = winkpos1.y + 1
	self:SpawnGadgetWithPos(quest, 71700053, 1, winkpos1, M.Dir2Euler(winkpos1))
	--globalActor:SpawnGadget(WinkGagetData1.ID, winkpos1, WinkGagetData1.Dir1, WinkGagetData1.Alias,3)
	print("********1200209 SpawnItem")
	self:Guild()
end

function Quest12002:OnSubFinish1200209(quest)
	CarData1.state = false
	globalActor:UnSpawn(WinkGagetData1.Alias)
end

function Quest12002:OnSubStart1200216(quest)

end

function Quest12002:OnSubFinish1200216(quest)

end


function Quest12002:OnSubStart1200212(quest)---生成小车2
	self:CreateQuestNpc(quest, CarData2.ID)
	self:SpawnGadget(quest, 71700047, 2)
	--globalActor:SpawnGadget(CarGagetData2.ID, CarGagetData2.Pos1, CarGagetData2.Dir1, CarGagetData2.Alias,3)
	local winkpos2 = WinkGagetData2.Pos1
	--winkpos2.y = winkpos2.y + 1
	self:SpawnGadgetWithPos(quest, 71700053, 1, winkpos2,  M.Dir2Euler(winkpos2))
	--globalActor:SpawnGadget(WinkGagetData2.ID, winkpos2, WinkGagetData2.Dir1, WinkGagetData2.Alias,3)
	print("********1200209 SpawnItem")
	self:Guild()
end

function Quest12002:OnSubFinish1200212(quest)
	CarData2.state = false
	globalActor:UnSpawn(WinkGagetData2.Alias)
end
function Quest12002:OnSubStart1200217(quest)

end

function Quest12002:OnSubFinish1200217(quest)

end
function Quest12002:OnSubStart1200213(quest)---生成小车3
	self:CreateQuestNpc(quest, CarData3.ID)
	self:SpawnGadget(quest, 71700047, 2)
	--globalActor:SpawnGadget(CarGagetData3.ID, CarGagetData3.Pos1, CarGagetData3.Dir1, CarGagetData3.Alias,3)
	local winkpos3 = WinkGagetData3.Pos1
	--winkpos3.y = winkpos3.y + 1
	self:SpawnGadgetWithPos(quest, 71700053, 1, winkpos3,  M.Dir2Euler(winkpos3))
	--globalActor:SpawnGadget(WinkGagetData3.ID, winkpos3, WinkGagetData3.Dir1, WinkGagetData3.Alias,3)
	print("********1200209 SpawnItem")
	self:Guild()
end

function Quest12002:OnSubFinish1200213(quest)
	CarData3.state = false
	globalActor:UnSpawn(WinkGagetData3.Alias)
end

function Quest12002:OnSubStart1200219(quest)---生成小车4
	self:CreateQuestNpc(quest, CarData4.ID)
	self:SpawnGadget(quest, 71700047, 2)
	--globalActor:SpawnGadget(CarGagetData4.ID, CarGagetData4.Pos1, CarGagetData4.Dir1, CarGagetData4.Alias,3)
	local winkpos4 = WinkGagetData4.Pos1
	--winkpos4.y = winkpos4.y + 1
	self:SpawnGadgetWithPos(quest, 71700053, 1, winkpos4,  M.Dir2Euler(winkpos4))
	--globalActor:SpawnGadget(WinkGagetData4.ID, winkpos4, WinkGagetData4.Dir1, WinkGagetData4.Alias,3)
	print("********1200209 SpawnItem")
	self:Guild()
end

function Quest12002:OnSubFinish1200219(quest)
	CarData4.state = false
	globalActor:UnSpawn(WinkGagetData4.Alias)
end

function Quest12002:OnSubStart1200220(quest)---生成小车5
	self:CreateQuestNpc(quest, CarData5.ID)
	self:SpawnGadget(quest, 71700047, 2)
	--globalActor:SpawnGadget(CarGagetData5.ID, CarGagetData5.Pos1, CarGagetData5.Dir1, CarGagetData5.Alias,3)
	local winkpos5 = WinkGagetData5.Pos1
	--winkpos5.y = winkpos5.y + 1
	self:SpawnGadgetWithPos(quest, 71700053, 1, winkpos5,  M.Dir2Euler(winkpos5))
	--globalActor:SpawnGadget(WinkGagetData5.ID, winkpos5, WinkGagetData5.Dir1, WinkGagetData5.Alias,3)
	print("********1200209 SpawnItem")
	self:Guild()
end

function Quest12002:OnSubFinish1200220(quest)
	CarData5.state = false
	globalActor:UnSpawn(WinkGagetData5.Alias)
end
function Quest12002:OnSubStart1200214(quest)
	
end

function Quest12002:OnSubFinish1200214(quest)

end

function Quest12002:OnSubStart1200210(quest)
	key12002 = nil
	self:NarratorOnlyTask(q12002Cfg.NarratorData4)


end

function Quest12002:OnSubFinish1200210(quest)
	self:ActionSafeCall(self.PaimonVanish)
	globalActor:UnSpawn(CarData1.Alias)
	globalActor:UnSpawn(CarData2.Alias)
	globalActor:UnSpawn(CarData3.Alias)
	globalActor:UnSpawn(CarData4.Alias)
	globalActor:UnSpawn(CarData5.Alias)

	globalActor:UnSpawn(CarGagetData1.Alias)
	globalActor:UnSpawn(CarGagetData2.Alias)
	globalActor:UnSpawn(CarGagetData3.Alias)
	globalActor:UnSpawn(CarGagetData4.Alias)
	globalActor:UnSpawn(CarGagetData5.Alias)
	globalActor:UnSpawn("Q10101Compass")
end
function Quest12002:OnSubStart1200211(quest)

	--local xingqiu = self:GetQuestNpcActor(XingQiuData.Alias)
	--xingqiu:DoFreeStyle(1330)
	--self:setbook()
end

function Quest12002:OnSubFinish1200211(quest)
	self:ActionSafeCall(self.PaimonVanish)
end
--@endregion

function Quest12002:Start()
end

function Quest12002:OnDestroy()
end

return Quest12002