local util = require ('Base/util')

local cs_coroutine_runner = nil
if AutoTestObject ~= nil then
    cs_coroutine_runner = CS.UnityEngine.GameObject.Find("AutoTestObject"):GetComponent("AutoTestDriver")
end

if AutoTestObject == nil then
	cs_coroutine_runner = CS.UnityEngine.GameObject.Find("GameManager"):GetComponent("AutoTestDriver")
end

local function InFilter(str)
    local filters = {"WaitForEndOfFrame","WaitForSeconds","MouseClick","MoveToPosition","WaitFrames","RunGM"}
    for i = 1, #filters do
        if(string.find( str,filters[i])~=nil) then
            return true
        end
    end
    return false
    

end

local function async_yield_return(to_yield, cb)
    if(InFilter(tostring(to_yield))==false) then
        CS.MoleMole.SuperDebug.Log(CS.MoleMole.SuperDebug.AUTO_TEST,to_yield);
    end
    cs_coroutine_runner:YieldAndCallback(to_yield, cb)
end



return {
    yield_return = util.async_to_sync(async_yield_return),
    async_yield_return = async_yield_return
}
