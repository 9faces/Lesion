-- couldnt get the api lasion rename, but here it is son

source by ZeroVectorlocal Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local localPlayer = Players.LocalPlayer
local currentCamera = workspace.CurrentCamera
local humanoidRootPart = nil
local humanoid = nil
local tbl = {}

local function fn(arg, arg2)
    if tbl[arg] then
        tbl[arg]:Disconnect()
    end

    tbl[arg] = arg2
end

local function fn2(character)
    humanoidRootPart = character:WaitForChild("HumanoidRootPart", 10)
    humanoid = character:WaitForChild("Humanoid", 10)

    if humanoid then
        fn(
            "lphumDied",
            humanoid.Died:Connect(
                function()
                    humanoidRootPart = nil
                    humanoid = nil
                end
            )
        )
    end
end

fn("lpCharAdded", localPlayer.CharacterAdded:Connect(fn2))

fn(
    "lpCharRemoving",
    localPlayer.CharacterRemoving:Connect(
        function()
            humanoidRootPart = nil
            humanoid = nil
        end
    )
)

if localPlayer.Character then
    fn2(localPlayer.Character)
end

local lib, v = loadstring(game:HttpGet("https://api.lasion.world/u/rename"))()

local tbl2 = {
    Booking = true, Escapee = true, ["Maximum Security"] = true, ["Medium Security"] = true,
    ["Minimum Security"] = true,
}

local esp = {
    Name = false, Health = false, Tool = false, Distance = false, Wanted = false, Team = false,
    Invulnerable = false, Box = false, BoxType = "2d", TeamColor = false, Chams = false,
    Tracers = false, TracerFrom = "bottom", Radar = false, TeamFilter = {}, Vents = false,
    Materials = false, DroppedTools = false, Garbage = false, Ropes = false,
    NameColor = Color3.new(1, 1, 1), ToolColor = Color3.new(1, 1, 1),
    TeamTextColor = Color3.new(1, 1, 1), DistanceColor = Color3.new(1, 1, 1),
    WantedColor = Color3.new(1, 1, 1), InvulnerableColor = Color3.new(1, 1, 1),
    BoxColor = Color3.new(1, 1, 1), ChamsColor = Color3.fromRGB(119, 120, 255),
    TracerColor = Color3.new(1, 1, 1), VentColor = Color3.fromRGB(220, 50, 50),
    MaterialColor = Color3.fromRGB(220, 50, 50), DroppedToolColor = Color3.fromRGB(220, 50, 50),
    GarbageColor = Color3.fromRGB(220, 50, 50), RopeColor = Color3.fromRGB(220, 50, 50),
    TextFont = 2, TextSize = 13, WorldDistance = 1000, PlayerDistance = 1000,
}

getgenv().ESP = esp
local tbl3 = {}
local tbl4 = {}

local function fn3(arg)
    local v2 = nil

    if arg.bbg then
        arg.bbg:Destroy()
        arg.bbg = nil
        arg.outlines = nil
        arg.boxsides = nil
    end

    if arg.healthbbg then
        arg.healthbbg:Destroy()
        arg.healthbbg = nil
        arg.healthbar = nil
    end

    if arg.highlight then
        local highlight = arg.highlight

        while true do
            local v3, v4 = highlight(nil, v2)
            if v3 == nil then
                break
            end
            v2 = v3

            pcall(
                function()
                    v4:Destroy()
                end
            )
        end

        v2 = nil
        arg.highlight = nil
    end

    if arg.tracer then
        arg.tracer.outline:Remove()
        arg.tracer.fill:Remove()
        arg.tracer = nil
    end

    if arg.textlabels then
        local textlabels = arg.textlabels

        while true do
            local v3, v4 = textlabels(nil, v2)
            if v3 == nil then
                break
            end
            v2 = v3

            if v4 then
                v4:Remove()
            end
        end

        arg.textlabels = {}
    end
end

local function createScreenGui()
    local screenGui = Instance.new("ScreenGui")
    v(screenGui)
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    screenGui.ResetOnSpawn = false
    screenGui.Parent = CoreGui
    return screenGui
end

local v2 = createScreenGui()
local vector2 = Vector2.new(currentCamera.ViewportSize.X / 2, currentCamera.ViewportSize.Y - 1)

fn(
    "camViewportChanged",
    currentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(
        function()
            vector2 = Vector2.new(
                currentCamera.ViewportSize.X / 2, currentCamera.ViewportSize.Y - 1
            )
        end
    )
)

