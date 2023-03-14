require('Actor/ActorCommon')
local npcActorProxy = require('Actor/Npc/NpcActorProxy')

local WendyNew = class("WendyNew", npcActorProxy)

WendyNew.defaultAlias = "WendyNew"

function WendyNew:Start()

end

return WendyNew