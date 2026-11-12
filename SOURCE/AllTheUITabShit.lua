-- Deobfuscated by deobf (dynamic trace)
-- source: in.lua
-- NOTE: reconstructed from observed behaviour; branches that were not taken
--       during the trace are missing and conditions are only noted in comments.
-- run status: finished
-- 1811 statements recorded in 2.71s
-- URLs requested:
--   https://api.lasion.world/vp/uilib
--   https://api.lasion.world/vp/esp
--   https://api.lasion.world/vp/aimbot
--   https://api.lasion.world/u/detected
--   https://games.roblox.com/v1/games/0/servers/Public?sortOrder=Desc&limit=100
-- remotes fired/invoked:
--   CompleteTutorial
--   BindableEvent
--   RemoteFunction
--   JobState
--   JobState2
--   v41:FindFirstChild("JobState")
--   JobState3
--   JobState4
--   JobState5
--   v46:FindFirstChild("JobState")
--   JobState6
--   AcceptRules
--   Completed
--   Players.LocalPlayer.Character:FindFirstChild("RopeTiming"):FindFirstChild("Completed")
--   SwapInventoryItem
-- non-standard globals touched: run_on_actor, gethiddenproperty, sethiddenproperty
-- yes some of the funcs ARE hidden because its shitty

-- [deobf] folded 62 repeated calls into 15 helper functions and 12 unrolled runs into loops
-- loadstring() of 2442 bytes, its source:
-- |  --[[ 34 comment lines ]] return setfenv(function(...) return kUMmRVor(...) end, setmetatable({ ["kUMmRVor"] = ... }, { __index = getfenv((...)) })) 



task.wait()
game:IsLoaded()
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CoreGui = game:GetService("CoreGui")
local Lighting = game:GetService("Lighting")
local HttpService = game:GetService("HttpService")
local SoundService = game:GetService("SoundService")
local CollectionService = game:GetService("CollectionService")
local PathfindingService = game:GetService("PathfindingService")
local ProximityPromptService = game:GetService("ProximityPromptService")
local Teams = game:GetService("Teams")
local TeleportService = game:GetService("TeleportService")
UserInputService:GetPlatform()

task.spawn(function()
	local ServerVariables = Players.LocalPlayer:WaitForChild("ServerVariables", 10)
	ServerVariables:FindFirstChild("AcceptedRules")
	local Remotes = ReplicatedStorage:WaitForChild("Remotes", 5)
	local AcceptRules = Remotes:FindFirstChild("AcceptRules")
	task.wait(1)
	AcceptRules:FireServer()
	task.wait(0.5)
	local PlayerGui2 = Players.LocalPlayer:WaitForChild("PlayerGui", 5)
	local UI2 = PlayerGui2:FindFirstChild("UI")
	local Rules = UI2:FindFirstChild("Rules")
	Rules:Destroy()
end)

task.spawn(function()
	local Remotes2 = ReplicatedStorage:WaitForChild("Remotes", 10)
	local Tutorial = Remotes2:FindFirstChild("Tutorial")
	local CompleteTutorial = Tutorial:FindFirstChild("CompleteTutorial")
	local PlayerGui = Players.LocalPlayer:WaitForChild("PlayerGui", 10)
	local UI = PlayerGui:WaitForChild("UI", 10)
	local Help = UI:FindFirstChild("Help")
	local TutorialModule = Help:FindFirstChild("TutorialModule")
	local descendants = TutorialModule:GetDescendants()

	for k, v in descendants do
		CompleteTutorial:FireServer(v.Name)
	end

	local Bin = Help:FindFirstChild("Bin")

	Bin.ChildAdded:Connect(function(child)
		task.wait()
		child:Destroy()
	end)
end)

Instance.new("RemoteEvent")
Instance.new("RemoteFunction")
Instance.new("BindableEvent")
Instance.new("BindableFunction")
Instance.new("UnreliableRemoteEvent")
HttpService:GenerateGUID(false)

local connection = RunService.Heartbeat:Connect(function(deltaTime)
	-- [envlog] error: Script:2: attempt to compare userdata <= number
end)

local Remotes3 = ReplicatedStorage:FindFirstChild("Remotes")
Remotes3:FindFirstChild("ChangeTeam")

hookmetamethod(game, "__namecall", function()
	-- [envlog] error: Script:2: attempt to call a nil value
end)

local response = game:HttpGet("https://api.lasion.world/vp/uilib")
local uilib = loadstring(response)()
local Effects = workspace.CurrentCamera:FindFirstChild("Effects")

for _, childName in ipairs({
	"part", "on", "fire", "lasionaimpart", "lasionaimon", "lasionaimfire",
}) do
	local part = Effects:FindFirstChild(childName)
	part.Value = nil
	part.Value = false
end

task.spawn(function()
	local ServerVariables2 = Players.LocalPlayer:WaitForChild("ServerVariables", 30)
	ServerVariables2:WaitForChild("BaseInfo", 10)
	ServerVariables2.BaseInfo:WaitForChild("Mobile", 10)
end)

RaycastParams.new().FilterType = Enum.RaycastFilterType.Exclude
RaycastParams.new().FilterType = Enum.RaycastFilterType.Exclude

local function getResult()
	local guid = HttpService:GenerateGUID(false)
	local result3 = guid:gsub("-", "")
	return result3
end

local function createTextButton(name, parent)
	local TextButton7 = Instance.new("TextButton")
	TextButton7.LayoutOrder = 1
	TextButton7.BackgroundTransparency = 1
	TextButton7.Name = name
	TextButton7.AutoButtonColor = true
	TextButton7.Parent = parent
	TextButton7.Text = ""
	TextButton7.BorderSizePixel = 0
	TextButton7.Size = UDim2.new(0, 60, 0, 86)
	return TextButton7
end

local function createViewportFrame(name, parent)
	local ViewportFrame4 = Instance.new("ViewportFrame")
	ViewportFrame4.AnchorPoint = Vector2.new(0.5, 0)
	ViewportFrame4.Name = name
	ViewportFrame4.Position = UDim2.new(0.5, 0, 0, 2)
	ViewportFrame4.Parent = parent
	ViewportFrame4.BackgroundTransparency = 1
	ViewportFrame4.Size = UDim2.new(0, 52, 0, 52)
	return ViewportFrame4
end

local function createCamera(name, parent)
	local Camera4 = Instance.new("Camera")
	Camera4.Name = name
	Camera4.Parent = parent
	return Camera4
end

local function createTextLabel(parent, text, name)
	local TextLabel5 = Instance.new("TextLabel")
	TextLabel5.TextColor3 = Color3.fromRGB(235, 235, 235)
	TextLabel5.Parent = parent
	TextLabel5.Text = text.Name
	TextLabel5.AnchorPoint = Vector2.new(0.5, 1)
	TextLabel5.Font = Enum.Font.Code
	TextLabel5.BackgroundTransparency = 1
	TextLabel5.Position = UDim2.new(0.5, 0, 1, -2)
	TextLabel5.TextTruncate = Enum.TextTruncate.AtEnd
	TextLabel5.Name = name
	TextLabel5.TextSize = 11
	TextLabel5.Size = UDim2.new(1, -4, 0, 12)
end

local function setupV(v)
	v.Material = Enum.Material.Neon
	v.Color = Color3.fromRGB(255, 255, 255)
	v.TextureID = ""
end

local function getDescendants(parent, v)
	local result53 = getResult()
	local TextButton7 = createTextButton(result53, parent)
	local result54 = getResult()
	local ViewportFrame4 = createViewportFrame(result54, TextButton7)
	local HotbarEdit4 = v:FindFirstChild("HotbarEdit")
	HotbarEdit4:FindFirstChild("ViewportObject")
	local clone6 = HotbarEdit4.ViewportObject.Value:Clone()
	local descendants16 = clone6:GetDescendants()
	return TextButton7, ViewportFrame4, clone6, descendants16
end

local function setupClone(clone, parent, parent2, text, swapInventoryItem)
	clone:PivotTo(CFrame.new())
	clone.Parent = parent
	local result55 = getResult()
	local Camera4 = createCamera(result55, parent)
	parent.CurrentCamera = Camera4
	clone:GetBoundingBox()
	local result56 = getResult()
	createTextLabel(parent2, text, result56)

	parent2.Activated:Connect(function(inputObject7, clickCount7)
		swapInventoryItem:FireServer(text)
	end)

	return Camera4
end

task.spawn(function()
	local result2 = uilib.panel({
	Title = "Hotswap",
	Align = Enum.TextXAlignment.Center,
	Anchor = Vector2.new(1, 1),
	BarH = 18,
	Order = 5,
	Parent = CoreGui,
	Pos = UDim2.new(1, -8, 1, -8),
	Size = UDim2.new(0, 72, 0, 114),
	TitleSize = 13
})

	result2.box.Visible = false
	local result3 = getResult()
	local Frame = Instance.new("Frame")
	Frame.Name = result3
	Frame.Position = UDim2.new(0, 0, 0, 22)
	Frame.Parent = result2.box
	Frame.BackgroundTransparency = 1
	Frame.BorderSizePixel = 0
	Frame.Size = UDim2.new(1, 0, 0, 90)
	local result4 = getResult()
	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.Parent = Frame
	UIListLayout.Padding = UDim.new(0, 6)
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Name = result4
	local result5 = getResult()
	local UIPadding = Instance.new("UIPadding")
	UIPadding.Parent = Frame
	UIPadding.PaddingRight = UDim.new(0, 6)
	UIPadding.PaddingLeft = UDim.new(0, 6)
	UIPadding.Name = result5

	task.spawn(function(...)
		local ServerVariables3 = Players.LocalPlayer:WaitForChild("ServerVariables", 30)
		local Inventory = ServerVariables3:WaitForChild("Inventory", 10)
		local Stored = Inventory:WaitForChild("Stored", 10)

		Stored.ChildAdded:Connect(function(child2)
			task.delay(0.1, function()
				Frame:GetChildren()
				TextButton6:Destroy()
				local children33 = Stored:GetChildren()

				for k56, v57 in children33 do
				end

				local TextButton7, ViewportFrame4, clone6, descendants16 = getDescendants(Frame, v57)

				for k57, v58 in descendants16 do
					setupV(v58)
				end

				local Camera4 = setupClone(clone6, ViewportFrame4, TextButton7, v57, lastRemotes3)
				result2.box.Size = UDim2.new(0, 72, 0, 114)
				result2.box.Visible = false
			end)
		end)

		Stored.ChildRemoved:Connect(function(child3)
			task.delay(0.1, function()
				Frame:GetChildren()
				TextButton7:Destroy()
				local children34 = Stored:GetChildren()

				for k58, v59 in children34 do
				end

				local TextButton8, ViewportFrame5, clone7, descendants17 = getDescendants(Frame, v59)

				for k59, v60 in descendants17 do
					setupV(v60)
				end

				local Camera5 = setupClone(clone7, ViewportFrame5, TextButton8, v59, lastRemotes3)
				result2.box.Size = UDim2.new(0, 72, 0, 114)
				result2.box.Visible = false
			end)
		end)

		Frame:GetChildren()
		local children = Stored:GetChildren()

		for k2, v2 in children do
		end

		local TextButton, ViewportFrame, clone, descendants2 = getDescendants(Frame, v2)

		for k3, v3 in descendants2 do
			setupV(v3)
		end

		clone:PivotTo(CFrame.new())
		clone.Parent = ViewportFrame
		local result8 = getResult()
		local Camera = createCamera(result8, ViewportFrame)
		ViewportFrame.CurrentCamera = Camera
		clone:GetBoundingBox()
		local result9 = getResult()
		createTextLabel(TextButton, v2, result9)

		TextButton.Activated:Connect(function(inputObject, clickCount)
			local Remotes4 = ReplicatedStorage:FindFirstChild("Remotes")
			local Inventory2 = Remotes4:FindFirstChild("Inventory")
			local lastRemotes3 = Inventory2:FindFirstChild("lastRemotes3")
			lastRemotes3:FireServer(v2)
		end)

		result2.box.Size = UDim2.new(0, 72, 0, 114)
		result2.box.Visible = true
	end)
end)

RunService.Heartbeat:Connect(function(deltaTime2)
end)

task.spawn(function()
	local result10 = uilib.panel({ Anchor = Vector2.new(0.5, 0.5), Enabled = false, Order = 10, Parent = CoreGui, Pos = UDim2.new(0.5, 0, 0.5, 0), Size = UDim2.new(0, 560, 0, 400) })
	local result11 = getResult()
	local TextLabel2 = Instance.new("TextLabel")
	TextLabel2.TextWrapped = true
	TextLabel2.TextColor3 = Color3.fromRGB(235, 235, 235)
	TextLabel2.Parent = result10.box
	TextLabel2.Text = "Hey, welcome. No bullshit like all their ai ui code, just pick a team and get into it."
	TextLabel2.AnchorPoint = Vector2.new(0.5, 0)
	TextLabel2.Font = Enum.Font.Code
	TextLabel2.BackgroundTransparency = 1
	TextLabel2.Position = UDim2.new(0.5, 0, 0, 8)
	TextLabel2.Name = result11
	TextLabel2.TextSize = 13
	TextLabel2.Size = UDim2.new(1, -32, 0, 52)
	local result12 = getResult()
	local TextButton2 = Instance.new("TextButton")
	TextButton2.Visible = false
	TextButton2.TextColor3 = Color3.fromRGB(235, 235, 235)
	TextButton2.Parent = result10.box
	TextButton2.Text = "Back"
	TextButton2.AnchorPoint = Vector2.new(0.5, 0)
	TextButton2.Font = Enum.Font.Code
	TextButton2.Name = result12
	TextButton2.Position = UDim2.new(0.5, 0, 0, 64)
	TextButton2.TextSize = 13
	TextButton2.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
	TextButton2.BorderSizePixel = 0
	TextButton2.Size = UDim2.new(1, -32, 0, 28)

	TextButton2.Activated:Connect(function(inputObject2, clickCount2)
		local teams2 = Teams:GetTeams()

		for k60, v61 in teams2 do
			v61:GetAttribute("CanJoinFromMenu")
		end

		local ServerVariables7 = Players.LocalPlayer:FindFirstChild("ServerVariables")
		local Experience = ServerVariables7:FindFirstChild("Experience")
		Experience:FindFirstChild("Level")
		TextButton2.Visible = false
		result10.box.Size = UDim2.fromOffset(0, 100)
		Frame2.Position = UDim2.new(0.5, 0, 0, 68)
	end)

	local result13 = getResult()
	local Frame2 = Instance.new("Frame")
	Frame2.AnchorPoint = Vector2.new(0.5, 0)
	Frame2.Name = result13
	Frame2.Position = UDim2.new(0.5, 0, 0, 100)
	Frame2.Parent = result10.box
	Frame2.BackgroundTransparency = 1
	Frame2.BorderSizePixel = 0
	Frame2.Size = UDim2.new(1, -32, 1, -112)
	local result14 = getResult()
	local UIListLayout2 = Instance.new("UIListLayout")
	UIListLayout2.VerticalAlignment = Enum.VerticalAlignment.Top
	UIListLayout2.FillDirection = Enum.FillDirection.Vertical
	UIListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout2.Parent = Frame2
	UIListLayout2.Padding = UDim.new(0, 4)
	UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout2.Name = result14

	RunService.Heartbeat:Connect(function(deltaTime3)
	end)
end)

