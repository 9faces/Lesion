-- Recovered Luau source by ZeroVector
local HttpService = game:GetService("HttpService")
setclipboard("discord.gg/m4a1")
local screenGui = Instance.new("ScreenGui")
screenGui.ResetOnSpawn = false
screenGui.Parent = game:GetService("CoreGui")
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(0.8, 0, 0, 80)
textLabel.Position = UDim2.new(0.1, 0, 0, 20)
textLabel.BackgroundTransparency = 1
textLabel.Text = "Hey lasion user! We copied our discord to you're clipboard,\nwe have forums for bugs and suggestions, as well as it lets you\nchat with the community & see changelogs, and so much more."
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.Font = Enum.Font.GothamBold
textLabel.TextSize = 18
textLabel.TextWrapped = true
textLabel.TextTransparency = 1
textLabel.TextStrokeTransparency = 1
textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
textLabel.Parent = screenGui

task.spawn(function()
    for i = 1, 0, -0.05 do
        textLabel.TextTransparency = i
        textLabel.TextStrokeTransparency = i
        task.wait(0.02)
    end

    task.wait(10)

    for i = 0, 1, 0.05 do
        textLabel.TextTransparency = i
        textLabel.TextStrokeTransparency = i
        task.wait(0.02)
    end

    screenGui:Destroy()
end)

local v = ({
    [4571439504] = "life-sentence",
    [5456952508] = "valley-prison",
    [6216142007] = "seeker-vs-hider",
    [10768498581] = "tribes",
    [6749060816] = "asylum",
})[HttpService:JSONDecode(game:HttpGet("https://apis.roblox.com/universes/v1/places/" .. game.PlaceId .. "/universe")).universeId]

if not v then
    game.Players.LocalPlayer:Kick("Lasion dosen't support this game bud.")
    return
end

local v2 = request({Url = "https://api.lasion.world/" .. v, Method = "GET"})
loadstring(v2.Body)()
