local baseClass = require("UAuto/TestCases/Avatar/Skill/AvatarSkillBase")
local UAutoLuaTestCase = class("TAPerfAvatarSkill", baseClass)
local self = UAutoLuaTestCase
self.TestFixture = "AvatarSkill"
self.Category = "TA测试_正式"
self.Description = "角色技能"

local avatarName = {
    "PlayerBoy","PlayerGirl","Anbo","Ayaka","Barbara","Beidou","Diluc","Kaeya","Lisa","Ningguang","Qin","Razor","Venti","Xiangling","Xiao"
}

self.OrderIndex = 0;

self.OrderIndex = self.OrderIndex + 1;

self.PlayerBoy = {
	Order = self.OrderIndex,
	Type = CaseType.MonoTest,
	Description = "技能-性能",
    Action = UAutoCoroutine(function()
        local gm_startStatUnit = string.format("StartStatUnit Test@Server-Case@AvatarSkill@%s", 'TAAvatarSkillTestDaily')
        yield_return(self.base:RunGM(gm_startStatUnit))
        for index,_ in ipairs(avatarName) do
            local avatar = avatarName[index]
            yield_return(self:AvatarSkillPerf(avatar))
            yield_return(self.base:RunGM("SnapshotStatUnit -1"))
        end
        yield_return(self.base:RunGM("stopstatunit"))
        local remoteFile = self.base:UploadStatFile()
        self.base:UploadToStatDB(remoteFile)
	end)
}



return self