local function createTextButton2(r, g, b, parent, text, name, xOffset)
	local TextButton3 = Instance.new("TextButton")
	TextButton3.TextColor3 = Color3.fromRGB(r, g, b)
	TextButton3.Parent = parent.bar
	TextButton3.Text = text
	TextButton3.Font = Enum.Font.Code
	TextButton3.Name = name
	TextButton3.Position = UDim2.new(1, -xOffset, 0, 0)
	TextButton3.BackgroundTransparency = 1
	TextButton3.TextSize = 13
	TextButton3.Size = UDim2.new(0, 28, 1, 0)
	return TextButton3
end

task.spawn(function()
	local ChatLogs = CoreGui:FindFirstChild("ChatLogs")
	ChatLogs:Destroy()

	local result15 = uilib.panel({
	Name = "ChatLogs",
	Title = "Chat Logs",
	Anchor = Vector2.new(0, 0.5),
	Drag = true,
	Order = 6,
	Parent = CoreGui,
	Pos = UDim2.new(0, 12, 0.5, 0),
	Size = UDim2.fromOffset(200, 140)
})

	local result16 = getResult()
	local TextButton3 = createTextButton2(140, 140, 140, result15, "-", result16, 56)
	local result17 = getResult()
	local TextButton4 = createTextButton2(255, 35, 55, result15, "X", result17, 28)
	local result18 = uilib.scrollList(result15.box, { Anchor = Vector2.new(0.5, 0), Pos = UDim2.new(0.5, 0, 0, 36), Size = UDim2.new(1, -16, 1, -40), Stick = true })

	TextButton3.Activated:Connect(function(inputObject3, clickCount3)
		TextButton3.Text = "+"
		result18.list.Visible = false
		result15.box.Size = UDim2.fromOffset(200, 32)
	end)

	TextButton4.Activated:Connect(function(inputObject4, clickCount4)
		Toggle:Set(false)
	end)

	local TextChatService = game:GetService("TextChatService")

	TextChatService.MessageReceived:Connect(function()
		Players:GetPlayerByUserId(0)
	end)

	result15.gui.Enabled = true
end)

local function getCameraRecoilMultiplier(recoil)
	local MuzzleRise4 = recoil:FindFirstChild("MuzzleRise")
	MuzzleRise4:GetAttribute("RangeX")
	MuzzleRise4:GetAttribute("RangeY")
	MuzzleRise4:GetAttribute("RangeZ")
	local ModelPivot4 = recoil:FindFirstChild("ModelPivot")
	ModelPivot4:GetAttribute("RangeX")
	ModelPivot4:GetAttribute("RangeY")
	ModelPivot4:GetAttribute("RangeZ")
	local ModelShakeFactor7 = recoil:FindFirstChild("ModelShakeFactor")
	local CameraRecoilMultiplier7 = recoil:FindFirstChild("CameraRecoilMultiplier")
	return ModelShakeFactor7, CameraRecoilMultiplier7
end

local function setupRecoil(recoil, modelShakeFactor, arg, cameraRecoilMultiplier)
	recoil:FindFirstChild("MuzzleRise")
	recoil:FindFirstChild("ModelPivot")
	local ModelShakeFactor8 = recoil:FindFirstChild("ModelShakeFactor")
	ModelShakeFactor8.Value = (modelShakeFactor.Value * (arg / 100))
	local CameraRecoilMultiplier8 = recoil:FindFirstChild("CameraRecoilMultiplier")
	CameraRecoilMultiplier8.Value = (cameraRecoilMultiplier.Value * (arg / 100))
end

local function getCameraRecoilMultiplier2(child, arg)
	local Configuration8 = child:FindFirstChild("Configuration")
	Configuration8:GetAttribute("inaccuracy")
	local Recoil4 = child:FindFirstChild("Recoil")
	local ModelShakeFactor7, CameraRecoilMultiplier7 = getCameraRecoilMultiplier(Recoil4)
	setupRecoil(Recoil4, ModelShakeFactor7, arg, CameraRecoilMultiplier7)
	return ModelShakeFactor7, CameraRecoilMultiplier7
end

Players.LocalPlayer.CharacterAdded:Connect(function(character)
	local HumanoidRootPart3 = character:WaitForChild("HumanoidRootPart", 10)
	local Humanoid2 = character:WaitForChild("Humanoid", 10)

	Humanoid2.Died:Connect(function()
	end)

	connection2:Disconnect()

	task.spawn(function()
		character.ChildAdded:Connect(function(child19)
			local ModelShakeFactor7, CameraRecoilMultiplier7 = getCameraRecoilMultiplier2(child19, arg278)
		end)

		local children35 = character:GetChildren()

		for k61, v62 in children35 do
			local ModelShakeFactor3, CameraRecoilMultiplier3 = getCameraRecoilMultiplier2(v62, arg278)
		end
	end, character, HumanoidRootPart3, Humanoid2)

	task.spawn(function()
		local Players6 = workspace:FindFirstChild("Players")
		local child5 = Players6:FindFirstChild(Players.LocalPlayer.Name)
		local GameCritical7 = child5:FindFirstChild("GameCritical")
		local UserTag5 = GameCritical7:WaitForChild("UserTag", 10)
		local Frame7 = UserTag5:WaitForChild("Frame", 10)
		local Username3 = Frame7:FindFirstChild("Username")
		Username3.Text = false
		local Team3 = Frame7:FindFirstChild("Team")
		Team3.Text = false
	end, character, HumanoidRootPart3, Humanoid2)
end)

Players.LocalPlayer.CharacterRemoving:Connect(function(character2)
end)

local HumanoidRootPart = Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart", 10)
local Humanoid = Players.LocalPlayer.Character:WaitForChild("Humanoid", 10)

local connection2 = Humanoid.Died:Connect(function()
end)

RunService.Heartbeat:Connect(function(deltaTime4)
end)

RunService.Heartbeat:Connect(function(deltaTime5)
end)

task.spawn(function()
end, Players.LocalPlayer.Character, HumanoidRootPart, Humanoid)

getgenv().AimbotSettings = {
	AutoLock = false,
	CopMode = false,
	Enabled = false,
	FovColor = { 255, 255, 255 },
	FovSize = 90,
	InnocentCheck = false,
	LockPart = "Head",
	PrisonerMode = false,
	Sensitivity = 0,
	ShowFov = false,
	WallCheck = false
}

getgenv().aimsettings = {
	AimBone = "Head",
	CuffCheck = true,
	Enabled = false,
	FovColor = { 255, 255, 255 },
	FovSize = 90,
	HighlightKillAura = false,
	HighlightSilentAim = false,
	HitChanceHead = 100,
	HitChanceHumanoidRootPart = 0,
	HitChanceLeftArm = 0,
	HitChanceLeftLeg = 0,
	HitChanceRightArm = 0,
	HitChanceRightLeg = 0,
	InnocentCheck = false,
	KillAura = false,
	KillAuraCrosshairColor = { 255, 255, 255 },
	KillAuraDistance = 1000,
	KillAuraHighlightColor = { 255, 0, 0 },
	KillAuraHitChanceHead = 100,
	KillAuraHitChanceHumanoidRootPart = 0,
	KillAuraHitChanceLeftArm = 0,
	KillAuraHitChanceLeftLeg = 0,
	KillAuraHitChanceRightArm = 0,
	KillAuraHitChanceRightLeg = 0,
	KillAuraPart = "Head",
	KillAuraPriority = "Closest",
	KillAuraShowCrosshair = true,
	KillAuraShowLine = false,
	KillAuraVisColor = { 255, 0, 0 },
	KillAuraVisDuration = 2,
	ShowFov = false,
	ShowInfo = false,
	ShowLine = false,
	ShowTracer = false,
	SilentAimCrosshairColor = { 255, 255, 255 },
	SilentAimHighlightColor = { 0, 255, 255 },
	SilentAimPriority = "Closest",
	SilentAimShowCrosshair = true,
	SilentAimVisColor = { 0, 255, 255 },
	SilentAimVisDuration = 2,
	TracerColor = { 255, 255, 0 },
	VisibleCheck = true,
	VisualizeKillAura = false,
	VisualizeSilentAim = false
}

local response2 = game:HttpGet("https://api.lasion.world/vp/esp")
loadstring(response2)()
local response3 = game:HttpGet("https://api.lasion.world/vp/aimbot")
loadstring(response3)()
local response4 = game:HttpGet("https://api.lasion.world/u/detected")
loadstring(response4)()
local LASIONWindow = uilib:Window({ Title = "LASION", Subtitle = "Brought to you by wwepanda & zyonsphyer", ToggleKey = Enum.KeyCode.RightShift })
local Circle = Drawing.new("Circle")
Circle.Thickness = 2
Circle.NumSides = 60
Circle.Filled = false
Circle.Transparency = 1
Circle.Color = Color3.fromRGB(255, 255, 255)

RunService.RenderStepped:Connect(function(deltaTime6)
	Circle.Visible = false
end)

getgenv().OnAdminDetected = function(arg4)
	LASIONWindow:Notify({ Text = string.format("%s (@%s) is in the server", arg4.DisplayName, arg4.Name), Title = "Admin Detected", Never = true })
end

local tagged = CollectionService:GetTagged("RaycastIgnore")
local instanceAddedSignal = CollectionService:GetInstanceAddedSignal("RaycastIgnore")

instanceAddedSignal:Connect(function(arg6)
	tagged[2] = arg6
end)

local instanceRemovedSignal = CollectionService:GetInstanceRemovedSignal("RaycastIgnore")

instanceRemovedSignal:Connect(function()
	-- [envlog] error: Script:2: invalid argument #1 to 'find' (table expected, got userdata)
end)

local Hints = ReplicatedStorage:WaitForChild("Hints", 10)
local Bindable = Hints:FindFirstChild("Bindable")
Bindable:Destroy()
local BindableAck = Hints:FindFirstChild("BindableAck")
BindableAck:Destroy()

local function createBindableEvent(name)
	local Bindable2 = Instance.new("BindableEvent")
	Bindable2.Name = name
	Bindable2.Parent = Hints
	return Bindable2
end

local Bindable2 = createBindableEvent("Bindable")
local BindableAck2 = createBindableEvent("BindableAck")
Bindable2:Fire(nil, false)

Bindable2.Event:Connect(function()
end)

BindableAck2.Event:Connect(function()
end)

LASIONWindow:SetOnUnload(function()
	connection:Disconnect()
	Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
	Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true)
	RunService:UnbindFromRenderStep("PepperSprayEffect")
	local WeaponEffects = Players.LocalPlayer.PlayerGui:FindFirstChild("WeaponEffects")
	local SprayClient = WeaponEffects:FindFirstChild("SprayClient")
	SprayClient:Destroy()
	local ImageLabel = WeaponEffects:FindFirstChild("ImageLabel")
	ImageLabel:Destroy()
	-- [envlog] error: Script:2: attempt to call a nil value
end)

local function helper(v)
	task.spawn(function()
		run_on_actor(v, string.format("    local ReplicatedStorage = game:GetService(\"ReplicatedStorage\")\n    local hints = ReplicatedStorage:WaitForChild(\"Hints\", 10)\n    local event = hints and hints:WaitForChild(\"Bindable\", 10)\n    local ack = hints and hints:WaitForChild(\"BindableAck\", 10)\n    if not event then return end\n    local lp = game:GetService(\"Players\").LocalPlayer\n    local actor = lp.PlayerScripts.ProjectileActors:WaitForChild(\"%s\")\n    local linkttl = 1\n    local lastseen = 0\n    local cachedpart = nil\n    event.Event:Connect(function(part, fire)\n        if part ~= nil and typeof(part) ~= \"Instance\" then return end\n        lastseen = os.clock()\n        cachedpart = part and part.Parent and part or nil\n        if ack then ack:Fire(actor.Name, cachedpart) end\n    end)\n    local physmod = actor:WaitForChild(\"Phys\")\n    local phys = require(physmod)\n    local raylib = require(ReplicatedStorage:WaitForChild(\"Libraries\"):WaitForChild(\"Raycasting\"))\n    hookfunction(phys._raycast, newcclosure(function(self, origin, endpoint, params)\n        if params and params.FilterType == Enum.RaycastFilterType.Include then\n            return raylib.ez_raycast(raylib, origin, endpoint, params)\n        end\n        local part = cachedpart\n        if part and part.Parent and event.Parent and os.clock() - lastseen <= linkttl and typeof(origin) == \"Vector3\" then\n            local okpos, pos = pcall(function() return part.Position end)\n            if okpos and pos then\n                local delta = pos - origin\n                local dist = delta.Magnitude\n                if dist >= 0.001 then\n                    local clear = raylib.ez_raycast(raylib, origin, pos, params)\n                    if clear == nil or (clear.Instance and (clear.Instance == part or (part.Parent and clear.Instance:IsDescendantOf(part.Parent)))) then\n                        local okmat, mat = pcall(function() return part.Material end)\n                        return {\n                            Instance = part,\n                            Position = pos,\n                            Normal = (origin - pos).Unit,\n                            Distance = dist,\n                            Material = okmat and mat or Enum.Material.Plastic\n                        }\n                    end\n                end\n            end\n        end\n        return raylib.ez_raycast(raylib, origin, endpoint, params)\n    end))\n    local function penlock(self)\n        local part = cachedpart\n        if part and part.Parent and event.Parent and os.clock() - lastseen <= linkttl and self and self.cfig then\n            self.cfig.can_penetrate = false\n            self.cfig.can_ricochet = false\n        end\n    end\n    local steporig = phys.step_projectile\n    if steporig then\n        phys.step_projectile = newcclosure(function(self, a, b)\n            penlock(self)\n            return steporig(self, a, b)\n        end)\n    end\n    local beamorig = phys.compute_beam\n    if beamorig then\n        phys.compute_beam = newcclosure(function(self, a, b, c)\n            penlock(self)\n            return beamorig(self, a, b, c)\n        end)\n    end\n    event:Fire(actor.Name, \"aimhook\")\n", v.Name))
	end)
