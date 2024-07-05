function Debug(...)
    if not Config.debug then return end
    print("^2[FANCA_JAIL]^0", ...)
end

function GetCenterPoint(points)
    local sumX, sumY, sumZ = 0, 0, 0

    for _, point in ipairs(points) do
        sumX = sumX + point.x
        sumY = sumY + point.y
        sumZ = sumZ + point.z
    end

    local numPoints = #points
    local centerX = sumX / numPoints
    local centerY = sumY / numPoints
    local centerZ = sumZ / numPoints

    return vec3(centerX, centerY, centerZ)
end

function formatTime(seconds)
    local months = math.floor(seconds / 60)
    local days = seconds % 60

    local timeString = ""

    if months > 0 then
        timeString = timeString .. months .. " maand(en) "
    end

    if days > 0 then
        timeString = timeString .. days .. " dag(en)"
    end

    return timeString
end