local notifyIcon = "handcuffs"
local negentig
local tachtig
local zeventig
local zestig
local vijftig
local veertig
local dertig
local twintig
local tien

RegisterNetEvent('fanca_jail:notify')
AddEventHandler('fanca_jail:notify', function(data)
    if type(data) == "table" then
        data.icon = notifyIcon
        lib.notify(data)
    end
end)

local function updateJailTime(seconds, message)
    Debug(message)
    LocalPlayer.state.fanca_jail = seconds
    negentig = math.floor(seconds * 0.9)
    tachtig = math.floor(seconds * 0.8)
    zeventig = math.floor(seconds * 0.7)
    zestig = math.floor(seconds * 0.6)
    vijftig = math.floor(seconds * 0.5)
    veertig = math.floor(seconds * 0.4)
    dertig = math.floor(seconds * 0.3)
    twintig = math.floor(seconds * 0.2)
    tien = math.floor(seconds * 0.1)
    lib.notify({ type = "warning",position = 'center-right', description = message, icon = notifyIcon })
end

lib.callback.register('fanca_jail:jail', function(seconds)
    local message = ("Je bent in de gevangenis, je straf bedraagt %s."):format(formatTime(seconds))
    updateJailTime(seconds, message)

    CreateThread(function()
        createZone()

        while LocalPlayer.state.fanca_jail > 0 and isPlayerInPrisonZone() do
            Wait(1000)

            if LocalPlayer.state.fanca_jail == tien then
                local timeString = formatTime(LocalPlayer.state.fanca_jail)
                print(("Je hebt nog %s te zitten."):format(timeString))
                lib.notify({ type = "info",position = 'center-right', description = ("Je hebt nog %s te zitten."):format(timeString), icon = notifyIcon })
            elseif LocalPlayer.state.fanca_jail == twintig then
                local timeString = formatTime(LocalPlayer.state.fanca_jail)
                print(("Je hebt nog %s te zitten."):format(timeString))
                lib.notify({ type = "info",position = 'center-right', description = ("Je hebt nog %s te zitten."):format(timeString), icon = notifyIcon })
            elseif LocalPlayer.state.fanca_jail == dertig then
                local timeString = formatTime(LocalPlayer.state.fanca_jail)
                print(("Je hebt nog %s te zitten."):format(timeString))
                lib.notify({ type = "info",position = 'center-right', description = ("Je hebt nog %s te zitten."):format(timeString), icon = notifyIcon })
            elseif LocalPlayer.state.fanca_jail == veertig then
                local timeString = formatTime(LocalPlayer.state.fanca_jail)
                print(("Je hebt nog %s te zitten."):format(timeString))
                lib.notify({ type = "info",position = 'center-right', description = ("Je hebt nog %s te zitten."):format(timeString), icon = notifyIcon })
            elseif LocalPlayer.state.fanca_jail == vijftig then
                local timeString = formatTime(LocalPlayer.state.fanca_jail)
                print(("Je hebt nog %s te zitten."):format(timeString))
                lib.notify({ type = "info",position = 'center-right', description = ("Je hebt nog %s te zitten."):format(timeString), icon = notifyIcon })
            elseif LocalPlayer.state.fanca_jail == zestig then
                local timeString = formatTime(LocalPlayer.state.fanca_jail)
                print(("Je hebt nog %s te zitten."):format(timeString))
                lib.notify({ type = "info",position = 'center-right', description = ("Je hebt nog %s te zitten."):format(timeString), icon = notifyIcon })
            elseif LocalPlayer.state.fanca_jail == zeventig then
                local timeString = formatTime(LocalPlayer.state.fanca_jail)
                print(("Je hebt nog %s te zitten."):format(timeString))
                lib.notify({ type = "info",position = 'center-right', description = ("Je hebt nog %s te zitten."):format(timeString), icon = notifyIcon })
            elseif LocalPlayer.state.fanca_jail == tachtig then
                local timeString = formatTime(LocalPlayer.state.fanca_jail)
                print(("Je hebt nog %s te zitten."):format(timeString))
                lib.notify({ type = "info",position = 'center-right', description = ("Je hebt nog %s te zitten."):format(timeString), icon = notifyIcon })
            elseif LocalPlayer.state.fanca_jail == negentig then
                local timeString = formatTime(LocalPlayer.state.fanca_jail)
                print(("Je hebt nog %s te zitten."):format(timeString))
                lib.notify({ type = "info",position = 'center-right', description = ("Je hebt nog %s te zitten."):format(timeString), icon = notifyIcon })
            end

            LocalPlayer.state.fanca_jail = LocalPlayer.state.fanca_jail - 1
        end
    end)
end)

lib.callback.register('fanca_jail:free', function()
    Debug("Je bent weer op vrije voeten.")
    LocalPlayer.state.fanca_jail = 0
    setPlayerOutsideTheZone(false)

    local message = isPlayerInPrisonZone() and "Je gevangenisstraf zit erop!" or "Je bent op de vlucht..."
    lib.notify({ type = isPlayerInPrisonZone() and "success" or "error",position = 'center-right', description = message, icon = notifyIcon })

    deleteZone()
end)

lib.callback.register('fanca_jail:setJailTime', function(seconds)
    local message = ("Je straf bedraagt nog %s."):format(formatTime(seconds))
    updateJailTime(seconds, message)
end)
