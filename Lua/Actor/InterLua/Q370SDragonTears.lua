require('Actor/ActorCommon')
local interactionActorProxy = require('Actor/Interaction/InteractionActorProxy')

local TestInteractionActor = class("TestInteractionActor", interactionActorProxy)
local this = nil

function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

function print_r ( t )  
    local print_r_cache={}
    local function sub_print_r(t,indent)
        if (print_r_cache[tostring(t)]) then
            Print(indent.."*"..tostring(t))
        else
            print_r_cache[tostring(t)]=true
            if (type(t)=="table") then
                for pos,val in pairs(t) do
                    if (type(val)=="table") then
                        Print(indent.."["..pos.."] => "..tostring(t).." {")
                        sub_print_r(val,indent..string.rep(" ",string.len(pos)+8))
                        Print(indent..string.rep(" ",string.len(pos)+6).."}")
                    elseif (type(val)=="string") then
                        Print(indent.."["..pos..'] => "'..val..'"')
                    else
                        Print(indent.."["..pos.."] => "..tostring(val))
                    end
                end
            else
                Print(indent..tostring(t))
            end
        end
    end
    if (type(t)=="table") then
        Print(tostring(t).." {")
        sub_print_r(t,"  ")
        Print("}")
    else
        sub_print_r(t,"  ")
    end
end

function TestInteractionActor:OnInterStart(interCnt)
    local Qin = actorMgr:GetActor("1006")
    local Wendy = actorMgr:GetActor("1001")
    local Paimon = actorMgr:GetActor("1005")
    this = self

    -- if interCnt == 41 then
	-- 	print("Spawn Tears")
    --     globalActor:SpawnGadget(70300038, sceneData:GetDummyPoint(1004,"Q370Tears").pos, sceneData:GetDummyPoint(1004,"Q370Tears").rot, "Tears", 1004)
    
    -- end	
end

return TestInteractionActor