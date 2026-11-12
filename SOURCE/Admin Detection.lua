-- Recovered Luau source by ZeroVector
local AssetService = game:GetService("AssetService")
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local placeId = game.PlaceId
local jobId = game.JobId
local v = pcall
local flag = tostring
flag = type
local v2 = pairs
local v3 = math
local v4 = os
local v5 = task
local v6 = getgenv
local v7 = request
local v8 = string
local v9 = table
flag = Enum
flag = bit32
local gamePlacesAsync = AssetService:GetGamePlacesAsync()
local tbl = {}

while true do
    for k, v10 in gamePlacesAsync:GetCurrentPage() do
        tbl[v10.PlaceId] = true
    end

    if gamePlacesAsync.IsFinished then
        break
    end
    gamePlacesAsync:AdvanceToNextPageAsync()
end

local tbl2 = {}
local v10 = tbl[13083893317]
local lifeSentence = v10 or false
tbl2.lifeSentence = lifeSentence
local v11 = tbl[15784744207]
local valleyPrison = v11 or false
tbl2.valleyPrison = valleyPrison

if not tbl2.lifeSentence then
    flag = not tbl2.valleyPrison
end

local tbl3 = {kick = false, serverhop = true}
local tbl4 = {group = true, modCuffs = true, godMode = true}
local tbl5 = {group = true, modCuffs = false, godMode = true}
local tbl6 = {}
local n = 0

local function fn()
    if not v7 then
        return {}
    end
    local v12 = v4.time()
    if v12 - n < 300 and #tbl6 > 0 then
        return tbl6
    end
    local lifeSentence2 = tbl2.lifeSentence
    local str = lifeSentence2 and "1"

    if not str then
        local valleyPrison2 = tbl2.valleyPrison
        str = valleyPrison2 and "2" or nil
    end

    if not str then
        return {}
    end

    local v13, v14 = v(function()
        return v7({
            Url = v8.format("https://api.lasion.world/ticklemonster?type=%s", str), -- type 2 and u will get the staff team from vp, type 1 for life sentence version admin detection, the url is open src
            Method = "GET",
        })
    end)

    if not v13 or not v14 or v14.StatusCode ~= 200 then
        return tbl6
    end
    local data = HttpService:JSONDecode(v14.Body)
    if not data or not data.admins then
        return tbl6
    end
    tbl6 = {}

    for k, admin in v2(data.admins) do
        if admin.userId then
            tbl6[admin.userId] = true
        end
    end

    n = v12
    return tbl6
end

local function fn2(arg)
    local flag2 = fn()[arg.UserId] == true
    return flag2
end

local function fn3(arg)
    if arg.Backpack and arg.Backpack:FindFirstChild("Modcuffs") then
        return true
    end

    if arg.Character and arg.Character:FindFirstChild("Modcuffs") then
        return true
    end
    return false
end

local function fn4(arg)
    if not arg.Character then
        return false
    end
    local humanoid = arg.Character:FindFirstChildOfClass("Humanoid")
    local flag2 = humanoid and humanoid.MaxHealth == v3.huge
    return flag2
end

local function fn5(arg)
    arg:Kick()
end

local function fn6()
    local tbl7 = {}

    if v7 then
        local v12, v13 = v(v7, {
            Url = v8.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true", placeId),
        })

        if v12 and v13 then
            local data = HttpService:JSONDecode(v13.Body)

            if data and data.data then
                for k, v14 in v2(data.data) do
                    if v14.id ~= jobId and v14.playing and v14.maxPlayers and v14.maxPlayers - v14.playing >= 5 then
                        v9.insert(tbl7, v14.id)
                    end
                end
            end
        end
    end

    if #tbl7 > 0 then
        TeleportService:TeleportToPlaceInstance(placeId, tbl7[v3.random(#tbl7)], Players.LocalPlayer)
    end
end

local adminList = {}
local tbl7 = {}

local function fn7(arg)
    local str = arg.UserId .. "_" .. jobId
    if tbl7[str] then
        return
    end
    tbl7[str] = true
    adminList[arg.UserId] = arg.Name

    if v6().OnAdminDetected then
        v6().OnAdminDetected(arg)
    end
end

local function fn8(arg)
    if tbl2.valleyPrison then
        if tbl4.modCuffs and fn3(arg) then
            fn7(arg)
        end

        if tbl4.godMode and fn4(arg) then
            fn7(arg)
        end
    end

    if tbl2.lifeSentence then
        if tbl5.modCuffs and fn3(arg) then
            if tbl3.kick then
                fn5(arg)
            else
                fn7(arg)
            end
        end

        if tbl5.godMode and fn4(arg) then
            if tbl3.kick then
                fn5(arg)
            else
                fn7(arg)
            end
        end
    end
end

local function fn9(arg)
    if tbl2.lifeSentence and tbl5.group and fn2(arg) then
        if tbl3.kick then
            fn5(arg)
        else
            fn7(arg)
        end

        return
    end

    if tbl2.valleyPrison and tbl4.group and fn2(arg) then
        fn7(arg)
    end
end

v5.defer(function()
    fn()

    for k, player in v2(Players:GetPlayers()) do
        v5.spawn(fn9, player)
    end
end)

Players.PlayerAdded:Connect(function(player)
    v5.spawn(fn9, player)
end)

Players.PlayerRemoving:Connect(function(player)
    if adminList[player.UserId] then
        tbl7[player.UserId .. "_" .. jobId] = nil
    end

    adminList[player.UserId] = nil
end)

if tbl2.valleyPrison then
    v6().AdminList = adminList
end

if tbl2.lifeSentence then
    v6().AdminList = adminList
end

v5.spawn(function()
    while true do
        v5.wait(300)
        fn()
    end
end)

v5.spawn(function()
    local v12, v13, v14, v15, v16, v17, n2
    n2 = 1

    while true do
        if n2 == 1 then
            v5.wait(5)
            v12, v13, v14 = v2(Players:GetPlayers())
            v15 = v14
            n2 = 2
        elseif n2 == 2 then
            v16, v17 = v12(v13, v15)

            if v16 == nil then
                n2 = 1
            else
                n2 = 3
            end
        elseif n2 == 3 then
            v15 = v16
            fn8(v17)
            n2 = 2
        end
    end
end)

return {
    checkGroup = fn2,
    checkModCuffs = fn3,
    games = tbl2,
    kick = fn5,
    lsDetections = tbl5,
    method = tbl3,
    serverhop = fn6,
    vpDetections = tbl4,
    vpAdmins = adminList,
}