end

task.spawn(function()
	local PlayerScripts = Players.LocalPlayer:WaitForChild("PlayerScripts", 30)
	local ProjectileActors = PlayerScripts:WaitForChild("ProjectileActors", 30)
	local children2 = ProjectileActors:GetChildren()

	for k4, v4 in children2 do
		helper(v4)
	end

	ProjectileActors.ChildAdded:Connect(function(child4)
		helper(child4)
	end)
end)

local Tab = LASIONWindow:Tab("PLAYER")
Tab:Label("MOVEMENT")

Tab:Toggle({
	Text = "Fly",
	Default = false,
	Flag = "fly",
	Callback = function(state)
		if state then
			workspace.Gravity = 0

			local connection3 = UserInputService.InputBegan:Connect(function(input, gameProcessed)
			end)

			local connection4 = UserInputService.InputEnded:Connect(function(input2, gameProcessed2)
			end)

			local PlayerModule = Players.LocalPlayer.PlayerScripts:WaitForChild("PlayerModule")
			local ControlModule = PlayerModule:WaitForChild("ControlModule")
			require(ControlModule)
		else
			workspace.Gravity = 196.2
			connection3:Disconnect()
			connection4:Disconnect()
			HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
			HumanoidRootPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
		end
	end
})

Tab:Slider({
	Text = "Fly Speed",
	Default = 16,
	Flag = "flyspeed",
	Max = 50,
	Min = 10,
	Callback = function()
	end
})

Tab:Toggle({
	Text = "Freecam",
	Default = false,
	Flag = "freecam",
	Callback = function(state)
		if state then
			workspace.CurrentCamera.CFrame:ToOrientation()
			workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
			UserInputService.MouseBehavior = Enum.MouseBehavior.Default
			UserInputService.MouseIconEnabled = true
			Humanoid.WalkSpeed = 0

			local connection5 = UserInputService.InputBegan:Connect(function(input3, gameProcessed3)
			end)

			local connection6 = UserInputService.InputEnded:Connect(function(input4, gameProcessed4)
			end)

			local connection7 = UserInputService.InputChanged:Connect(function(input5, gameProcessed5)
			end)

			local connection8 = RunService.RenderStepped:Connect(function(deltaTime7)
				UserInputService:IsKeyDown(Enum.KeyCode.LeftShift)
				-- [envlog] error: Script:2: attempt to perform arithmetic (mul) on boolean and number
			end)
		else
			connection5:Disconnect()
			connection6:Disconnect()
			connection7:Disconnect()
			connection8:Disconnect()
			workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
			UserInputService.MouseBehavior = Enum.MouseBehavior.Default
			Humanoid.WalkSpeed = Humanoid.WalkSpeed
		end
	end
})

Tab:Slider({
	Text = "Freecam Speed",
	Default = 1,
	Flag = "freecamspeed",
	Max = 5,
	Min = 0.5,
	Step = 0.1,
	Callback = function()
	end
})

Tab:Toggle({
	Text = "Bhop",
	Default = false,
	Flag = "bhop",
	Callback = function(state)
		if state then
			local connection9 = RunService.Heartbeat:Connect(function(deltaTime8)
				-- [envlog] error: Script:2: attempt to index function with 'Magnitude'
			end)
		else
			connection9:Disconnect()
		end
	end
})

Tab:Toggle({
	Text = "Infinite Stamina",
	Default = false,
	Flag = "infinitestamina",
	Callback = function(state)
		if state then
			local ServerVariables4 = Players.LocalPlayer:FindFirstChild("ServerVariables")
			ServerVariables4:FindFirstChild("StaminaAmount", true)
			ServerVariables4:FindFirstChild("MaxStamina", true)

			task.spawn(function()
			end, Players.LocalPlayer.Character, HumanoidRootPart, Humanoid)

			local connection10 = RunService.Heartbeat:Connect(function(deltaTime9)
			end)
		else
			connection10:Disconnect()
			local ServerVariables5 = Players.LocalPlayer:FindFirstChild("ServerVariables")
			ServerVariables5:FindFirstChild("StaminaAmount", true)
			ServerVariables5:FindFirstChild("MaxStamina", true)
		end
	end
})

Tab:Toggle({
	Text = "CFrame Speed",
	Default = false,
	Flag = "cframespeed",
	Callback = function()
	end
})

Tab:Slider({
	Text = "Speed",
	Default = 16,
	Flag = "speed",
	Max = 50,
	Min = 16,
	Callback = function()
	end
})

Tab:Divider()
Tab:Label("EXTRA")

Tab:Toggle({
	Text = "Infinite Zoom",
	Default = false,
	Flag = "infinitezoom",
	Callback = function(state)
		if state then
			Players.LocalPlayer.CameraMaxZoomDistance = math.huge
		else
			Players.LocalPlayer.CameraMaxZoomDistance = 128
		end
	end
})

Tab:Toggle({
	Text = "Auto Pickup",
	Default = false,
	Flag = "autopickup",
	Callback = function(state)
		if state then
			local DroppedTools = workspace:FindFirstChild("DroppedTools")
			local guid14 = HttpService:GenerateGUID(false)
			local result19 = guid14:gsub("-", "")
			local Folder = Instance.new("Folder")
			Folder.Name = result19
			Folder.Parent = workspace
			local guid15 = HttpService:GenerateGUID(false)
			local result20 = guid15:gsub("-", "")
			local Part = Instance.new("Part")
			Part.CanQuery = false
			Part.CanCollide = false
			Part.Color = Color3.fromRGB(255, 0, 0)
			Part.Anchored = true
			Part.CanTouch = false
			Part.Transparency = 0.3
			Part.Name = result20
			Part.Position = Vector3.new(0, 0, 8)
			Part.Material = Enum.Material.Neon
			Part.Parent = Folder
			Part.Size = Vector3.new(16, 0.20000000298023224, 0.20000000298023224)
			Part:SetAttribute("OffsetX", 0)
			Part:SetAttribute("OffsetZ", 8)
			local guid16 = HttpService:GenerateGUID(false)
			local result21 = guid16:gsub("-", "")
			local Part2 = Instance.new("Part")
			Part2.CanQuery = false
			Part2.CanCollide = false
			Part2.Color = Color3.fromRGB(255, 0, 0)
			Part2.Anchored = true
			Part2.CanTouch = false
			Part2.Transparency = 0.3
			Part2.Name = result21
			Part2.Position = Vector3.new(0, 0, -8)
			Part2.Material = Enum.Material.Neon
			Part2.Parent = Folder
			Part2.Size = Vector3.new(16, 0.20000000298023224, 0.20000000298023224)
			Part2:SetAttribute("OffsetX", 0)
			Part2:SetAttribute("OffsetZ", -8)
			local guid17 = HttpService:GenerateGUID(false)
			local result22 = guid17:gsub("-", "")
			local Part3 = Instance.new("Part")
			Part3.CanQuery = false
			Part3.CanCollide = false
			Part3.Color = Color3.fromRGB(255, 0, 0)
			Part3.Anchored = true
			Part3.CanTouch = false
			Part3.Transparency = 0.3
			Part3.Name = result22
			Part3.Position = Vector3.new(8, 0, 0)
			Part3.Material = Enum.Material.Neon
			Part3.Parent = Folder
			Part3.Size = Vector3.new(0.20000000298023224, 0.20000000298023224, 16)
			Part3:SetAttribute("OffsetX", 8)
			Part3:SetAttribute("OffsetZ", 0)
			local guid18 = HttpService:GenerateGUID(false)
			local result23 = guid18:gsub("-", "")
			local Part4 = Instance.new("Part")
			Part4.CanQuery = false
			Part4.CanCollide = false
			Part4.Color = Color3.fromRGB(255, 0, 0)
			Part4.Anchored = true
			Part4.CanTouch = false
			Part4.Transparency = 0.3
			Part4.Name = result23
			Part4.Position = Vector3.new(-8, 0, 0)
			Part4.Material = Enum.Material.Neon
			Part4.Parent = Folder
			Part4.Size = Vector3.new(0.20000000298023224, 0.20000000298023224, 16)
			Part4:SetAttribute("OffsetX", -8)
			Part4:SetAttribute("OffsetZ", 0)
			local descendants3 = DroppedTools:GetDescendants()

			for k5, v5 in descendants3 do
				v5:FindFirstAncestorOfClass("Model")
			end

			local connection11 = DroppedTools.DescendantAdded:Connect(function(descendant)
				descendant:FindFirstAncestorOfClass("Model")
			end)

			local connection12 = DroppedTools.ChildRemoved:Connect(function(child5)
			end)

			local connection13 = RunService.Heartbeat:Connect(function(deltaTime10)
				local attribute = Part:GetAttribute("OffsetX")
				local attribute2 = Part:GetAttribute("OffsetZ")
				Part.Position = Vector3.new((HumanoidRootPart.Position.X + attribute), (HumanoidRootPart.Position.Y - 3), (HumanoidRootPart.Position.Z + attribute2))
				local attribute3 = Part2:GetAttribute("OffsetX")
				local attribute4 = Part2:GetAttribute("OffsetZ")
				Part2.Position = Vector3.new((HumanoidRootPart.Position.X + attribute3), (HumanoidRootPart.Position.Y - 3), (HumanoidRootPart.Position.Z + attribute4))
				local attribute5 = Part3:GetAttribute("OffsetX")
				local attribute6 = Part3:GetAttribute("OffsetZ")
				Part3.Position = Vector3.new((HumanoidRootPart.Position.X + attribute5), (HumanoidRootPart.Position.Y - 3), (HumanoidRootPart.Position.Z + attribute6))
				local attribute7 = Part4:GetAttribute("OffsetX")
				local attribute8 = Part4:GetAttribute("OffsetZ")
				Part4.Position = Vector3.new((HumanoidRootPart.Position.X + attribute7), (HumanoidRootPart.Position.Y - 3), (HumanoidRootPart.Position.Z + attribute8))
			end)
		else
			connection13:Disconnect()
			connection11:Disconnect()
			connection12:Disconnect()
			Folder:Destroy()
		end
	end
})

Tab:Toggle({
	Text = "Show Server Position",
	Default = false,
	Flag = "showserverposition",
	Callback = function(state)
		if state then
			local guid19 = HttpService:GenerateGUID(false)
			local result24 = guid19:gsub("-", "")
			local Part5 = Instance.new("Part")
			Part5.CanQuery = false
			Part5.Transparency = 1
			Part5.Name = result24
			Part5.CanCollide = false
			Part5.Parent = workspace
			Part5.Anchored = true
			Part5.CanTouch = false
			Part5.Size = HumanoidRootPart.Size
			local guid20 = HttpService:GenerateGUID(false)
			local result25 = guid20:gsub("-", "")
			local SelectionBox = Instance.new("SelectionBox")
			SelectionBox.Name = result25
			SelectionBox.LineThickness = 0.05
			SelectionBox.Adornee = Part5
			SelectionBox.Parent = Part5
			SelectionBox.SurfaceTransparency = 1
			SelectionBox.Color3 = Color3.fromRGB(0, 255, 0)

			local connection14 = RunService.Heartbeat:Connect(function(deltaTime11)
				local ServerVariables6 = Players.LocalPlayer:FindFirstChild("ServerVariables")
				local MDRT = ServerVariables6:FindFirstChild("MDRT")
				local CheatResponse = MDRT:FindFirstChild("CheatResponse")
				local ServerVerifiedCFrame = CheatResponse:FindFirstChild("ServerVerifiedCFrame")
				local MDRT2 = ServerVariables6:FindFirstChild("MDRT")
				MDRT2:FindFirstChild("lastp")
				Part5.CFrame = ServerVerifiedCFrame.Value
			end)
		else
			connection14:Disconnect()
			Part5:Destroy()
		end
	end
})

Tab:Toggle({
	Text = "Spinbot",
	Default = false,
	Flag = "spinbot",
	Callback = function(state)
		if state then
			local connection15 = RunService.RenderStepped:Connect(function(deltaTime12)
				HumanoidRootPart.CFrame = (HumanoidRootPart.CFrame * CFrame.Angles(0, 0.17453292519943295, 0))
			end)
		else
			connection15:Disconnect()
		end
	end
})

Tab:Slider({
	Text = "Spinbot Speed",
	Default = 10,
	Flag = "spinbotspeed",
	Max = 50,
	Min = 1,
	Callback = function()
	end
})

Tab:Slider({
	Text = "Fov",
	Default = 70,
	Flag = "fov",
	Max = 120,
	Min = 70,
	Callback = function(state)
		if state then
			workspace.CurrentCamera.FieldOfView = state
			workspace.CurrentCamera.FieldOfView = state
			local changedSignal = workspace.CurrentCamera:GetPropertyChangedSignal("FieldOfView")

			local connection16 = changedSignal:Connect(function()
				workspace.CurrentCamera.FieldOfView = false
			end)
		else
			workspace.CurrentCamera.FieldOfView = false
			connection16:Disconnect()
			workspace.CurrentCamera.FieldOfView = false
			local changedSignal2 = workspace.CurrentCamera:GetPropertyChangedSignal("FieldOfView")

			changedSignal2:Connect(function()
				workspace.CurrentCamera.FieldOfView = false
			end)
		end
	end
})

