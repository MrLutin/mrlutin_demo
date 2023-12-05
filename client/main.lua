-- Create all nightclub
AddEventHandler('Mrlutin:OnPlayerLoaded', function(playerData)
    Mrlutin.log('debug', playerData)
end)

-- Create Zone for current job only
AddEventHandler('Mrlutin:OnJobUpdate', function(job)
    Mrlutin.log('debug', job)
end)

-- Create Zone for current job only
AddEventHandler('Mrlutin:OnGangUpdate', function(gang)
    Mrlutin.log('debug', gang)
end)

-- Remove all zone created by the resource
AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        Mrlutin.log('warn', sting.format('%s is now stopped!', GetCurrentResourceName() ))
    end
end)
