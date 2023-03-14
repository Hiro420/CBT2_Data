require('Actor/ActorCommon')
local npcActorProxy = require('Actor/Npc/NpcActorProxy')

local RandomNpc = class("RandomNpc", npcActorProxy)

RandomNpc.defaultAlias = "RandomNpc"

function RandomNpc:Start()

end

return RandomNpc