Tab:Toggle({
	Text = "Hotswap",
	Default = true,
	Flag = "hotswap",
	Callback = function(state)
		Frame:GetChildren()

		if state then
			TextButton:Destroy()
			local children3 = Stored:GetChildren()

			for k6, v6 in children3 do
			end

			local guid21 = HttpService:GenerateGUID(false)
			local result26 = guid21:gsub("-", "")
			local TextButton5 = Instance.new("TextButton")
			TextButton5.LayoutOrder = 1
			TextButton5.BackgroundTransparency = 1
			TextButton5.Name = result26
			TextButton5.AutoButtonColor = true
			TextButton5.Parent = Frame
			TextButton5.Text = ""
			TextButton5.BorderSizePixel = 0
			TextButton5.Size = UDim2.new(0, 60, 0, 86)
			local guid22 = HttpService:GenerateGUID(false)
			local result27 = guid22:gsub("-", "")
			local ViewportFrame2 = Instance.new("ViewportFrame")
			ViewportFrame2.AnchorPoint = Vector2.new(0.5, 0)
			ViewportFrame2.Name = result27
			ViewportFrame2.Position = UDim2.new(0.5, 0, 0, 2)
			ViewportFrame2.Parent = TextButton5
			ViewportFrame2.BackgroundTransparency = 1
			ViewportFrame2.Size = UDim2.new(0, 52, 0, 52)
			local HotbarEdit2 = v6:FindFirstChild("HotbarEdit")
			HotbarEdit2:FindFirstChild("ViewportObject")
			local clone2 = HotbarEdit2.ViewportObject.Value:Clone()
			local descendants4 = clone2:GetDescendants()

			for k7, v7 in descendants4 do
				v7.Material = Enum.Material.Neon
				v7.Color = Color3.fromRGB(255, 255, 255)
				v7.TextureID = ""
			end

			clone2:PivotTo(CFrame.new())
			clone2.Parent = ViewportFrame2
			local guid23 = HttpService:GenerateGUID(false)
			local result28 = guid23:gsub("-", "")
			local Camera2 = Instance.new("Camera")
			Camera2.Name = result28
			Camera2.Parent = ViewportFrame2
			ViewportFrame2.CurrentCamera = Camera2
			clone2:GetBoundingBox()
			local guid24 = HttpService:GenerateGUID(false)
			local result29 = guid24:gsub("-", "")
			local TextLabel3 = Instance.new("TextLabel")
			TextLabel3.TextColor3 = Color3.fromRGB(235, 235, 235)
			TextLabel3.Parent = TextButton5
			TextLabel3.Text = v6.Name
			TextLabel3.AnchorPoint = Vector2.new(0.5, 1)
			TextLabel3.Font = Enum.Font.Code
			TextLabel3.BackgroundTransparency = 1
			TextLabel3.Position = UDim2.new(0.5, 0, 1, -2)
			TextLabel3.TextTruncate = Enum.TextTruncate.AtEnd
			TextLabel3.Name = result29
			TextLabel3.TextSize = 11
			TextLabel3.Size = UDim2.new(1, -4, 0, 12)

			TextButton5.Activated:Connect(function(inputObject5, clickCount5)
				lastRemotes3:FireServer(v6)
			end)

			result2.box.Size = UDim2.new(0, 72, 0, 114)
			result2.box.Visible = true
		else
			TextButton5:Destroy()
			local children4 = Stored:GetChildren()

			for k8, v8 in children4 do
			end

			local guid25 = HttpService:GenerateGUID(false)
			local result30 = guid25:gsub("-", "")
			local TextButton6 = Instance.new("TextButton")
			TextButton6.LayoutOrder = 1
			TextButton6.BackgroundTransparency = 1
			TextButton6.Name = result30
			TextButton6.AutoButtonColor = true
			TextButton6.Parent = Frame
			TextButton6.Text = ""
			TextButton6.BorderSizePixel = 0
			TextButton6.Size = UDim2.new(0, 60, 0, 86)
			local guid26 = HttpService:GenerateGUID(false)
			local result31 = guid26:gsub("-", "")
			local ViewportFrame3 = Instance.new("ViewportFrame")
			ViewportFrame3.AnchorPoint = Vector2.new(0.5, 0)
			ViewportFrame3.Name = result31
			ViewportFrame3.Position = UDim2.new(0.5, 0, 0, 2)
			ViewportFrame3.Parent = TextButton6
			ViewportFrame3.BackgroundTransparency = 1
			ViewportFrame3.Size = UDim2.new(0, 52, 0, 52)
			local HotbarEdit3 = v8:FindFirstChild("HotbarEdit")
			HotbarEdit3:FindFirstChild("ViewportObject")
			local clone3 = HotbarEdit3.ViewportObject.Value:Clone()
			local descendants5 = clone3:GetDescendants()

			for k9, v9 in descendants5 do
				v9.Material = Enum.Material.Neon
				v9.Color = Color3.fromRGB(255, 255, 255)
				v9.TextureID = ""
			end

			clone3:PivotTo(CFrame.new())
			clone3.Parent = ViewportFrame3
			local guid27 = HttpService:GenerateGUID(false)
			local result32 = guid27:gsub("-", "")
			local Camera3 = Instance.new("Camera")
			Camera3.Name = result32
			Camera3.Parent = ViewportFrame3
			ViewportFrame3.CurrentCamera = Camera3
			clone3:GetBoundingBox()
			local guid28 = HttpService:GenerateGUID(false)
			local result33 = guid28:gsub("-", "")
			local TextLabel4 = Instance.new("TextLabel")
			TextLabel4.TextColor3 = Color3.fromRGB(235, 235, 235)
			TextLabel4.Parent = TextButton6
			TextLabel4.Text = v8.Name
			TextLabel4.AnchorPoint = Vector2.new(0.5, 1)
			TextLabel4.Font = Enum.Font.Code
			TextLabel4.BackgroundTransparency = 1
			TextLabel4.Position = UDim2.new(0.5, 0, 1, -2)
			TextLabel4.TextTruncate = Enum.TextTruncate.AtEnd
			TextLabel4.Name = result33
			TextLabel4.TextSize = 11
			TextLabel4.Size = UDim2.new(1, -4, 0, 12)

			TextButton6.Activated:Connect(function(inputObject6, clickCount6)
				lastRemotes3:FireServer(v8)
			end)

			result2.box.Size = UDim2.new(0, 72, 0, 114)
			result2.box.Visible = false
		end
	end
})

Tab:Toggle({
	Text = "Switch When Low",
	Default = false,
	Flag = "switchwhenlow",
	Callback = function()
	end
})

Tab:Button({
	Text = "Instant Escape",
	Callback = function(state)
		if state then
			local connection17 = RunService.Heartbeat:Connect(function(deltaTime13)
				local GameZones = workspace:FindFirstChild("GameZones")
				local Escape = GameZones:FindFirstChild("Escape")
				local descendants14 = Escape:GetDescendants()

				for i, v52 in ipairs(descendants14) do
					local result51 = v52.CFrame:PointToObjectSpace((HumanoidRootPart.CFrame * CFrame.Angles(0, 0.17453292519943295, 0)).Position)
					local result52 = v52.CFrame:PointToWorldSpace(Vector3.new(math.clamp(result51.X, (-(v52.Size * 0.5).X), (v52.Size * 0.5).X), math.clamp(result51.Y, (-(v52.Size * 0.5).Y), (v52.Size * 0.5).Y), math.clamp(result51.Z, (-(v52.Size * 0.5).Z), (v52.Size * 0.5).Z)))
				end

				HumanoidRootPart.CFrame = (((HumanoidRootPart.CFrame * CFrame.Angles(0, 0.17453292519943295, 0)) - (HumanoidRootPart.CFrame * CFrame.Angles(0, 0.17453292519943295, 0)).Position) + result52)
			end)

			RunService:BindToRenderStep("instantescapewalk", 301, function()
				Humanoid:Move(-HumanoidRootPart.CFrame.LookVector)
			end)
		else
			connection17:Disconnect()
		end
	end
})

Tab:Button({
	Text = "Suicide",
	Callback = function()
		Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
	end
})

Tab:Divider()
Tab:Label("FORCE TEAM")

Tab:Dropdown({
	Text = "Team",
	Default = "None",
	Flag = "forceteam",
	Options = { "None", "State Police", "Department of Corrections", "Civilian", "Booking" },
	Callback = function()
	end
})

Tab:Dropdown({
	Text = "Job",
	Default = "None",
	Flag = "forcejob",
	Options = {
		"None",
		"Riot Officer",
		"Medical Staff",
		"Maintenance",
		"Janitor",
		"Employee",
		"Director",
		"Correctional Officer",
		"Correctional Emergency Response Team",
		"Cook",
		"Assistant Director"
	},
	Callback = function()
	end
})

Tab:Button({
	Text = "Force",
	Callback = function()
	end
})

Tab:Divider()
Tab:Label("MINIGAMES")

Tab:Toggle({
	Text = "No Vent Minigame",
	Default = false,
	Flag = "noventminigame",
	Callback = function(state)
		if state then
			local GameCritical = Players.LocalPlayer.Character:FindFirstChild("GameCritical")
			local GCFunctions = GameCritical:FindFirstChild("GCFunctions")
			local DoorActivity = GCFunctions:FindFirstChild("DoorActivity")
			local Activities = DoorActivity:FindFirstChild("Activities")
			local Vent = Activities:FindFirstChild("Vent")
			require(Vent)

			local connection18 = RunService.Heartbeat:Connect(function(deltaTime14)
				local GameCritical6 = Players.LocalPlayer.Character:FindFirstChild("GameCritical")
				local GCFunctions2 = GameCritical6:FindFirstChild("GCFunctions")
				local DoorActivity2 = GCFunctions2:FindFirstChild("DoorActivity")
				local Activities2 = DoorActivity2:FindFirstChild("Activities")
				local Vent2 = Activities2:FindFirstChild("Vent")
				require(Vent2)
			end)
		else
			connection18:Disconnect()
		end
	end
})

Tab:Toggle({
	Text = "No Rope Minigame",
	Default = false,
	Flag = "noropeminigame",
	Callback = function(state)
		if state then
			local connection19 = RunService.Heartbeat:Connect(function(deltaTime15)
				local RopeTiming = Players.LocalPlayer.Character:FindFirstChild("RopeTiming")
				local Completed = RopeTiming:FindFirstChild("Completed")
				Completed:FireServer(true)
			end)
		else
			connection19:Disconnect()
		end
	end
})

local Tab2 = LASIONWindow:Tab("COPS")
Tab2:Label("ANTI")

Tab2:Toggle({
	Text = "Anti Stun",
	Default = false,
	Flag = "antistun",
	Callback = function(state)
		if state then
			task.spawn(function()
				Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
				Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
				Humanoid.PlatformStand = false
			end, Players.LocalPlayer.Character, HumanoidRootPart, Humanoid)

			Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
			Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
			Humanoid.PlatformStand = false
		else
			Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
			Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true)
		end
	end
})

Tab2:Toggle({
	Text = "Anti Pepper",
	Default = false,
	Flag = "antipepper",
	Callback = function(state)
		if state then
			RunService:UnbindFromRenderStep("PepperSprayEffect")
			local WeaponEffects2 = Players.LocalPlayer.PlayerGui:FindFirstChild("WeaponEffects")
			local SprayClient2 = WeaponEffects2:FindFirstChild("SprayClient")
			SprayClient2:Destroy()
			local ImageLabel2 = WeaponEffects2:FindFirstChild("ImageLabel")
			ImageLabel2:Destroy()

			local connection20 = Players.LocalPlayer.PlayerGui.ChildAdded:Connect(function(child6)
			end)

			local children5 = Players.LocalPlayer.PlayerGui:GetChildren()

			for k10, v10 in children5 do
			end
		else
			connection20:Disconnect()
			RunService:UnbindFromRenderStep("PepperSprayEffect")
			local WeaponEffects3 = Players.LocalPlayer.PlayerGui:FindFirstChild("WeaponEffects")
			local SprayClient3 = WeaponEffects3:FindFirstChild("SprayClient")
			SprayClient3:Destroy()
			local ImageLabel3 = WeaponEffects3:FindFirstChild("ImageLabel")
			ImageLabel3:Destroy()
		end
	end
})

Tab2:Divider()
Tab2:Label("AUTO ARREST")

Tab2:Toggle({
	Text = "Auto Arrest",
	Default = false,
	Flag = "autoarrest",
	Callback = function(state)
		if state then
			local connection21 = Players.PlayerAdded:Connect(function(player)
				local players2 = Players:GetPlayers()

				for k62, v63 in players2 do
				end

				Players:FindFirstChild(false)
				Dropdown:Refresh({ "Closest", v63.Name }, false)
			end)

			local connection22 = Players.PlayerRemoving:Connect(function(player2)
				local players3 = Players:GetPlayers()

				for k63, v64 in players3 do
				end

				Players:FindFirstChild(false)
				Dropdown:Refresh({ "Closest", v64.Name }, false)
			end)

			local guid29 = HttpService:GenerateGUID(false)
			local result34 = guid29:gsub("-", "")
			local Part6 = Instance.new("Part")
			Part6.CanQuery = false
			Part6.Transparency = 1
			Part6.Name = result34
			Part6.CanCollide = false
			Part6.Parent = workspace
			Part6.Anchored = true
			Part6.Shape = Enum.PartType.Cylinder
			Part6.CanTouch = false
			local guid30 = HttpService:GenerateGUID(false)
			local result35 = guid30:gsub("-", "")
			local SelectionBox2 = Instance.new("SelectionBox")
			SelectionBox2.Visible = false
			SelectionBox2.Name = result35
			SelectionBox2.LineThickness = 0.03
			SelectionBox2.Adornee = Part6
			SelectionBox2.SurfaceTransparency = 1
			SelectionBox2.Parent = workspace

			local connection23 = RunService.Heartbeat:Connect(function(deltaTime16)
				Players.LocalPlayer.Character:FindFirstChild("Handcuffs")
				-- [envlog] error: Script:2: attempt to index nil with 'Visible'
			end)
		else
			connection23:Disconnect()
			connection21:Disconnect()
			connection22:Disconnect()
			Part6:Destroy()
			SelectionBox2:Destroy()
		end
	end
})

local Dropdown = Tab2:Dropdown({
	Text = "Target",
	Default = "Closest",
	Flag = "arresttarget",
	Options = { "Closest" },
	Callback = function()
	end
})

Tab2:Slider({
	Text = "Range",
	Default = 10,
	Flag = "arrestrange",
	Max = 10,
	Min = 5,
	Callback = function()
	end
})

Tab2:Toggle({
	Text = "Show Range",
	Default = false,
	Flag = "showarrestrange",
	Callback = function()
	end
})

Tab2:ColorPicker({
	Text = "Range Color",
	Default = Color3.fromRGB(255, 80, 80),
	Flag = "arrestrangecolor",
	Callback = function()
	end
})

local Tab3 = LASIONWindow:Tab("VISUALS")
Tab3:Label("TEAM FILTER")
local teams = Teams:GetTeams()

for k11, v11 in teams do
end

Tab3:MultiDropdown({
	Text = "Team Filter",
	Flag = "teamfilter",
	Options = { v11.Name, "Law Enforcement", "Prisoners" },
	Callback = function(state)
		if state then
			for k12, v12 in state do
			end
		end
	end
})

Tab3:Divider()
Tab3:Label("PLAYERS")

