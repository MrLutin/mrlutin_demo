local Target = exports[Config.Target]

-- Demo option ( NOT FOR USE )
local targetOption = {{
  label = 'Test notification',
  icon = 'fas fa-phone',
  action = function(data)
      return Mrlutin.notify({
          id = 'demo',
          type = "success",
          sound = "demo",
          title = 'Demo Notification',
          description = "Demo notification trigged with the command!",
          duration = 10000
      })
  end
}}

-- After creation of the ped this event will be trigged
RegisterNetEvent('demo:peds', function(pedData)
    -- if you want to bind to the created entity
    if pedData.entity and Config.Target == "qb-target" then
        Target:AddTargetEntity( pedData.entity , {
            options = targetOption,
            distance = 1.0
        })
    end

    -- if you want to bind to the created netId
    if pedData.netId and Config.Target == "ox_target" then
        Target:addEntity(pedData.netId, targetOption)
    end
end)