local function fn4(arg, arg2)
    task.spawn(
        function()
            while tbl3[arg] == arg2 do
                local serverVariables = arg:FindFirstChild("ServerVariables")
                local character = serverVariables and serverVariables:FindFirstChild("Character")
                local health = character and character:FindFirstChild("Health")
                local invulnerabilityTime = health and health:FindFirstChild("InvulnerabilityTime")

                if invulnerabilityTime and arg2.invulnobj ~= invulnerabilityTime then
                    if arg2.invulnconn then
                        arg2.invulnconn:Disconnect()
                        arg2.invulnconn = nil
                    end

                    local value = invulnerabilityTime.Value
                    local invuln = typeof(value) == "number" and value or 0
                    arg2.invuln = invuln
                    arg2.invulnobj = invulnerabilityTime

                    arg2.invulnconn = invulnerabilityTime:GetPropertyChangedSignal("Value"):Connect(
                        function()
                            local value2 = invulnerabilityTime.Value
                            local invuln2 = typeof(value2) == "number" and value2 or 0
                            arg2.invuln = invuln2
                        end
                    )
                elseif not invulnerabilityTime then
                    arg2.invuln = 0
                    arg2.invulnobj = nil
                end

                task.wait(1)
            end
        end
    )
end

local function fn5(arg)
    if not esp.TeamColor or not arg.Team then
        return nil
    end
    local teamColor = arg.Team.TeamColor
    local color = teamColor and teamColor.Color or nil
    return color
end

local function createHighlight(adornee, fillColor)
    local highlight = Instance.new("Highlight")
    lib(highlight)
    highlight.FillTransparency = 1
    highlight.OutlineTransparency = 0
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Adornee = adornee
    highlight.FillColor = fillColor
    highlight.OutlineColor = fillColor
    highlight.Parent = CoreGui
    return highlight
end

local function fn6(player)
    if player == localPlayer or tbl3[player] then
        return
    end

    local tbl5 = {
        hrp = nil, hum = nil, head = nil, torso = nil, larm = nil, rarm = nil, lleg = nil,
        rleg = nil, equippedtool = "None", bbg = nil, outlines = nil, boxsides = nil,
        healthbbg = nil, healthbar = nil, highlight = nil, tracer = nil, textlabels = {},
        connections = {}, charconns = {}, lasthealth = 100, invuln = 0, invulnobj = nil,
        invulnconn = nil,
    }

    tbl3[player] = tbl5

    local function fn7(arg)
        task.wait(0.1)
        if player.Character ~= arg then
            return
        end
        local charconns = tbl5.charconns

        for k, v3 in charconns do
            v3:Disconnect()
        end

        local v3 = nil
        table.clear(tbl5.charconns)
        tbl5.hrp = arg:FindFirstChild("HumanoidRootPart")
        tbl5.hum = arg:FindFirstChild("Humanoid")
        tbl5.head = arg:FindFirstChild("Head")
        tbl5.torso = arg:FindFirstChild("Torso")
        tbl5.larm = arg:FindFirstChild("Left Arm")
        tbl5.rarm = arg:FindFirstChild("Right Arm")
        tbl5.lleg = arg:FindFirstChild("Left Leg")
        tbl5.rleg = arg:FindFirstChild("Right Leg")

        if tbl5.bbg then
            tbl5.bbg.Adornee = tbl5.hrp
        end

        if tbl5.healthbbg then
            tbl5.healthbbg.Adornee = tbl5.hrp
        end

        if tbl5.highlight then
            local highlight = tbl5.highlight

            while true do
                local v4, v5 = highlight(nil, v3)
                if v4 == nil then
                    break
                end
                v3 = v4

                pcall(
                    function()
                        v5:Destroy()
                    end
                )
            end

            tbl5.highlight = nil
        end

        local function fn8()
            local tool = arg:FindFirstChildOfClass("Tool")
            local name = tool and tool.Name or "None"
            tbl5.equippedtool = name
        end

        fn8()

        table.insert(
            tbl5.charconns,
            arg.ChildAdded:Connect(
                function(child)
                    if child:IsA("Tool") then
                        fn8()
                    end
                end
            )
        )

        table.insert(
            tbl5.charconns,
            arg.ChildRemoved:Connect(
                function(child)
                    if child:IsA("Tool") then
                        fn8()
                    end
                end
            )
        )

        table.insert(
            tbl5.charconns,
            arg.ChildAdded:Connect(
                function(child)
                    if child:IsA("BasePart") and esp.Chams and tbl5.highlight and #tbl5.highlight > 0 then
                        local insert = table.insert
                        local highlight = tbl5.highlight
                        local v4 = fn5(player)
                        local chamsColor = v4 or esp.ChamsColor
                        insert(highlight, createHighlight(child, chamsColor))
                    end
                end
            )
        )
    end

    local function fn8(character)
        task.spawn(
            function()
                while player.Character == character do
                    local humanoidRootPart2 = character:WaitForChild("HumanoidRootPart", 5)
                    local humanoid2 = character:WaitForChild("Humanoid", 5)
                    if player.Character ~= character then
                        return
                    end

                    if humanoidRootPart2 and humanoid2 then
                        fn7(character)
                        return
                    end
                    continue
                end
            end
        )
    end

    table.insert(tbl5.connections, player.CharacterAdded:Connect(fn8))

    table.insert(
        tbl5.connections,
        player.CharacterRemoving:Connect(
            function()
                local charconns = tbl5.charconns

                for k, v3 in charconns do
                    v3:Disconnect()
                end

                table.clear(tbl5.charconns)
                fn3(tbl5)
                tbl5.hrp = nil
                tbl5.hum = nil
                tbl5.head = nil
                tbl5.torso = nil
                tbl5.larm = nil
                tbl5.rarm = nil
                tbl5.lleg = nil
                tbl5.rleg = nil
            end
        )
    )

    if player.Character then
        fn8(player.Character)
    end

    fn4(player, tbl5)