for _, item in ipairs({
	{ text = "Name", flag = "name" },
	{ text = "Health", flag = "health" },
	{ text = "Team", flag = "team" },
	{ text = "Tool", flag = "tool" },
	{ text = "Distance", flag = "distance" },
	{ text = "Wanted", flag = "guilty" },
	{ text = "Invulnerable", flag = "invulnerable" },
	{ text = "Box", flag = "box" },
	{ text = "Radar", flag = "radar" },
	{ text = "Team Color", flag = "espteamcolor" },
	{ text = "Chams", flag = "chams" },
}) do
	Tab3:Toggle({
		Text = item.text,
		Default = false,
		Flag = item.flag,
		Callback = function()
		end
	})
end

for _, item in ipairs({
	{ text = "Name Color", r = 255, g = 255, flag = "namecolor" },
	{ text = "Team Color", r = 255, g = 255, flag = "teamcolor" },
	{ text = "Tool Color", r = 255, g = 255, flag = "toolcolor" },
	{ text = "Distance Color", r = 255, g = 255, flag = "distancecolor" },
	{ text = "Wanted Color", r = 255, g = 255, flag = "wantedcolor" },
	{ text = "Invulnerable Color", r = 255, g = 255, flag = "invulnerablecolor" },
	{ text = "Box Color", r = 255, g = 255, flag = "boxcolor" },
	{ text = "Chams Color", r = 119, g = 120, flag = "chamscolor" },
}) do
	Tab3:ColorPicker({
		Text = item.text,
		Default = Color3.fromRGB(item.r, item.g, 255),
		Flag = item.flag,
		Callback = function()
		end
	})
end

Tab3:Divider()
Tab3:Label("DISTANCE")

for _, item in ipairs({
	{ text = "World Distance", flag = "worlddistance" },
	{ text = "Player Distance", flag = "playerdistance" },
}) do
	Tab3:Slider({
		Text = item.text,
		Default = 1000,
		Flag = item.flag,
		Max = 1000,
		Min = 100,
		Callback = function()
		end
	})
end

Tab3:Divider()
Tab3:Label("TEXT")

Tab3:Dropdown({
	Text = "Font",
	Default = "Plex",
	Flag = "font",
	Options = { "UI", "System", "Plex", "Monospace" },
	Callback = function()
	end
})

Tab3:Slider({
	Text = "Text Size",
	Default = 13,
	Flag = "textsize",
	Max = 18,
	Min = 10,
	Callback = function()
	end
})

Tab3:Divider()
Tab3:Label("WORLD")

for _, item in ipairs({
	{ text = "Vents", flag = "vents" },
	{ text = "Materials", flag = "materials" },
	{ text = "Ropes", flag = "ropes" },
	{ text = "Dropped Tools", flag = "droppedtools" },
	{ text = "Garbage", flag = "garbage" },
}) do
	Tab3:Toggle({
		Text = item.text,
		Default = false,
		Flag = item.flag,
		Callback = function()
		end
	})
end

for _, item in ipairs({
	{ text = "Vent Color", flag = "ventcolor" },
	{ text = "Material Color", flag = "materialcolor" },
	{ text = "Rope Color", flag = "ropecolor" },
	{ text = "Dropped Tool Color", flag = "droppedtoolcolor" },
	{ text = "Garbage Color", flag = "garbagecolor" },
}) do
	Tab3:ColorPicker({
		Text = item.text,
		Default = Color3.fromRGB(220, 50, 50),
		Flag = item.flag,
		Callback = function()
		end
	})
end

local Tab4 = LASIONWindow:Tab("ATMOSPHERE")
Tab4:Label("EFFECTS")

Tab4:Toggle({
	Text = "Full Bright",
	Default = false,
	Flag = "fullbright",
	Callback = function(state)
		if state then
			Lighting.ClockTime = 0
			Lighting.ColorShift_Bottom = Lighting.ColorShift_Bottom
			Lighting.FogColor = Lighting.FogColor
			Lighting.FogEnd = 0
			Lighting.GlobalShadows = Lighting.GlobalShadows
			Lighting.FogStart = 0
			Lighting.OutdoorAmbient = Lighting.OutdoorAmbient
			Lighting.Brightness = 1
			Lighting.ColorShift_Top = Lighting.ColorShift_Top
			local children6 = Lighting:GetChildren()

			for k13, v13 in children6 do
			end

			Lighting.Brightness = 2
			Lighting.ClockTime = 14
			Lighting.FogEnd = 100000
			Lighting.GlobalShadows = false
			Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
		else
			local children7 = Lighting:GetChildren()

			for k14, v14 in children7 do
			end

			Lighting.ClockTime = 0
			Lighting.ColorShift_Bottom = Lighting.ColorShift_Bottom
			Lighting.FogColor = Lighting.FogColor
			Lighting.FogEnd = 0
			Lighting.GlobalShadows = Lighting.GlobalShadows
			Lighting.FogStart = 0
			Lighting.OutdoorAmbient = Lighting.OutdoorAmbient
			Lighting.Brightness = 1
			Lighting.ColorShift_Top = Lighting.ColorShift_Top
		end
	end
})

Tab4:Toggle({
	Text = "Bloom",
	Default = false,
	Flag = "bloom",
	Callback = function(state)
		if state then
			local children8 = Lighting:GetChildren()

			for k15, v15 in children8 do
			end

			local CustomBloom = Instance.new("BloomEffect")
			CustomBloom.Name = "CustomBloom"
			CustomBloom.Threshold = 0.5
			CustomBloom.Size = 24
			CustomBloom.Intensity = 1
			CustomBloom.Parent = Lighting
		else
			Lighting:GetChildren()
			CustomBloom:Destroy()
		end
	end
})

Tab4:Toggle({
	Text = "Fog",
	Default = false,
	Flag = "fog",
	Callback = function(state)
		if state then
			Lighting.ClockTime = 0
			Lighting.ColorShift_Bottom = Lighting.ColorShift_Bottom
			Lighting.FogColor = Lighting.FogColor
			Lighting.FogEnd = 0
			Lighting.GlobalShadows = Lighting.GlobalShadows
			Lighting.FogStart = 0
			Lighting.OutdoorAmbient = Lighting.OutdoorAmbient
			Lighting.Brightness = 1
			Lighting.ColorShift_Top = Lighting.ColorShift_Top
			Lighting:GetChildren()
			Lighting.FogColor = Color3.fromRGB(128, 0, 255)
			Lighting.FogEnd = 500
			Lighting.FogStart = 50
			Lighting.ColorShift_Bottom = Color3.new(0.40156865119934082, 0, 0.8)
			Lighting.ColorShift_Top = Color3.new(0.55215689539909363, 0, 1.1)
			Lighting.Brightness = 1.1
			Lighting.ClockTime = 18.5
			Lighting.OutdoorAmbient = Color3.new(0.30117648839950562, 0, 0.6)
			local PurpleFogAtmosphere = Instance.new("Atmosphere")
			PurpleFogAtmosphere.Name = "PurpleFogAtmosphere"
			PurpleFogAtmosphere.Offset = 0.5
			PurpleFogAtmosphere.Haze = 1.8
			PurpleFogAtmosphere.Color = Color3.fromRGB(128, 0, 255)
			PurpleFogAtmosphere.Decay = Color3.new(0.40156865119934082, 0, 0.8)
			PurpleFogAtmosphere.Glare = 0.1
			PurpleFogAtmosphere.Density = 0.8
			PurpleFogAtmosphere.Parent = Lighting
			local PurpleFogBloom = Instance.new("BloomEffect")
			PurpleFogBloom.Name = "PurpleFogBloom"
			PurpleFogBloom.Threshold = 0.8
			PurpleFogBloom.Size = 15
			PurpleFogBloom.Intensity = 0.4
			PurpleFogBloom.Parent = Lighting
		else
			Lighting:GetChildren()
			PurpleFogAtmosphere:Destroy()
			PurpleFogBloom:Destroy()
			Lighting.ClockTime = 0
			Lighting.ColorShift_Bottom = Lighting.ColorShift_Bottom
			Lighting.FogColor = Lighting.FogColor
			Lighting.FogEnd = 0
			Lighting.GlobalShadows = Lighting.GlobalShadows
			Lighting.FogStart = 0
			Lighting.OutdoorAmbient = Lighting.OutdoorAmbient
			Lighting.Brightness = 1
			Lighting.ColorShift_Top = Lighting.ColorShift_Top
		end
	end
})

Tab4:Toggle({
	Text = "Contrast",
	Default = false,
	Flag = "contrast",
	Callback = function(state)
		Lighting:GetChildren()

		if state then
			local ContrastEffect = Instance.new("ColorCorrectionEffect")
			ContrastEffect.Name = "ContrastEffect"
			ContrastEffect.Contrast = 0.4
			ContrastEffect.Brightness = 0.05
			ContrastEffect.Parent = Lighting
		else
			ContrastEffect:Destroy()
		end
	end
})

Tab4:Toggle({
	Text = "Saturation",
	Default = false,
	Flag = "saturation",
	Callback = function(state)
		Lighting:GetChildren()

		if state then
			local SaturationColorCorrection = Instance.new("ColorCorrectionEffect")
			SaturationColorCorrection.Name = "SaturationColorCorrection"
			SaturationColorCorrection.TintColor = Color3.fromRGB(255, 200, 150)
			SaturationColorCorrection.Brightness = 0.05
			SaturationColorCorrection.Saturation = 2
			SaturationColorCorrection.Contrast = 0.1
			SaturationColorCorrection.Parent = Lighting
		else
			SaturationColorCorrection:Destroy()
		end
	end
})

Tab4:Toggle({
	Text = "Ambience",
	Default = false,
	Flag = "ambience",
	Callback = function(state)
		Lighting:GetChildren()

		if state then
			local AmbienceColorCorrection = Instance.new("ColorCorrectionEffect")
			AmbienceColorCorrection.Name = "AmbienceColorCorrection"
			AmbienceColorCorrection.TintColor = Color3.fromRGB(255, 245, 230)
			AmbienceColorCorrection.Brightness = 0.1
			AmbienceColorCorrection.Saturation = 0.3
			AmbienceColorCorrection.Contrast = 0.2
			AmbienceColorCorrection.Parent = Lighting
			local AmbienceBloom = Instance.new("BloomEffect")
			AmbienceBloom.Name = "AmbienceBloom"
			AmbienceBloom.Threshold = 0.9
			AmbienceBloom.Size = 12
			AmbienceBloom.Intensity = 0.3
			AmbienceBloom.Parent = Lighting
			local AmbienceSunRays = Instance.new("SunRaysEffect")
			AmbienceSunRays.Name = "AmbienceSunRays"
			AmbienceSunRays.Spread = 0.4
			AmbienceSunRays.Intensity = 0.15
			AmbienceSunRays.Parent = Lighting
			local AmbienceDepthOfField = Instance.new("DepthOfFieldEffect")
			AmbienceDepthOfField.Name = "AmbienceDepthOfField"
			AmbienceDepthOfField.FarIntensity = 0.1
			AmbienceDepthOfField.FocusDistance = 50
			AmbienceDepthOfField.InFocusRadius = 30
			AmbienceDepthOfField.NearIntensity = 0.2
			AmbienceDepthOfField.Parent = Lighting
		else
			AmbienceColorCorrection:Destroy()
			AmbienceBloom:Destroy()
			AmbienceSunRays:Destroy()
			AmbienceDepthOfField:Destroy()
		end
	end
})

Tab4:Toggle({
	Text = "Magnetic Field",
	Default = false,
	Flag = "magneticfield",
	Callback = function(state)
		if state then
			local result36 = gethiddenproperty(Players.LocalPlayer, "SimulationRadius")
			sethiddenproperty(Players.LocalPlayer, "SimulationRadius", math.huge)
			Players.LocalPlayer.ReplicationFocus = workspace
			local DroppedTools2 = workspace:FindFirstChild("DroppedTools")

			local connection24 = RunService.Stepped:Connect(function(time, deltaTime17)
				sethiddenproperty(Players.LocalPlayer, "SimulationRadius", math.huge)
				local children32 = DroppedTools2:GetChildren()

				for k52, v53 in children32 do
					local descendants15 = v53:GetDescendants()

					for k53, v54 in descendants15 do
					end
				end
			end)
		else
			connection24:Disconnect()
			sethiddenproperty(Players.LocalPlayer, "SimulationRadius", result36)
			Players.LocalPlayer.ReplicationFocus = Players.LocalPlayer.ReplicationFocus
		end
	end
})

Tab4:ColorPicker({
	Text = "Fog Color",
	Default = Color3.fromRGB(128, 0, 255),
	Flag = "fogcolor",
	Callback = function()
	end
})

Tab4:ColorPicker({
	Text = "Saturation Color",
	Default = Color3.fromRGB(255, 200, 150),
	Flag = "saturationcolor",
	Callback = function()
	end
})

Tab4:Divider()
Tab4:Label("MATERIALS")

Tab4:Toggle({
	Text = "Character Material",
	Default = false,
	Flag = "charactermaterial",
	Callback = function()
		local descendants6 = Players.LocalPlayer.Character:GetDescendants()

		for k16, v16 in descendants6 do
		end
		-- [envlog] error: Script:2: attempt to compare userdata < number
	end
})

Tab4:Dropdown({
	Text = "Character Material Type",
	Default = "ForceField",
	Flag = "charactermaterialtype",
	Options = {
		"ForceField",
		"Neon",
		"Glass",
		"Marble",
		"Granite",
		"Ice",
		"Basalt",
		"Limestone",
		"Metal",
		"CorrodedMetal",
		"Cobblestone",
		"Slate",
		"Wood",
		"Brick",
		"Concrete",
		"Sand",
		"Fabric"
	},
	Callback = function()
		local descendants7 = Players.LocalPlayer.Character:GetDescendants()

		for k17, v17 in descendants7 do
		end
		-- [envlog] error: Script:2: attempt to compare userdata < number
	end
})

Tab4:Toggle({
	Text = "Tool Material",
	Default = false,
	Flag = "toolmaterial",
	Callback = function()
		Players.LocalPlayer.Character.ChildAdded:Connect(function(child7)
			local descendants18 = child7:GetDescendants()

			for k64, v65 in descendants18 do
			end
			-- [envlog] error: Script:2: attempt to compare userdata < number
		end)

		local children9 = Players.LocalPlayer.Character:GetChildren()

		for k18, v18 in children9 do
			local descendants8 = v18:GetDescendants()

			for k19, v19 in descendants8 do
			end
		end
		-- [envlog] error: Script:2: attempt to compare userdata < number
	end
})

