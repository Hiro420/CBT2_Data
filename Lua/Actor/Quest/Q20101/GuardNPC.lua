require('Actor/ActorCommon')
local npcActorProxy = require('Actor/Npc/NpcActorProxy')

local GuardNPC = class("GuardNPC", npcActorProxy)

GuardNPC.defaultAlias = "GuardNPC"

function GuardNPC:Start()

end

return GuardNPC