end

local function fn7(player)
    local v3 = tbl3[player]
    if not v3 then
        return
    end
    local connections = v3.connections

    for k, v4 in connections do
        v4:Disconnect()
    end

    local charconns = v3.charconns

    for k, v4 in charconns do
        v4:Disconnect()
    end

    if v3.invulnconn then
        v3.invulnconn:Disconnect()
        v3.invulnconn = nil
    end

    fn3(v3)
    tbl3[player] = nil
end

for k, v3 in Players:GetPlayers() do
    fn6(v3)
end

fn("playerAdded", Players.PlayerAdded:Connect(fn6))
fn("playerRemoving", Players.PlayerRemoving:Connect(fn7))

local function fn8(arg)
    local teamFilter = esp.TeamFilter
    if type(teamFilter) == "function" then
        return teamFilter(arg)
    end
    return true
end

local function fn9(arg)
    local textlabels = arg.textlabels

    for k, v3 in textlabels do
        if v3 then
            v3.Visible = false
        end
    end
end

local function fn10(arg)
    local v3 = nil

    if arg.bbg then
        arg.bbg.Enabled = false
    end

    if arg.healthbbg then
        arg.healthbbg.Enabled = false
    end

    if arg.highlight then
        local highlight = arg.highlight

        while true do
            local v4, v5 = highlight(nil, v3)
            if v4 == nil then
                break
            end
            v3 = v4
            v5.Enabled = false
        end
    end

    if arg.tracer then
        arg.tracer.outline.Visible = false
        arg.tracer.fill.Visible = false
    end

    fn9(arg)
end

local tbl5 = {
    {0.15, 0, 0, 2, 0, 0, 0, 0,}, {0, 2, 0.15, 0, 0, 0, 0, 0,}, {0.15, 0, 0, 2, 0.85, 0, 0, 0,},
    {0, 2, 0.15, 0, 1, -2, 0, 0,}, {0.15, 0, 0, 2, 0, 0, 1, -2,}, {0, 2, 0.15, 0, 0, 0, 0.85, 0,},
    {0.15, 0, 0, 2, 0.85, 0, 1, -2,}, {0, 2, 0.15, 0, 1, -2, 0.85, 0,},
}

local function fn11(arg, arg2, text, color, arg3, arg4)
    local v3 = arg.textlabels[arg2]
    local v4 = v3

    if not v3 then
        local text2 = Drawing.new("Text")
        v4 = text2
        text2.Center = true
        text2.Outline = true
        text2.Transparency = 1
        arg.textlabels[arg2] = text2
    end

    v4.Font = esp.TextFont
    v4.Size = esp.TextSize
    v4.Text = text
    v4.Color = color
    v4.Position = Vector2.new(arg3, arg4)
    v4.Visible = true
    return arg2 + 1
end