Tab4:Dropdown({
	Text = "Tool Material Type",
	Default = "ForceField",
	Flag = "toolmaterialtype",
	Options = {
		"ForceField",
		"Neon",
		"Glass",
		"Marble",
		"Granite",
		"Ice",
		"Basalt",
		"Limestone",
		"Metal",
		"CorrodedMetal",
		"Cobblestone",
		"Slate",
		"Wood",
		"Brick",
		"Concrete",
		"Sand",
		"Fabric"
	},
	Callback = function()
		Players.LocalPlayer.Character.ChildAdded:Connect(function(child8)
			local descendants19 = child8:GetDescendants()

			for k65, v66 in descendants19 do
			end
			-- [envlog] error: Script:2: attempt to compare userdata < number
		end)

		local children10 = Players.LocalPlayer.Character:GetChildren()

		for k20, v20 in children10 do
			local descendants9 = v20:GetDescendants()

			for k21, v21 in descendants9 do
			end
		end
		-- [envlog] error: Script:2: attempt to compare userdata < number
	end
})

Tab4:ColorPicker({
	Text = "Character Color",
	Default = Color3.fromRGB(255, 0, 255),
	Flag = "charactercolor",
	Callback = function()
		local descendants10 = Players.LocalPlayer.Character:GetDescendants()

		for k22, v22 in descendants10 do
		end
		-- [envlog] error: Script:2: attempt to compare userdata < number
	end
})

Tab4:ColorPicker({
	Text = "Tool Color",
	Default = Color3.fromRGB(0, 255, 255),
	Flag = "atmospheretoolcolor",
	Callback = function()
		Players.LocalPlayer.Character.ChildAdded:Connect(function(child9)
			local descendants20 = child9:GetDescendants()

			for k66, v67 in descendants20 do
			end
			-- [envlog] error: Script:2: attempt to compare userdata < number
		end)

		local children11 = Players.LocalPlayer.Character:GetChildren()

		for k23, v23 in children11 do
			local descendants11 = v23:GetDescendants()

			for k24, v24 in descendants11 do
			end
		end
		-- [envlog] error: Script:2: attempt to compare userdata < number
	end
})

Tab4:Divider()
Tab4:Label("SOUND")

Tab4:Toggle({
	Text = "Hit Sound",
	Default = false,
	Flag = "hitsound",
	Callback = function(state)
		if state then
			task.spawn(function()
				local WeaponUI = Players.LocalPlayer.PlayerGui:FindFirstChild("WeaponUI")
				local FastUpdate = WeaponUI:FindFirstChild("FastUpdate")
				local CursorControl = FastUpdate:FindFirstChild("CursorControl")
				local hit = CursorControl:FindFirstChild("hit")
				hit.SoundId = "rbxassetid://3124331820"
				hit.Volume = 0.5
				local crit = CursorControl:FindFirstChild("crit")
				crit.SoundId = "rbxassetid://3124331820"
				crit.Volume = 0.5
			end, Players.LocalPlayer.Character, HumanoidRootPart, Humanoid)

			local WeaponUI2 = Players.LocalPlayer.PlayerGui:FindFirstChild("WeaponUI")
			local FastUpdate2 = WeaponUI2:FindFirstChild("FastUpdate")
			local CursorControl2 = FastUpdate2:FindFirstChild("CursorControl")
			local hit2 = CursorControl2:FindFirstChild("hit")
			hit2.SoundId = "rbxassetid://3124331820"
			hit2.Volume = 0.5
			local crit2 = CursorControl2:FindFirstChild("crit")
			crit2.SoundId = "rbxassetid://3124331820"
			crit2.Volume = 0.5
		else
			local WeaponUI3 = Players.LocalPlayer.PlayerGui:FindFirstChild("WeaponUI")
			local FastUpdate3 = WeaponUI3:FindFirstChild("FastUpdate")
			local CursorControl3 = FastUpdate3:FindFirstChild("CursorControl")
			local hit3 = CursorControl3:FindFirstChild("hit")
			hit3.SoundId = hit.SoundId
			hit3.Volume = hit.Volume
			local crit3 = CursorControl3:FindFirstChild("crit")
			crit3.SoundId = crit.SoundId
			crit3.Volume = crit.Volume
		end
	end
})

Tab4:Dropdown({
	Text = "Hit Sound Type",
	Default = "Bameware",
	Flag = "hitsoundtype",
	Options = {
		"Bameware",
		"Neverlose",
		"Skeet",
		"Cod",
		"Bonk",
		"Quake",
		"Minecraft",
		"CS:GO",
		"Bubble",
		"Pop",
		"Saber",
		"TF2",
		"Rust"
	},
	Callback = function()
	end
})

Tab4:Slider({
	Text = "Hit Volume",
	Default = 50,
	Flag = "hitvolume",
	Max = 100,
	Min = 0,
	Callback = function()
	end
})

Tab4:Toggle({
	Text = "Death Sound",
	Default = false,
	Flag = "deathsound",
	Callback = function(state)
		if state then
			local players = Players:GetPlayers()

			for k25, v25 in players do
				local HumanoidRootPart2 = v25.Character:WaitForChild("HumanoidRootPart", 5)
				local Died = HumanoidRootPart2:FindFirstChild("Died")
				Died.SoundId = "rbxassetid://12222242"
				Died.Volume = 1

				local connection25 = v25.CharacterAdded:Connect(function(character3)
					character3:WaitForChild("HumanoidRootPart", 10)
					local HumanoidRootPart4 = character3:WaitForChild("HumanoidRootPart", 5)
					local Died2 = HumanoidRootPart4:FindFirstChild("Died")
					Died2.SoundId = "rbxassetid://12222242"
					Died2.Volume = ((arg184 / 100) * 2)
				end)
			end

			local connection26 = Players.PlayerAdded:Connect(function(player3)
				local HumanoidRootPart5 = player3.Character:WaitForChild("HumanoidRootPart", 5)
				local Died3 = HumanoidRootPart5:FindFirstChild("Died")
				Died3.SoundId = "rbxassetid://12222242"
				Died3.Volume = ((arg184 / 100) * 2)

				player3.CharacterAdded:Connect(function(character4)
					character4:WaitForChild("HumanoidRootPart", 10)
					local HumanoidRootPart6 = character4:WaitForChild("HumanoidRootPart", 5)
					local Died4 = HumanoidRootPart6:FindFirstChild("Died")
					Died4.SoundId = "rbxassetid://12222242"
					Died4.Volume = ((arg184 / 100) * 2)
				end)
			end)
		else
			connection26:Disconnect()
			connection25:Disconnect()
			Died.SoundId = Died.SoundId
			Died.Volume = Died.Volume
		end
	end
})

Tab4:Dropdown({
	Text = "Death Sound Type",
	Default = "Roblox",
	Flag = "deathsoundtype",
	Options = {
		"Roblox",
		"Sad Violin",
		"Windows Error",
		"Emotional Damage",
		"Duck Quack",
		"Brazil",
		"Minecraft Hurt",
		"Wilhelm Scream",
		"Vine Boom",
		"Wasted",
		"Bruh",
		"Fart",
		"Explosion",
		"Windows Shutdown",
		"Sheesh",
		"Taco Bell"
	},
	Callback = function()
	end
})

Tab4:Slider({
	Text = "Death Volume",
	Default = 50,
	Flag = "deathvolume",
	Max = 100,
	Min = 0,
	Callback = function()
	end
})

Tab4:Divider()
Tab4:Label("EDITOR")

Tab4:InputText({
	Text = "Username",
	Flag = "username",
	Placeholder = "Username",
	Callback = function(state)
		if state then
			local Players2 = workspace:FindFirstChild("Players")
			local child = Players2:FindFirstChild(Players.LocalPlayer.Name)
			local GameCritical2 = child:FindFirstChild("GameCritical")
			local UserTag = GameCritical2:FindFirstChild("UserTag")
			local Frame3 = UserTag:FindFirstChild("Frame")
			local Username = Frame3:FindFirstChild("Username")
			Username.Text = state
		else
			local Players3 = workspace:FindFirstChild("Players")
			local child2 = Players3:FindFirstChild(Players.LocalPlayer.Name)
			local GameCritical3 = child2:FindFirstChild("GameCritical")
			local UserTag2 = GameCritical3:FindFirstChild("UserTag")
			local Frame4 = UserTag2:FindFirstChild("Frame")
			local Username2 = Frame4:FindFirstChild("Username")
			Username2.Text = false
		end
	end
})

Tab4:InputText({
	Text = "Team",
	Flag = "editorteam",
	Placeholder = "Team",
	Callback = function(state)
		if state then
			local Players4 = workspace:FindFirstChild("Players")
			local child3 = Players4:FindFirstChild(Players.LocalPlayer.Name)
			local GameCritical4 = child3:FindFirstChild("GameCritical")
			local UserTag3 = GameCritical4:FindFirstChild("UserTag")
			local Frame5 = UserTag3:FindFirstChild("Frame")
			local Team = Frame5:FindFirstChild("Team")
			Team.Text = state
		else
			local Players5 = workspace:FindFirstChild("Players")
			local child4 = Players5:FindFirstChild(Players.LocalPlayer.Name)
			local GameCritical5 = child4:FindFirstChild("GameCritical")
			local UserTag4 = GameCritical5:FindFirstChild("UserTag")
			local Frame6 = UserTag4:FindFirstChild("Frame")
			local Team2 = Frame6:FindFirstChild("Team")
			Team2.Text = false
		end
	end
})

Tab4:Divider()
Tab4:Label("MORPHS")

Tab4:Toggle({
	Text = "Tung Tung Sahur",
	Default = false,
	Flag = "tungtungsahur",
	Callback = function(state)
		if state then
			task.spawn(function()
				local children12 = workspace.CurrentCamera:GetChildren()

				for k26, v26 in children12 do
					v26:GetAttribute("TungTung")
					v26:Destroy()
				end

				local descendants12 = Players.LocalPlayer.Character:GetDescendants()

				for k27, v27 in descendants12 do
				end

				task.wait(1)
			end, Players.LocalPlayer.Character, HumanoidRootPart, Humanoid)
		else
			local children13 = workspace.CurrentCamera:GetChildren()

			for k28, v28 in children13 do
				v28:GetAttribute("TungTung")
				v28:Destroy()
			end

			local descendants13 = Players.LocalPlayer.Character:GetDescendants()

			for k29, v29 in descendants13 do
			end
		end
	end
})

local Tab5 = LASIONWindow:Tab("RAGE")
local Tab6 = LASIONWindow:Tab("LEGIT")
Tab5:Label("SILENT AIM")

Tab5:Toggle({
	Text = "Silent Aim",
	Default = false,
	Flag = "silentaim",
	Callback = function(state)
		if state then
			local connection27 = RunService.Heartbeat:Connect(function(deltaTime18)
			end)

			local connection28 = RunService.RenderStepped:Connect(function(deltaTime19)
			end)

			task.spawn(function(...)
				Bindable2:Fire(nil, false)
				Bindable2:Fire(nil, false)

				task.spawn(function()
					Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")

					local connection29 = Players.LocalPlayer.Character.ChildAdded:Connect(function(child10)
					end)

					local connection30 = Players.LocalPlayer.Character.ChildRemoved:Connect(function(child11)
					end)
				end, Players.LocalPlayer.Character, HumanoidRootPart, Humanoid)
			end, Players.LocalPlayer.Character, HumanoidRootPart, Humanoid)

			Bindable2:Fire(nil, false)
			connection29:Disconnect()
			connection30:Disconnect()

			task.spawn(function()
				Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")

				local connection31 = Players.LocalPlayer.Character.ChildAdded:Connect(function(child12)
				end)

				local connection32 = Players.LocalPlayer.Character.ChildRemoved:Connect(function(child13)
				end)
			end, Players.LocalPlayer.Character, HumanoidRootPart, Humanoid)
		else
			connection28:Disconnect()
			connection27:Disconnect()
			Bindable2:Fire(nil, false)
			Bindable2:Fire(nil, false)
			connection31:Disconnect()
			connection32:Disconnect()
			Bindable2:Fire(nil, false)
		end
	end
})

Tab5:Dropdown({
	Text = "Priority",
	Default = "Closest",
	Flag = "silentaimpriority",
	Options = { "Closest", "Weapon", "Lowest Health", "Highest Health", "Farthest" },
	Callback = function()
	end
})

Tab5:Toggle({
	Text = "Visible Check",
	Default = true,
	Flag = "visiblecheck",
	Callback = function()
	end
})

Tab5:Toggle({
	Text = "Innocent Check",
	Default = false,
	Flag = "innocentcheck",
	Callback = function()
	end
})

Tab5:Label("HIT CHANCE")

local Slider = Tab5:Slider({
	Text = "Head",
	Default = 100,
	Flag = "hitchancehead",
	Max = 100,
	Min = 0,
	Callback = function()
		-- [envlog] error: Script:2: attempt to compare number < userdata
	end
})

local Slider2 = Tab5:Slider({
	Text = "HumanoidRootPart",
	Default = 0,
	Flag = "hitchancehumanoidrootpart",
	Max = 100,
	Min = 0,
	Callback = function()
		Slider:Get()
		-- [envlog] error: Script:2: attempt to compare number < userdata
	end
})

local Slider3 = Tab5:Slider({
	Text = "Left Arm",
	Default = 0,
	Flag = "hitchanceleftarm",
	Max = 100,
	Min = 0,
	Callback = function()
		Slider:Get()
		Slider2:Get()
		-- [envlog] error: Script:2: attempt to compare number < userdata
	end
})

local Slider4 = Tab5:Slider({
	Text = "Right Arm",
	Default = 0,
	Flag = "hitchancerightarm",
	Max = 100,
	Min = 0,
	Callback = function()
		Slider:Get()
		Slider2:Get()
		Slider3:Get()
		-- [envlog] error: Script:2: attempt to compare number < userdata
	end
})

local Slider5 = Tab5:Slider({
	Text = "Left Leg",
	Default = 0,
	Flag = "hitchanceleftleg",
	Max = 100,
	Min = 0,
	Callback = function()
		Slider:Get()
		Slider2:Get()
		Slider3:Get()
		Slider4:Get()
		-- [envlog] error: Script:2: attempt to compare number < userdata
	end
})

