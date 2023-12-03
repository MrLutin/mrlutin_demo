-- Load all local data
Mrlutin.locale()

-- check if dependencies for some other resources
Mrlutin.checkDependency('mrlutin_lib', '1.0.0')
Mrlutin.checkDependency('ox_lib', '3.12.0')

-- Create custom peds to be sync on the network
-- This will create a ped in the MRPD
Mrlutin.createPed({
    label = 'Testing',
    model = 's_m_y_cop_01',
    targetEvent = "demo:peds",
    coords = vector4(442.7895, -981.7828, 30.6895, 82.3160),
    freezed = true,
    invincible = true
})

-- Command for admin only
RegisterCommand("demo", function(source, args, rawCommand)
    Mrlutin.notify({
        id = 'demo',
        type = "success",
        sound = "demo",
        title = 'Demo Notification',
        description = "Demo notification trigged with the command!",
        duration = 10000
    })
end, false)