fn(
    "espHeartbeat",
    RunService.Heartbeat:Connect(
        function()
            local v3 = nil
            local v4 = tbl3

            while true do
                local v5, v6 = v4(nil, v3)
                if v5 == nil then
                    break
                end
                v3 = v5

                if v5.Character and (not v5.Team or v5.Team.Name ~= "Menu") and v6.hum and v6.hum.Health > 0 and v6.hrp and fn8(
                    v5
                ) then
                    local v7 = humanoidRootPart
                    local magnitude = v7 and (humanoidRootPart.Position - v6.hrp.Position).Magnitude or 0

                    if esp.PlayerDistance < magnitude then
                        fn10(v6)
                    else
                        local v8 = fn5(v5)

                        if esp.Box then
                            if not v6.bbg then
                                local billboardGui = Instance.new("BillboardGui")
                                lib(billboardGui)
                                billboardGui.AlwaysOnTop = true
                                billboardGui.Size = UDim2.new(4, 0, 5.4, 0)
                                billboardGui.Adornee = v6.hrp
                                billboardGui.Parent = v2
                                local frame = Instance.new("Frame")
                                lib(frame)
                                frame.Size = UDim2.new(1, 0, 1, 0)
                                frame.BackgroundTransparency = 1
                                frame.BorderSizePixel = 0
                                frame.Parent = billboardGui
                                local boxColor = v8 or esp.BoxColor
                                local boxsides = {}

                                for k, v9 in tbl5 do
                                    local frame2 = Instance.new("Frame")
                                    lib(frame2)
                                    frame2.Size = UDim2.new(v9[1], v9[2], v9[3], v9[4])
                                    frame2.Position = UDim2.new(v9[5], v9[6], v9[7], v9[8])
                                    frame2.BackgroundColor3 = boxColor
                                    frame2.BorderSizePixel = 0
                                    frame2.Parent = frame
                                    boxsides[#boxsides + 1] = frame2
                                end

                                v3 = v5
                                v6.bbg = billboardGui
                                v6.outlines = frame
                                v6.boxsides = boxsides
                                v6.lastboxcolor = boxColor
                            end

                            if v6.bbg and v6.boxsides then
                                local boxColor = v8 or esp.BoxColor

                                if boxColor and v6.lastboxcolor ~= boxColor then
                                    v6.lastboxcolor = boxColor
                                    local boxsides = v6.boxsides

                                    for k, v9 in boxsides do
                                        v9.BackgroundColor3 = boxColor
                                    end
                                end

                                v6.bbg.Enabled = true
                                v6.outlines.Visible = true
                            end
                        elseif v6.bbg then
                            v6.bbg.Enabled = false
                        end

                        if esp.Health then
                            if not v6.healthbbg then
                                local billboardGui = Instance.new("BillboardGui")
                                lib(billboardGui)
                                billboardGui.Size = UDim2.new(4.5, 0, 6, 0)
                                billboardGui.AlwaysOnTop = true
                                billboardGui.Adornee = v6.hrp
                                billboardGui.Parent = v2
                                local frame = Instance.new("Frame")
                                lib(frame)
                                frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                                frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
                                frame.Size = UDim2.new(0.04, 0, 0.9, 0)
                                frame.Position = UDim2.new(0, 0, 0.05, 0)
                                frame.Parent = billboardGui
                                local frame2 = Instance.new("Frame")
                                lib(frame2)
                                frame2.BorderSizePixel = 0
                                frame2.BackgroundColor3 = Color3.fromRGB(94, 255, 69)
                                frame2.AnchorPoint = Vector2.new(0, 1)
                                frame2.Position = UDim2.new(0, 0, 1, 0)
                                frame2.Size = UDim2.new(1, 0, 1, 0)
                                frame2.Parent = frame
                                v6.healthbbg = billboardGui
                                v6.healthbar = frame2
                            end

                            if v6.healthbbg then
                                local lasthealth = v6.hum.Health / v6.hum.MaxHealth

                                if v6.lasthealth ~= lasthealth then
                                    v6.lasthealth = lasthealth
                                    v6.healthbar.Size = UDim2.new(
                                        1, 0, math.clamp(lasthealth, 0, 1), 0
                                    )
                                end

                                v6.healthbbg.Enabled = true
                            end
                        elseif v6.healthbbg then
                            v6.healthbbg.Enabled = false
                        end

                        if esp.Chams then
                            if v6.highlight and #v6.highlight ~= 0 then
                                local chamsColor = v8 or esp.ChamsColor

                                if chamsColor then
                                    for i = #v6.highlight, 1, -1 do
                                        local v9 = v6.highlight[i]

                                        if v9 and v9.Parent and v9.Adornee and v9.Adornee.Parent then
                                            v9.FillColor = chamsColor
                                            v9.OutlineColor = chamsColor
                                            v9.Enabled = true
                                        else
                                            table.remove(v6.highlight, i)

                                            if v9 then
                                                pcall(
                                                    function()
                                                        v9:Destroy()
                                                    end
                                                )
                                            end
                                        end
                                    end
                                end
                            else
                                local character = v5.Character

                                if v6.highlight then
                                    local highlight = v6.highlight

                                    for k, v9 in highlight do
                                        pcall(
                                            function()
                                                v9:Destroy()
                                            end
                                        )
                                    end
                                end

                                v6.highlight = {}
                                local chamsColor = v8 or esp.ChamsColor

                                for k, v9 in character:GetChildren() do
                                    if v9:IsA("BasePart") then
                                        table.insert(v6.highlight, createHighlight(v9, chamsColor))
                                    end
                                end
                            end
                        elseif v6.highlight then
                            local highlight = v6.highlight

                            for k, v9 in highlight do
                                v9.Enabled = false
                            end
                        end

                        if esp.Tracers then
                            if not v6.tracer then
                                local line = Drawing.new("Line")
                                line.Thickness = 3
                                line.Transparency = 1
                                local line2 = Drawing.new("Line")
                                line2.Thickness = 1
                                line2.Transparency = 1
                                v6.tracer = {outline = line, fill = line2}
                            end

                            local v9, v10 = currentCamera:WorldToViewportPoint(v6.hrp.Position)

                            if v10 and v6.tracer then
                                local tracerColor = v8 or esp.TracerColor

                                if tracerColor then
                                    v6.tracer.outline.From = vector2
                                    v6.tracer.outline.To = Vector2.new(v9.X, v9.Y)
                                    v6.tracer.outline.Color = Color3.new(0, 0, 0)
                                    v6.tracer.outline.Visible = true
                                    v6.tracer.fill.From = vector2
                                    v6.tracer.fill.To = Vector2.new(v9.X, v9.Y)
                                    v6.tracer.fill.Color = tracerColor
                                    v6.tracer.fill.Visible = true
                                end
                            elseif v6.tracer then
                                v6.tracer.outline.Visible = false
                                v6.tracer.fill.Visible = false
                            end
                        elseif v6.tracer then
                            v6.tracer.outline.Visible = false
                            v6.tracer.fill.Visible = false
                        end

                        if not esp.Name and not esp.Team and not esp.Distance and not esp.Tool and not esp.Wanted and not esp.Invulnerable then
                            if #v6.textlabels > 0 then
                                fn9(v6)
                            end
                        elseif v6.head and v6.lleg and v6.rleg then
                            local v9, v10 = currentCamera:WorldToViewportPoint(v6.hrp.Position)

                            if v10 and v9.Z > 0 then
                                local n = currentCamera.ViewportSize.Y / (2 * math.tan(
                                    math.rad(currentCamera.FieldOfView / 2)
                                ) * v9.Z)
                                local n2 = nil
                                local n3 = nil

                                if esp.Name or esp.Team or esp.Wanted or esp.Invulnerable then
                                    n2 = v9.Y - (v6.head.Position.Y - v6.hrp.Position.Y) * n - 15
                                end

                                if esp.Tool or esp.Distance or esp.Wanted then
                                    n3 = v9.Y + (v6.hrp.Position.Y - v6.lleg.Position.Y) * n + 5
                                end

                                local n4 = 1

                                if esp.Name and n2 then
                                    local name = v5.Name
                                    local nameColor = v8 or esp.NameColor
                                    n4 = fn11(v6, 1, name, nameColor, v9.X, n2)
                                    n2 = n2 + esp.TextSize + 1
                                end

                                if esp.Team and v5.Team and n2 then
                                    local name = v5.Team.Name
                                    local teamTextColor = v8 or esp.TeamTextColor
                                    n4 = fn11(v6, n4, name, teamTextColor, v9.X, n2)
                                    n2 = n2 + esp.TextSize + 1
                                end

                                if esp.Wanted and n2 then
                                    local serverVariables = v5:FindFirstChild("ServerVariables")
                                    local innocent = serverVariables and serverVariables:FindFirstChild(
                                        "Innocent"
                                    )

                                    if innocent and not innocent.Value and v5.Team and tbl2[v5.Team.Name] then
                                        local wantedColor = v8 or esp.WantedColor
                                        n4 = fn11(v6, n4, "Guilty", wantedColor, v9.X, n2)
                                        n2 = n2 + esp.TextSize + 1
                                    end
                                end

                                if esp.Invulnerable and n2 then
                                    local invuln = v6.invuln
                                    local n5 = invuln or 0

                                    if typeof(n5) == "number" and n5 ~= 0 then
                                        n4 = fn11(
                                            v6, n4, tostring(n5), esp.InvulnerableColor, v9.X, n2
                                        )
                                        local n6 = n2 + esp.TextSize + 1
                                    end
                                end

                                if esp.Tool and n3 then
                                    local equippedtool = v6.equippedtool
                                    local toolColor = v8 or esp.ToolColor
                                    n4 = fn11(v6, n4, equippedtool, toolColor, v9.X, n3)
                                    n3 = n3 + esp.TextSize + 1
                                end

                                if esp.Distance and humanoidRootPart and n3 then
                                    local str = tostring(math.floor(magnitude + 0.5))
                                    local distanceColor = v8 or esp.DistanceColor
                                    n4 = fn11(v6, n4, str, distanceColor, v9.X, n3)
                                end

                                for i = n4, #v6.textlabels do
                                    v6.textlabels[i].Visible = false
                                end
                            else
                                fn9(v6)
                            end
                        else
                            fn9(v6)
                        end
                    end
                else
                    fn10(v6)
                end
            end
        end
    )
)

local v3 = createScreenGui()
local frame = Instance.new("Frame")
lib(frame)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Position = UDim2.new(0.9, 0, 0.1, 0)
frame.Size = UDim2.new(0, 250, 0, 250)
frame.BackgroundColor3 = Color3.fromRGB(12, 12, 18)
frame.BackgroundTransparency = 0.4
frame.BorderSizePixel = 0
frame.ClipsDescendants = true
frame.Visible = false
frame.Parent = v3
local uiCorner = Instance.new("UICorner")
lib(uiCorner)
uiCorner.CornerRadius = UDim.new(1, 0)
uiCorner.Parent = frame
local tbl6 = {}
local v4 = nil

local function fn12(arg, arg2)
    if not arg.Team or not arg2.Team then
        return false
    end
    local v5 = tbl2[arg.Team.Name]
    local v6 = tbl2[arg2.Team.Name]
    local flag = v5 and v6

    if not flag then
        if v5 then
            flag = false
        else
            flag = true
        end

        if flag then
            if v6 then
                flag = false
            else
                flag = true
            end
        end
    end

    return flag
end

local function createFrame(arg, backgroundColor3, position)
    local frame2 = Instance.new("Frame")
    lib(frame2)
    frame2.AnchorPoint = Vector2.new(0.5, 0.5)
    frame2.Size = UDim2.new(0, arg, 0, arg)
    frame2.BackgroundColor3 = backgroundColor3
    frame2.BorderSizePixel = 0
    frame2.Position = position
    frame2.Parent = frame
    local uiCorner2 = Instance.new("UICorner")
    lib(uiCorner2)
    uiCorner2.CornerRadius = UDim.new(1, 0)
    uiCorner2.Parent = frame2
    return frame2
end

fn(
    "radarHeartbeat",
    RunService.Heartbeat:Connect(
        function()
            local v5 = nil

            if esp.Radar and humanoidRootPart then
                frame.Visible = true

                if not v4 then
                    v4 = createFrame(8, Color3.fromRGB(255, 255, 255), UDim2.new(0.5, 0, 0.5, 0))
                end

                v4.Visible = true
                local tbl7 = {}

                while true do
                    local v6, v7 = tbl3(nil, v5)
                    if v6 == nil then
                        break
                    end
                    v5 = v6

                    if v6 ~= localPlayer and v7.hrp and (v7.hrp.Position - humanoidRootPart.Position).Magnitude <= 100 then
                        local n = v7.hrp.Position - humanoidRootPart.Position
                        local n2 = -n.X
                        local n3 = -n.Z
                        local v8 = fn12(localPlayer, v6)
                        local color = v8 and Color3.fromRGB(80, 255, 120) or Color3.fromRGB(
                            255, 70, 70
                        )

                        if not tbl6[v6] then
                            tbl6[v6] = createFrame(6, color, UDim2.new(0.5, n2, 0.5, n3))
                        end

                        tbl6[v6].Position = UDim2.new(0.5, n2, 0.5, n3)
                        tbl6[v6].BackgroundColor3 = color
                        tbl7[v6] = true
                    end
                end

                local v6 = nil

                while true do
                    local v7, v8 = tbl6(nil, v6)
                    if v7 == nil then
                        break
                    end
                    v6 = v7

                    if not tbl7[v7] then
                        v8:Destroy()
                        tbl6[v7] = nil
                    end
                end

                return
            end

            frame.Visible = false

            while true do
                local v6, v7 = tbl6(nil, v5)
                if v6 == nil then
                    break
                end
                v5 = v6

                if v7 then
                    v7:Destroy()
                end

                tbl6[v6] = nil
            end

            if v4 then
                v4.Visible = false
            end
        end
    )
)

local v5 = createScreenGui()

local function createHighlight2(adornee, outlineColor)
    local highlight = Instance.new("Highlight")
    lib(highlight)
    highlight.FillTransparency = 1
    highlight.OutlineTransparency = 0
    highlight.OutlineColor = outlineColor
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Adornee = adornee
    highlight.Enabled = false
    highlight.Parent = CoreGui
    return highlight
end

local function fn13(adornee, text, arg)
    local billboardGui = Instance.new("BillboardGui")
    lib(billboardGui)
    billboardGui.AlwaysOnTop = true
    billboardGui.Size = UDim2.new(0, 200, 0, 20)
    local vector = arg or Vector3.new(0, 2, 0)
    billboardGui.StudsOffset = vector
    billboardGui.Enabled = false
    billboardGui.Adornee = adornee
    billboardGui.MaxDistance = 2000
    billboardGui.Parent = v5
    local textLabel = Instance.new("TextLabel")
    lib(textLabel)
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextStrokeTransparency = 0.8
    textLabel.Font = Enum.Font.GothamBold
    textLabel.TextSize = 13
    textLabel.Text = text
    textLabel.Parent = billboardGui
    return billboardGui, textLabel
end

local function fn14(arg, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    table.insert(
        tbl4,
        {
            part = arg, key = arg2, colorkey = arg3, h = arg4, bbg = arg5, lbl = arg6, cond = arg7,
            model = arg8,
        }
    )
end

local function fn15(arg, arg2)
    for k, v6 in tbl4 do
        if v6.key == arg2 and v6.part == arg then
            return true
        end
    end

    return false
end

fn(
    "worldObjHeartbeat",
    RunService.Heartbeat:Connect(
        function()
            if #tbl4 == 0 then
                return
            end

            for i = #tbl4, 1, -1 do
                local v6 = tbl4[i]

                if v6.part and v6.part:IsA("BasePart") and v6.part.Parent and (not v6.model or v6.model.Parent) then
                    if esp[v6.key] then
                        if v6.h and v6.h.Adornee and not v6.h.Adornee.Parent then
                            v6.h:Destroy()

                            if v6.bbg then
                                v6.bbg:Destroy()
                            end

                            table.remove(tbl4, i)
                        else
                            local v7 = humanoidRootPart
                            local magnitude = v7 and (humanoidRootPart.Position - v6.part.Position).Magnitude or 0

                            if esp.WorldDistance < magnitude then
                                if v6.h then
                                    v6.h.Enabled = false
                                end

                                if v6.bbg then
                                    v6.bbg.Enabled = false
                                end
                            else
                                local enabled

                                if v6.cond then
                                    enabled = false
                                else
                                    enabled = true
                                end

                                if not enabled then
                                    enabled = v6.cond()
                                end

                                if v6.h then
                                    v6.h.Enabled = enabled
                                end

                                if v6.bbg then
                                    v6.bbg.Enabled = enabled
                                end

                                if enabled and v6.colorkey then
                                    local v8 = esp[v6.colorkey]

                                    if v6.h then
                                        v6.h.OutlineColor = v8
                                    end

                                    if v6.lbl then
                                        v6.lbl.TextColor3 = v8
                                    end
                                end
                            end
                        end
                    else
                        if v6.h then
                            v6.h.Enabled = false
                        end

                        if v6.bbg then
                            v6.bbg.Enabled = false
                        end
                    end
                else
                    if v6.h then
                        v6.h:Destroy()
                    end

                    if v6.bbg then
                        v6.bbg:Destroy()
                    end

                    table.remove(tbl4, i)
                end
            end
        end
    )
)

local tbl7 = {}

local function fn16()
    return workspace:FindFirstChild("Map")
end

local function fn17(arg)
    for k, v6 in tbl3 do
        arg(v6)
    end
end

local function fn18()
    local v6 = nil

    while true do
        local v7, v8 = tbl6(nil, v6)
        if v7 == nil then
            break
        end
        v6 = v7

        if v8 then
            v8:Destroy()
        end

        tbl6[v7] = nil
    end
end

esp.initvents = function()
    if tbl7.Vents then
        return
    end
    local v6 = fn16()
    local unorganized = v6 and v6:FindFirstChild("Unorganized")
    if not unorganized then
        return
    end
    tbl7.Vents = true

    local function fn19(child)
        if not child:IsA("Model") or child.Name:lower() ~= "vent" then
            return
        end
        local primaryPart = child.PrimaryPart
        local basePart = primaryPart or child:FindFirstChildWhichIsA("BasePart", true)
        if not basePart or fn15(basePart, "Vents") then
            return
        end
        local v7 = createHighlight2(child, esp.VentColor)
        local v8, v9 = fn13(basePart, child.Name, Vector3.new(0, 3, 0))
        fn14(basePart, "Vents", "VentColor", v7, v8, v9, nil, child)
    end

    for k, v7 in unorganized:GetChildren() do
        fn19(v7)
    end

    fn("ventChildAdded", unorganized.ChildAdded:Connect(fn19))
end

esp.initmaterials = function()
    if tbl7.Materials then
        return
    end
    local unorganizedMaterialSpawns = workspace:FindFirstChild("unorganized material spawns")
    if not unorganizedMaterialSpawns then
        return
    end
    tbl7.Materials = true

    local function fn19(child)
        if not child:IsA("BasePart") or fn15(child, "Materials") then
            return
        end
        local v6 = createHighlight2(child, esp.MaterialColor)
        local v7, v8 = fn13(child, child.Name:gsub("^Material_", ""))

        fn14(
            child, "Materials", "MaterialColor", v6, v7, v8,
            function()
                local flag = child.Transparency < 0.9
                return flag
            end, child
        )
    end

    for k, v6 in unorganizedMaterialSpawns:GetChildren() do
        fn19(v6)
    end

    fn("materialChildAdded", unorganizedMaterialSpawns.ChildAdded:Connect(fn19))
end

esp.initdroppedtools = function()
    if tbl7.DroppedTools then
        return
    end
    local droppedTools = workspace:FindFirstChild("DroppedTools")
    if not droppedTools then
        return
    end
    tbl7.DroppedTools = true

    local function fn19(child)
        task.spawn(
            function()
                if not child:IsA("Model") then
                    return
                end
                task.wait(0.1)
                if not child.Parent or child.Parent ~= droppedTools then
                    return
                end
                local bolt = child:FindFirstChild("Bolt", true)
                local isBasePart = bolt and bolt:IsA("BasePart") and bolt or child:FindFirstChildWhichIsA(
                    "BasePart"
                )
                if not isBasePart then
                    return
                end
                local v6 = createHighlight2(child, esp.DroppedToolColor)
                local name = child.Name == "ToolCapture" and "Keycard" or child.Name
                local v7, v8 = fn13(isBasePart, name, Vector3.new(0, 0, 0))
                fn14(isBasePart, "DroppedTools", "DroppedToolColor", v6, v7, v8, nil, child)
            end
        )
    end

    for k, v6 in droppedTools:GetChildren() do
        fn19(v6)
    end

    fn("droppedToolsChildAdded", droppedTools.ChildAdded:Connect(fn19))

    fn(
        "droppedToolsChildRemoved",
        droppedTools.ChildRemoved:Connect(
            function(child)
                for i = #tbl4, 1, -1 do
                    local v6 = tbl4[i]

                    if v6.key == "DroppedTools" and v6.model == child then
                        if v6.h then
                            v6.h:Destroy()
                        end

                        if v6.bbg then
                            v6.bbg:Destroy()
                        end

                        table.remove(tbl4, i)
                    end
                end
            end
        )
    )
end

esp.initgarbage = function()
    if tbl7.Garbage then
        return
    end
    local unorganizedMapBins = workspace:FindFirstChild("unorganized map bins")
    if not unorganizedMapBins then
        return
    end
    tbl7.Garbage = true

    local function fn19(arg)
        local parent = arg.Parent
        if not parent or not parent:IsA("BasePart") or fn15(parent, "Garbage") then
            return
        end
        local parent2 = parent.Parent
        local flag = false

        while parent2 and parent2 ~= unorganizedMapBins do
            if parent2:IsA("Model") and parent2.Name:find("Binx", 1, true) then
                flag = true
                break
            end
            parent2 = parent2.Parent
        end

        if not flag then
            return
        end

        if arg.ObjectText ~= "[Garbage]" then
            return
        end
        local searchable, v6 = fn13(parent, "Searchable", Vector3.new(0, 3, 0))

        fn14(
            parent, "Garbage", "GarbageColor", nil, searchable, v6,
            function()
                local flag2 = arg.ObjectText == "[Garbage]"
                return flag2
            end
        )
    end

    local function fn20(descendant)
        if descendant:IsA("ProximityPrompt") then
            fn19(descendant)
        elseif descendant:IsA("Model") then
            for k, v6 in descendant:GetDescendants() do
                if v6:IsA("ProximityPrompt") then
                    fn19(v6)
                end
            end
        end
    end

    for k, v6 in unorganizedMapBins:GetDescendants() do
        fn20(v6)
    end

    fn("garbageDescendantAdded", unorganizedMapBins.DescendantAdded:Connect(fn20))
end

esp.initropes = function()
    if tbl7.Ropes then
        return
    end
    local v6 = fn16()
    local ropes = v6 and v6.Functional and v6.Functional:FindFirstChild("Ropes")
    if not ropes then
        return
    end
    tbl7.Ropes = true

    for k, v7 in ropes:GetChildren() do
        if v7:IsA("Model") then
            local rope = v7:FindFirstChild("Rope")

            if rope and rope:IsA("BasePart") then
                fn14(
                    rope, "Ropes", "RopeColor", createHighlight2(rope, esp.RopeColor), nil, nil,
                    function()
                        local flag = rope.Transparency == 0
                        return flag
                    end, rope
                )
            end
        end
    end
end

esp.stop = function()
    for k, v6 in tbl do
        if typeof(v6) == "RBXScriptConnection" then
            v6:Disconnect()
        end
    end

    table.clear(tbl)

    for k, v6 in Players:GetPlayers() do
        fn7(v6)
    end

    fn18()
    v4 = nil
    v2:Destroy()
    v3:Destroy()
    v5:Destroy()
    getgenv().ESP = nil
end

getgenv().ESP.cleanup = {
    Box = function()
        fn17(
            function(arg)
                if arg.bbg then
                    arg.bbg:Destroy()
                    arg.bbg = nil
                    arg.outlines = nil
                    arg.boxsides = nil
                end
            end
        )
    end,
    Health = function()
        fn17(
            function(arg)
                if arg.healthbbg then
                    arg.healthbbg:Destroy()
                    arg.healthbbg = nil
                    arg.healthbar = nil
                end
            end
        )
    end,
    Chams = function()
        fn17(
            function(arg)
                local v6 = nil

                if arg.highlight then
                    local highlight = arg.highlight

                    while true do
                        local v7, v8 = highlight(nil, v6)
                        if v7 == nil then
                            break
                        end
                        v6 = v7
                        v8:Destroy()
                    end

                    arg.highlight = nil
                end
            end
        )
    end,
    Tracers = function()
        fn17(
            function(arg)
                if arg.tracer then
                    arg.tracer.outline:Remove()
                    arg.tracer.fill:Remove()
                    arg.tracer = nil
                end
            end
        )
    end,
    Text = function()
        fn17(
            function(arg)
                local textlabels = arg.textlabels

                for k, v6 in textlabels do
                    if v6 then
                        v6:Remove()
                    end
                end

                arg.textlabels = {}
            end
        )
    end, Radar = fn18,
}