Tab5:Slider({
	Text = "Right Leg",
	Default = 0,
	Flag = "hitchancerightleg",
	Max = 100,
	Min = 0,
	Callback = function()
		Slider:Get()
		Slider2:Get()
		Slider3:Get()
		Slider4:Get()
		Slider5:Get()
		-- [envlog] error: Script:2: attempt to compare number < userdata
	end
})

Tab5:Label("VISUALS")

Tab5:Toggle({
	Text = "Visualize",
	Default = false,
	Flag = "silentaimvisualize",
	Callback = function()
	end
})

Tab5:Slider({
	Text = "Visualize Duration",
	Default = 2,
	Flag = "silentaimvisualizeduration",
	Max = 10,
	Min = 0.1,
	Step = 0.1,
	Callback = function()
	end
})

for _, item in ipairs({
	{ text = "Visualize Color", r = 0, flag = "silentaimvisualizecolor", text2 = "Crosshair", default = true, flag2 = "silentaimcrosshair" },
	{ text = "Crosshair Color", r = 255, flag = "silentaimcrosshaircolor", text2 = "Hit Highlight", default = false, flag2 = "silentaimhighlight" },
	{ text = "Hit Highlight Color", r = 0, flag = "silentaimhighlightcolor", text2 = "Show FOV", default = false, flag2 = "showfov" },
}) do
	Tab5:ColorPicker({
		Text = item.text,
		Default = Color3.fromRGB(item.r, 255, 255),
		Flag = item.flag,
		Callback = function()
		end
	})

	Tab5:Toggle({
		Text = item.text2,
		Default = item.default,
		Flag = item.flag2,
		Callback = function()
		end
	})
end

Tab5:Slider({
	Text = "FOV Size",
	Default = 90,
	Flag = "fovsize",
	Max = 300,
	Min = 30,
	Callback = function()
	end
})

Tab5:ColorPicker({
	Text = "FOV Color",
	Default = Color3.fromRGB(255, 255, 255),
	Flag = "fovcolor",
	Callback = function(arg230)
		Circle.Color = arg230
	end
})

Tab5:Toggle({
	Text = "Show Tracer",
	Default = false,
	Flag = "showtracer",
	Callback = function()
	end
})

Tab5:ColorPicker({
	Text = "Tracer Color",
	Default = Color3.fromRGB(255, 255, 0),
	Flag = "tracercolor",
	Callback = function()
	end
})

Tab5:Toggle({
	Text = "Show Line",
	Default = false,
	Flag = "showline",
	Callback = function()
	end
})

Tab5:Toggle({
	Text = "Show Info",
	Default = false,
	Flag = "showinfo",
	Callback = function()
	end
})

Tab5:Divider()
Tab5:Label("KILL AURA")

Tab5:Toggle({
	Text = "Kill Aura",
	Default = false,
	Flag = "killaura",
	Callback = function(state)
		if state then
			local connection33 = RunService.Heartbeat:Connect(function(deltaTime20)
				Bindable2:Fire(nil, false)
			end)

			local connection34 = RunService.Heartbeat:Connect(function(deltaTime21)
			end)

			task.spawn(function(...)
				local Tool = Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")

				task.spawn(function()
					local Actor = Tool:FindFirstChild("Actor")
					run_on_actor(Actor, "    local Players = game:GetService(\"Players\")\n    local RunService = game:GetService(\"RunService\")\n    local ReplicatedStorage = game:GetService(\"ReplicatedStorage\")\n    local lp = Players.LocalPlayer\n    local tool = lp.Character and lp.Character:FindFirstChildOfClass(\"Tool\")\n    if not tool then return end\n    local actor = tool:FindFirstChild(\"Actor\")\n    if not actor then return end\n    local gunmod = actor:WaitForChild(\"gununi\", 10)\n    if not gunmod then return end\n    local ok, gun = pcall(require, gunmod)\n    if not ok or not gun then return end\n    if gun.kadriver and typeof(gun.kadriver) == \"RBXScriptConnection\" then\n        pcall(function() gun.kadriver:Disconnect() end)\n    end\n    local hints = ReplicatedStorage:WaitForChild(\"Hints\", 10)\n    local event = hints and hints:WaitForChild(\"Bindable\", 10)\n    if not event then return end\n    local cachedpart, cachedfire = nil, false\n    event.Event:Connect(function(part, fire)\n        if part ~= nil and typeof(part) ~= \"Instance\" then return end\n        cachedpart = part and part.Parent and part or nil\n        cachedfire = fire == true\n    end)\n    local remote = nil\n    local function getremote()\n        if remote and remote.Parent then return remote end\n        local rems = actor:FindFirstChild(\"remotes\")\n        remote = rems and rems:FindFirstChild(\"RemoteEvent\")\n        return remote\n    end\n    local webegan = false\n    local lastreload = 0\n    local function stopfiring()\n        if not webegan then return end\n        webegan = false\n        pcall(function() gun:end_fire() end)\n        local event = getremote()\n        if event then\n            pcall(function() event:FireServer(\"mouse1\", \"up\") end)\n        end\n    end\n    local function dobegin()\n        pcall(function() gun:begin_fire() end)\n        webegan = true\n    end\n    local function doreload()\n        local event = getremote()\n        if event then event:FireServer(\"reload\", \"down\") end\n        pcall(function() gun:reload() end)\n    end\n    pcall(function()\n        local event = getremote()\n        if event then event:FireServer(\"mouse1\", \"up\") end\n    end)\n    pcall(function()\n        if gun:gvar(\"firing\") then gun:end_fire() end\n    end)\n    local conn = nil\n    conn = RunService.Heartbeat:Connect(function()\n        if not event.Parent then\n            stopfiring()\n            gun.kadriver = nil\n            conn:Disconnect()\n            return\n        end\n        if tool.Parent == nil then\n            stopfiring()\n            gun.kadriver = nil\n            conn:Disconnect()\n            return\n        end\n        local c = lp.Character\n        local part = cachedpart\n        local wantfire = cachedfire\n        local cfg = tool:FindFirstChild(\"Configuration\")\n        if wantfire and part and part.Parent and tool.Parent == c and cfg then\n            local ammo = gun:gvar(\"currentammo\") or 0\n            if ammo <= 0 then\n                stopfiring()\n                local reserve = gun:gvar(\"reserveammo\") or 0\n                if reserve > 0 and not gun:gvar(\"reloading\") and os.clock() - lastreload > 2 then\n                    lastreload = os.clock()\n                    doreload()\n                end\n            elseif not gun:gvar(\"reloading\") and gun:gvar(\"canfire\", true) ~= false then\n                local event = getremote()\n                if event then\n                    pcall(function()\n                        event:FireServer(\"mouse1\", \"down\")\n                        event:FireServer(\"mouse1\", \"up\")\n                    end)\n                end\n                if gun:gvar(\"firemode\") == \"semi\" or gun:gvar(\"singleaction\") or gun:gvar(\"doubleaction\") then\n                    dobegin()\n                    task.wait()\n                elseif gun:gvar(\"firing\") ~= true then\n                    dobegin()\n                end\n                return\n            end\n            return\n        end\n        stopfiring()\n    end)\n    gun.kadriver = conn\n")
				end)

				local connection35 = Players.LocalPlayer.Character.ChildAdded:Connect(function(child14)
				end)

				local connection36 = Players.LocalPlayer.Character.ChildRemoved:Connect(function(child15)
				end)
			end, Players.LocalPlayer.Character, HumanoidRootPart, Humanoid)
		else
			Bindable2:Fire(nil, false)
			connection33:Disconnect()
			Bindable2:Fire(nil, false)
			connection34:Disconnect()
			connection35:Disconnect()
			connection36:Disconnect()
			Bindable2:Fire(nil, false)
		end
	end
})

Tab5:Dropdown({
	Text = "Priority",
	Default = "Closest",
	Flag = "killaurapriority",
	Options = { "Closest", "Weapon", "Lowest Health", "Highest Health", "Farthest" },
	Callback = function()
	end
})

Tab5:Slider({
	Text = "Distance",
	Default = 1000,
	Flag = "killauradistance",
	Max = 1000,
	Min = 10,
	Callback = function()
	end
})

Tab5:Label("HIT CHANCE")

local Slider6 = Tab5:Slider({
	Text = "Head",
	Default = 100,
	Flag = "killaurahitchancehead",
	Max = 100,
	Min = 0,
	Callback = function()
		-- [envlog] error: Script:2: attempt to compare number < userdata
	end
})

local Slider7 = Tab5:Slider({
	Text = "HumanoidRootPart",
	Default = 0,
	Flag = "killaurahitchancehumanoidrootpart",
	Max = 100,
	Min = 0,
	Callback = function()
		Slider6:Get()
		-- [envlog] error: Script:2: attempt to compare number < userdata
	end
})

local Slider8 = Tab5:Slider({
	Text = "Left Arm",
	Default = 0,
	Flag = "killaurahitchanceleftarm",
	Max = 100,
	Min = 0,
	Callback = function()
		Slider6:Get()
		Slider7:Get()
		-- [envlog] error: Script:2: attempt to compare number < userdata
	end
})

local Slider9 = Tab5:Slider({
	Text = "Right Arm",
	Default = 0,
	Flag = "killaurahitchancerightarm",
	Max = 100,
	Min = 0,
	Callback = function()
		Slider6:Get()
		Slider7:Get()
		Slider8:Get()
		-- [envlog] error: Script:2: attempt to compare number < userdata
	end
})

local Slider10 = Tab5:Slider({
	Text = "Left Leg",
	Default = 0,
	Flag = "killaurahitchanceleftleg",
	Max = 100,
	Min = 0,
	Callback = function()
		Slider6:Get()
		Slider7:Get()
		Slider8:Get()
		Slider9:Get()
		-- [envlog] error: Script:2: attempt to compare number < userdata
	end
})

Tab5:Slider({
	Text = "Right Leg",
	Default = 0,
	Flag = "killaurahitchancerightleg",
	Max = 100,
	Min = 0,
	Callback = function()
		Slider6:Get()
		Slider7:Get()
		Slider8:Get()
		Slider9:Get()
		Slider10:Get()
		-- [envlog] error: Script:2: attempt to compare number < userdata
	end
})

Tab5:Label("VISUALS")

Tab5:Toggle({
	Text = "Visualize",
	Default = false,
	Flag = "killauravisualize",
	Callback = function()
	end
})

Tab5:Slider({
	Text = "Visualize Duration",
	Default = 2,
	Flag = "killauravisualizeduration",
	Max = 10,
	Min = 0.1,
	Step = 0.1,
	Callback = function()
	end
})

for _, item in ipairs({
	{ text = "Visualize Color", g = 0, flag = "killauravisualizecolor", text2 = "Crosshair", default = true, flag2 = "killauracrosshair" },
	{ text = "Crosshair Color", g = 255, flag = "killauracrosshaircolor", text2 = "Hit Highlight", default = false, flag2 = "killaurahighlight" },
}) do
	Tab5:ColorPicker({
		Text = item.text,
		Default = Color3.fromRGB(255, item.g, item.g),
		Flag = item.flag,
		Callback = function()
		end
	})

	Tab5:Toggle({
		Text = item.text2,
		Default = item.default,
		Flag = item.flag2,
		Callback = function()
		end
	})
end

Tab5:ColorPicker({
	Text = "Hit Highlight Color",
	Default = Color3.fromRGB(255, 0, 0),
	Flag = "killaurahighlightcolor",
	Callback = function()
	end
})

Tab5:Divider()
Tab5:Label("GUN MODS")

Tab5:Toggle({
	Text = "Full Auto",
	Default = false,
	Flag = "fullauto",
	Callback = function(state)
		if state then
			task.spawn(function()
				local connection37 = Players.LocalPlayer.Character.ChildAdded:Connect(function(child16)
					local Configuration5 = child16:FindFirstChild("Configuration")
					Configuration5:GetAttribute("firemode")
					Configuration5:SetAttribute("firemode", "auto")
				end)

				local children14 = Players.LocalPlayer.Character:GetChildren()

				for k30, v30 in children14 do
					local Configuration = v30:FindFirstChild("Configuration")
					Configuration:GetAttribute("firemode")
					Configuration:SetAttribute("firemode", "auto")
				end
			end, Players.LocalPlayer.Character, HumanoidRootPart, Humanoid)
		else
			connection37:Disconnect()
			local children15 = Players.LocalPlayer.Character:GetChildren()

			for k31, v31 in children15 do
			end

			local Backpack = Players.LocalPlayer:FindFirstChild("Backpack")
			local children16 = Backpack:GetChildren()

			for k32, v32 in children16 do
			end
		end
	end
})

Tab5:Toggle({
	Text = "Moderate Firerate",
	Default = false,
	Flag = "moderatefirerate",
	Callback = function(state)
		if state then
			task.spawn(function()
				local connection38 = Players.LocalPlayer.Character.ChildAdded:Connect(function(child17)
					local Configuration6 = child17:FindFirstChild("Configuration")
					Configuration6:GetAttribute("rpm")
				end)

				local children17 = Players.LocalPlayer.Character:GetChildren()

				for k33, v33 in children17 do
					local Configuration2 = v33:FindFirstChild("Configuration")
					Configuration2:GetAttribute("rpm")
				end
			end, Players.LocalPlayer.Character, HumanoidRootPart, Humanoid)
		else
			connection38:Disconnect()
			local children18 = Players.LocalPlayer.Character:GetChildren()

			for k34, v34 in children18 do
			end

			local Backpack2 = Players.LocalPlayer:FindFirstChild("Backpack")
			local children19 = Backpack2:GetChildren()

			for k35, v35 in children19 do
			end
		end
	end
})

Tab5:Slider({
	Text = "Firerate",
	Default = 125,
	Flag = "firerate",
	Max = 200,
	Min = 100,
	Callback = function()
	end
})

Tab5:Slider({
	Text = "Recoil",
	Default = 100,
	Flag = "recoil",
	Max = 100,
	Min = 0,
	Callback = function(arg278)
		task.spawn(function()
			Players.LocalPlayer.Character.ChildAdded:Connect(function(child18)
				local ModelShakeFactor5, CameraRecoilMultiplier5 = getCameraRecoilMultiplier2(child18, arg278)
			end)

			local children20 = Players.LocalPlayer.Character:GetChildren()

			for k36, v36 in children20 do
				local ModelShakeFactor, CameraRecoilMultiplier = getCameraRecoilMultiplier2(v36, arg278)
			end
		end, Players.LocalPlayer.Character, HumanoidRootPart, Humanoid)
	end
})

