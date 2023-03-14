require('Actor/ActorCommon')
local npcActorProxy = require('Actor/Npc/NpcActorProxy')

local AutoChessJudge = class("AutoChessJudge", npcActorProxy)

AutoChessJudge.defaultAlias = "AutoChessJudge"

function AutoChessJudge:Start()

end

return AutoChessJudge