require('Actor/ActorCommon')
local npcActorProxy = require('Actor/Npc/NpcActorProxy')

local Fatuus = class("Fatuus", npcActorProxy)

Fatuus.defaultAlias = "Fatuus"

function Fatuus:Start()

end

return Fatuus