Tab5:Slider({
	Text = "Spread",
	Default = 100,
	Flag = "spread",
	Max = 100,
	Min = 0,
	Callback = function()
		-- [envlog] error: Script:2: attempt to perform arithmetic (div) on boolean and number
	end
})

Tab5:Toggle({
	Text = "Auto Reload",
	Default = false,
	Flag = "autoreload",
	Callback = function()
	end
})

Tab5:Slider({
	Text = "Reload Percent",
	Default = 20,
	Flag = "reloadpercent",
	Max = 100,
	Min = 0,
	Callback = function()
	end
})

Tab6:Label("AIMBOT")

Tab6:Toggle({
	Text = "Aimbot",
	Default = false,
	Flag = "aimbot",
	Callback = function()
	end
})

Tab6:Dropdown({
	Text = "Aim Bone",
	Default = "Head",
	Flag = "aimbone",
	Options = { "Random", "Head", "HumanoidRootPart", "Left Arm", "Right Arm", "Left Leg", "Right Leg", "Torso" },
	Callback = function()
	end
})

for _, item in ipairs({
	{ text = "Wall Check", flag = "wallcheck" },
	{ text = "Innocent Check", flag = "aimbotinnocentcheck" },
	{ text = "Auto Lock Closest", flag = "autolockclosest" },
	{ text = "Trigger Bot", flag = "triggerbot" },
	{ text = "Show FOV", flag = "aimbotshowfov" },
}) do
	Tab6:Toggle({
		Text = item.text,
		Default = false,
		Flag = item.flag,
		Callback = function()
		end
	})
end

for _, item in ipairs({
	{ text = "FOV Size", default = 90, flag = "aimbotfovsize", max = 300, min = 30 },
	{ text = "Smoothing", default = 0, flag = "smoothing", max = 10, min = 0 },
}) do
	Tab6:Slider({
		Text = item.text,
		Default = item.default,
		Flag = item.flag,
		Max = item.max,
		Min = item.min,
		Callback = function()
		end
	})
end

Tab6:ColorPicker({
	Text = "FOV Color",
	Default = Color3.fromRGB(255, 255, 255),
	Flag = "aimbotfovcolor",
	Callback = function()
	end
})

local Tab7 = LASIONWindow:Tab("UTILITIES")
Tab7:Label("CRAFT")

Tab7:Dropdown({
	Text = "Item",
	Default = "Rope",
	Flag = "craftitem",
	Options = { "Rope", "Shiv", "Screwdriver" },
	Callback = function()
	end
})

Tab7:InputText({
	Text = "Amount",
	Flag = "craftamount",
	Placeholder = "Amount",
	Callback = function()
	end
})

Tab7:Button({
	Text = "Craft",
	Callback = function(state)
		if state then
			local Libraries = ReplicatedStorage:FindFirstChild("Libraries")
			local Gameplay = Libraries:FindFirstChild("Gameplay")
			local Crafting = Gameplay:FindFirstChild("Crafting")
			local CanPlayerCraftRecipe = Crafting:FindFirstChild("CanPlayerCraftRecipe")
			local TryToCraft = Crafting:FindFirstChild("TryToCraft")
			local module = require(CanPlayerCraftRecipe)
			local module2 = require(TryToCraft)
			module(Players.LocalPlayer, "Rope")
			module2(Players.LocalPlayer, "Rope")
		else
			local Libraries2 = ReplicatedStorage:FindFirstChild("Libraries")
			local Gameplay2 = Libraries2:FindFirstChild("Gameplay")
			local Crafting2 = Gameplay2:FindFirstChild("Crafting")
			local CanPlayerCraftRecipe2 = Crafting2:FindFirstChild("CanPlayerCraftRecipe")
			local TryToCraft2 = Crafting2:FindFirstChild("TryToCraft")
			local module3 = require(CanPlayerCraftRecipe2)
			local module4 = require(TryToCraft2)
			module3(Players.LocalPlayer, "Rope")
			module4(Players.LocalPlayer, "Rope")
		end
	end
})

Tab7:Divider()
Tab7:Label("GATE CONTROL")
local Dropdown2 = Tab7:Dropdown({ Text = "Gate", Default = "Left Gate", Flag = "gate", Options = { "Left Gate", "Right Gate" } })

Tab7:Button({
	Text = "Open",
	Callback = function(state)
		if state then
			local result37 = Dropdown2:Get()
			local SurfaceUIs = Players.LocalPlayer.PlayerGui:FindFirstChild("SurfaceUIs")
			local GateControl = SurfaceUIs:FindFirstChild("GateControl")
			local Main = GateControl:FindFirstChild("Main")
			local Container = Main:FindFirstChild("Container")
			local Switches = Container:FindFirstChild("Switches")
			local children21 = Switches:GetChildren()

			for k37, v37 in children21 do
				v37:FindFirstChild("Gate")
			end

			local result38 = result37:lower()
			result38:find("left")
			local result39 = v37.Name:lower()
			result39:find("left")
			local RemoteFunction = v37.Gate.Value:FindFirstChild("RemoteFunction")

			task.spawn(function(...)
				RemoteFunction:InvokeServer()

				task.delay(0.5, function()
					local SurfaceUIs2 = Players.LocalPlayer.PlayerGui:FindFirstChild("SurfaceUIs")
					local GateControl2 = SurfaceUIs2:FindFirstChild("GateControl")
					local Main2 = GateControl2:FindFirstChild("Main")
					local Container2 = Main2:FindFirstChild("Container")
					local Switches2 = Container2:FindFirstChild("Switches")
					local children30 = Switches2:GetChildren()

					for k50, v50 in children30 do
						v50:FindFirstChild("Gate")
					end

					local result49 = v50.Name:lower()
					result49:find("left")
					v50.Gate.Value:FindFirstChild("Open")
					uilib.state.frames["Utilities.Gate Status.Left Gate"].Text = "Left Gate: Open"
					local SurfaceUIs3 = Players.LocalPlayer.PlayerGui:FindFirstChild("SurfaceUIs")
					local GateControl3 = SurfaceUIs3:FindFirstChild("GateControl")
					local Main3 = GateControl3:FindFirstChild("Main")
					local Container3 = Main3:FindFirstChild("Container")
					local Switches3 = Container3:FindFirstChild("Switches")
					local children31 = Switches3:GetChildren()

					for k51, v51 in children31 do
						v51:FindFirstChild("Gate")
					end

					local result50 = v51.Name:lower()
					result50:find("right")
					v51.Gate.Value:FindFirstChild("Open")
					uilib.state.frames["Utilities.Gate Status.Right Gate"].Text = "Right Gate: Open"
				end)
			end)
		else
			Dropdown2:Get()
			LASIONWindow:Notify({ Text = "Wait for the gate.", Title = "Gates", Duration = 2 })
		end
	end
})

Tab7:Button({
	Text = "Close",
	Callback = function()
		Dropdown2:Get()
		LASIONWindow:Notify({ Text = "Wait for the gate.", Title = "Gates", Duration = 2 })
	end
})

Tab7:Divider()
Tab7:Label("EXTRA")

Tab7:Toggle({
	Text = "Instant Prompts",
	Default = false,
	Flag = "instantprompts",
	Callback = function(state)
		if state then
			local connection39 = ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt, player4)
				fireproximityprompt(prompt)
			end)
		else
			connection39:Disconnect()
		end
	end
})

local Tab8 = LASIONWindow:Tab("FARMS")

for _, item in ipairs({
	{ text = "KITCHEN", flag = "kitchenmode", text2 = "Kitchen Farm", flag2 = "kitchenfarm", text3 = "kitchen" },
	{ text = "LAUNDRY", flag = "laundrymode", text2 = "Laundry Farm", flag2 = "laundryfarm", text3 = "laundry" },
}) do
	Tab8:Divider()
	Tab8:Label(item.text)

	Tab8:Dropdown({
		Text = "Mode",
		Default = "Legit",
		Flag = item.flag,
		Options = { "Legit", "Blatant" },
		Callback = function()
		end
	})

	Tab8:Toggle({
		Text = item.text2,
		Default = false,
		Flag = item.flag2,
		Callback = function(state)
			if state then
				task.spawn(function()
					local children22 = Players.LocalPlayer.PlayerGui:GetChildren()

					for k38, v38 in children22 do
						v38:FindFirstChild("JobState")
						local DisplayName = v38:FindFirstChild("DisplayName")
						local result40 = tostring(DisplayName.Value):lower()
						result40:find(item.text3)
						Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
						local children23 = Players.LocalPlayer.PlayerGui:GetChildren()

						for k39, v39 in children23 do
							v39:FindFirstChild("JobState")
							local DisplayName2 = v39:FindFirstChild("DisplayName")
							local result41 = tostring(DisplayName2.Value):lower()
							result41:find(item.text3)
							local JobState = v39:FindFirstChild("JobState")
							JobState:InvokeServer()
							task.wait(5)
							Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
							local children24 = Players.LocalPlayer.PlayerGui:GetChildren()

							for k40, v40 in children24 do
								v40:FindFirstChild("JobState")
								local DisplayName3 = v40:FindFirstChild("DisplayName")
								local result42 = tostring(DisplayName3.Value):lower()
								result42:find(item.text3)
								local JobState2 = v40:FindFirstChild("JobState")
								JobState2:InvokeServer()
							end

							task.wait(5)
							-- [envlog] the statements above repeat forever (loop)
						end
					end
				end)
			else
				task.spawn(function()
					local children25 = Players.LocalPlayer.PlayerGui:GetChildren()

					for k42, v42 in children25 do
						v42:FindFirstChild("JobState")
						local DisplayName4 = v42:FindFirstChild("DisplayName")
						local result43 = tostring(DisplayName4.Value):lower()
						result43:find(item.text3)
						local JobState3 = v42:FindFirstChild("JobState")
						JobState3:InvokeServer()
					end
				end)
			end
		end
	})
end

local Tab9 = LASIONWindow:Tab("SETTINGS")
Tab9:Label("SERVER")

Tab9:Button({
	Text = "Rejoin",
	Callback = function()
		Players:GetPlayers()
		TeleportService:Teleport(0, Players.LocalPlayer)
	end
})

Tab9:Button({
	Text = "Server Hop",
	Callback = function(state)
		if state then
			local response5 = request({ Url = "https://games.roblox.com/v1/games/0/servers/Public?sortOrder=Desc&limit=100" })
			local data = HttpService:JSONDecode(response5.Body)

			for k48, v48 in data.data do
			end
		else
			local response6 = request({ Url = "https://games.roblox.com/v1/games/0/servers/Public?sortOrder=Desc&limit=100" })
			local data2 = HttpService:JSONDecode(response6.Body)

			for k49, v49 in data2.data do
			end
		end

		Players:GetPlayers()
		TeleportService:Teleport(0, Players.LocalPlayer)
	end
})

Tab9:Divider()
Tab9:Label("CONFIG")
local result48 = LASIONWindow:Profiles()

Tab9:Dropdown({
	Text = "Select Config",
	Default = "default",
	Options = result48,
	Callback = function()
	end
})

Tab9:InputText({
	Text = "Config Name",
	Placeholder = "Config name",
	Callback = function()
	end
})

for _, item in ipairs({
	{ text = "Save New", text2 = "Name required" },
	{ text = "Overwrite", text2 = "Select a config first" },
	{ text = "Load", text2 = "Select a config first" },
	{ text = "Delete", text2 = "Select a config first" },
}) do
	Tab9:Button({
		Text = item.text,
		Callback = function()
			LASIONWindow:Notify({ Text = item.text2, Title = "Config", Duration = 2 })
		end
	})
end

Tab9:Toggle({
	Text = "Auto Load Config",
	Default = false,
	Flag = "autoloadconfig",
	Callback = function()
		-- isfile("Hotdogabitch/auto.lasion") -> false
	end
})

Tab9:Divider()
Tab9:Label("MENU")

Tab9:Toggle({
	Text = "Disable Input While Open",
	Default = true,
	Flag = "disableinput",
	Callback = function(state)
		if state then
			LASIONWindow:SetCaptureInput(state)
		else
			LASIONWindow:SetCaptureInput(false)
		end
	end
})

Tab9:Divider()
Tab9:Label("CHAT")

local Toggle = Tab9:Toggle({
	Text = "Chat Logs",
	Default = true,
	Flag = "chatlogs",
	Callback = function(state)
		if state then
			result15.gui.Enabled = state
		else
			result15.gui.Enabled = false
		end
	end
})

Players.PlayerRemoving:Connect(function(player5)
end)

local function getSM_Veh_Car_Muscle_()
	local Map = workspace:FindFirstChild("Map")
	local Unorganized = Map:FindFirstChild("Unorganized")
	local Meshes = Unorganized:FindFirstChild("Meshes")
	local SM_Veh_Car_Muscle_014 = Meshes:FindFirstChild("SM_Veh_Car_Muscle_01 (4)")
	return SM_Veh_Car_Muscle_014
end

local SM_Veh_Car_Muscle_014 = getSM_Veh_Car_Muscle_()
local objects = game:GetObjects("rbxassetid://6982500227")
SM_Veh_Car_Muscle_014:Destroy()
local ViewmodelCamera = workspace.CurrentCamera:FindFirstChild("ViewmodelCamera")
ViewmodelCamera.Name = "ViewmodelCamera"
ViewmodelCamera.Parent = workspace.CurrentCamera
objects[1]:PivotTo(SM_Veh_Car_Muscle_014.CFrame * CFrame.new(0, 0, 8))
objects[1].Parent = ViewmodelCamera
objects[1].Name = "GTR"
local AChassisTune = objects[1]:FindFirstChild("A-Chassis Tune")
AChassisTune:Destroy()
objects[1]:FindFirstChild("\t")
local MP = objects[1]["\t"]:FindFirstChild("MP")
MP:Destroy()
local SM_Veh_Car_Muscle_0142 = getSM_Veh_Car_Muscle_()
local clone4 = objects[1]:Clone()
clone4:PivotTo(SM_Veh_Car_Muscle_0142.CFrame)
clone4.Parent = ViewmodelCamera
clone4.Name = "GTR"
SM_Veh_Car_Muscle_0142:Destroy()
local SM_Veh_Car_Muscle_0143 = getSM_Veh_Car_Muscle_()
local clone5 = objects[1]:Clone()
clone5:PivotTo(SM_Veh_Car_Muscle_0143.CFrame)
clone5.Parent = ViewmodelCamera
clone5.Name = "GTR"
SM_Veh_Car_Muscle_0143:Destroy()

task.spawn(function()
	-- isfile("Hotdogabitch/auto.lasion") -> false
end)
