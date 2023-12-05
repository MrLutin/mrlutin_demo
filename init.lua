if not _VERSION:find('5.4') then
    error('^1Lua 5.4 must be enabled in the resource manifest!^0', 2)
end

if not GetResourceState('mrlutin_lib'):find('start') then
    StopResource( GetCurrentResourceName() ) -- force resource to be stopped
    return Mrlutin.error('^1mrlutin_lib should be started before this resource.^0')
end

-- load all translation data
Mrlutin.locale()

-- load data & function by context
if IsDuplicityVersion() then

    -- check if dependencies for some other resources
    local mrSuccess, msg = Mrlutin.checkDependency('mrlutin_lib', '1.0.0')
    local oxSuccess, msg = Mrlutin.checkDependency('ox_lib', '3.12.0')

    -- if dependencies not found
    if not mrSuccess or not oxSuccess then
        StopResource( GetCurrentResourceName() )
    end

end


