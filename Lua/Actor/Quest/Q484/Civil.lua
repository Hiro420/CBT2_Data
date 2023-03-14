require('Actor/ActorCommon')
local npcActorProxy = require('Actor/Npc/NpcActorProxy')

local Civil = class("Civil", npcActorProxy)

Civil.defaultAlias = "Civil"

function Civil:Start()

end

return Civil