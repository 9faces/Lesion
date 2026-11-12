-- Deobfuscated by ccjvwsod on Discord
-- Detected obfuscation: Luraph v15
-- Local names are inferred from use (the original names are not in the bytecode)

pcall(function()
	getgenv().Aimbot.Functions:Exit()
end)

getgenv().Aimbot = {}
local aimbot = getgenv().Aimbot
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local currentCamera = workspace.CurrentCamera
local localPlayer = Players.LocalPlayer
local flag = false
local flag2 = false
local n = 0
local tbl = {}
local team = localPlayer.Team
local character = localPlayer.Character
local flag3 = false
local tween = nil
local tbl2 = {}

local tbl3 = {
	Enabled = false,
	WallCheck = false,
	Sensitivity = 0,
	LockPart = "Head",
	ShowFov = false,
	FovColor = { 255, 255, 255 },
	FovSize = 90,
	AutoLock = false,
	InnocentCheck = false,
	CopMode = false,
	PrisonerMode = false,
}

if getgenv().AimbotSettings then
	local v = pairs
	local aimbotSettings = getgenv().AimbotSettings

	for k, aimbotSetting in v(aimbotSettings) do
		tbl3[k] = aimbotSetting
	end

	getgenv().AimbotSettings = {}
else
	getgenv().AimbotSettings = {}
end

setmetatable(getgenv().AimbotSettings, {
	__index = function(arg, arg2)
		return tbl3[arg2]
	end,
	__newindex = function(arg, arg2, arg3)
		tbl3[arg2] = arg3
	end,
})

local tbl4 = {
	Booking = true,
	Escapee = true,
	["Maximum Security"] = true,
	["Medium Security"] = true,
	["Minimum Security"] = true,
}

local tbl5 = {
	Civilian = true,
	["Department of Corrections"] = true,
	["Sheriff's Office"] = true,
	["State Police"] = true,
	["VCSO-SWAT"] = true,
	WeaponsTester = true,
}

local tbl6 = { 0.45, 0.5, 0.55, 0.42, 0.33, 0.26, 0.21, 0.17, 0.13, 0.1, 0.07 }
local tbl7 = { 0.18, 0.2, 0.22, 0.33, 0.45, 0.58, 0.72, 0.87, 1.03, 1.2, 1.38 }

local tbl8 = {
	Enabled = false,
	AliveCheck = true,
	WallCheck = false,
	Sensitivity = 0,
	TriggerKey = "MouseButton2",
	Toggle = false,
	LockPart = "Head",
	AutoLock = false,
}

local tbl9 = {
	Enabled = true,
	Visible = true,
	Amount = 90,
	Color = "255, 255, 255",
	LockedColor = "255, 70, 70",
	Transparency = 0.5,
	Sides = 60,
	Thickness = 1,
	Filled = false,
}

local function fn(arg)
	local tbl10 = {}

	for k, v in pairs(arg) do
		tbl10[k] = v
	end

	return tbl10
end

aimbot.Settings = fn(tbl8)
aimbot.FovSettings = fn(tbl9)
aimbot.TriggerBot = { Enabled = false, Debounce = false, Connection = nil }
aimbot.FovCircle = Drawing.new("Circle")
aimbot.Locked = nil
local tbl10 = {}

local function fn2(arg)
	if not tbl10[arg] then
		local match, v, v2 = arg:match("(%d+)%s*,%s*(%d+)%s*,%s*(%d+)")
		tbl10[arg] = Color3.fromRGB(match, v, v2)
	end

	return tbl10[arg]
end

local raycastParams = RaycastParams.new()
raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

local function fn3(arg)
	if not tbl3.WallCheck then
		return true
	end
	local character2 = localPlayer.Character
	if not character2 then
		return false
	end
	local filterDescendantsInstances = { character2, currentCamera }
	local parent = arg.Parent
	local v = Players
	local getPlayers = v.GetPlayers

	for _, v2 in getPlayers(v) do
		local character3 = v2 ~= localPlayer and v2.Character

		if character3 then
			character3 = v2.Character ~= parent
		end

		if character3 then
			table.insert(filterDescendantsInstances, v2.Character)
		end
	end

	raycastParams.FilterDescendantsInstances = filterDescendantsInstances
	local v2 = ipairs
	local getDescendants = character2.GetDescendants

	for _, v3 in v2(getDescendants(character2)) do
		if v3:IsA("BasePart") then
			local position = arg.Position
			local position2 = v3.Position
			local hit = workspace:Raycast(v3.Position, position - position2, raycastParams)
			local flag4 = not hit

			if not flag4 then
				flag4 = hit.Instance == arg
			end

			if not flag4 then
				flag4 = hit.Instance:IsDescendantOf(arg.Parent)
			end

			if flag4 then
				return true
			end
		end
	end

	return false
end

local function fn4(arg, arg2)
	local flag4 = not arg

	if not flag4 then
		flag4 = not arg.Team
	end

	if flag4 then
		return false
	end
	local name = arg.Team.Name
	return arg2 == "Prisoner" and tbl4[name] or arg2 == "Cop" and tbl5[name] or false
end

local tbl11 = {
	Head = function(arg)
		local head = arg:FindFirstChild("Head")
		return head and head.Position
	end,
	Torso = function(arg)
		local torso = arg:FindFirstChild("Torso")
		return torso and torso.Position
	end,
	Neck = function(arg)
		local head = arg:FindFirstChild("Head")
		local torso = arg:FindFirstChild("Torso")
		local n2 = head and torso

		if n2 then
			n2 = head.Position + (torso.Position - head.Position) * 0.4
		end

		return n2
	end,
	Pelvis = function(arg)
		local torso = arg:FindFirstChild("Torso")
		local leftLeg = arg:FindFirstChild("Left Leg")
		local n2 = torso and leftLeg

		if n2 then
			n2 = torso.Position + (leftLeg.Position - torso.Position) * 0.3
		end

		return n2
	end,
}

local function fn5(arg, arg2)
	if not arg then
		return nil
	end

	if arg2 == "Random" then
		local n2 = math.random(1, 100)
		arg2 = n2 <= 50 and "Torso" or n2 <= 85 and "Pelvis" or n2 <= 93 and "Neck" or "Head"
	end

	local v = tbl11[arg2]
	return v and v(arg)
end

local function fn6(arg)
	local flag4 = not arg

	if not flag4 then
		flag4 = not arg.Parent
	end

	if flag4 or arg == localPlayer then
		return false
	end
	local iswhitelisted = getgenv().iswhitelisted

	if iswhitelisted then
		iswhitelisted = getgenv().iswhitelisted(arg, "Aimbot")
	end

	if iswhitelisted then
		return false
	end
	local character2 = arg.Character
	local flag5 = not character2

	if not flag5 then
		flag5 = not character2.Parent
	end

	if flag5 then
		return false
	end
	local humanoid = character2:FindFirstChildOfClass("Humanoid")
	local flag6 = not humanoid

	if not flag6 then
		flag6 = aimbot.Settings.AliveCheck

		if flag6 then
			flag6 = humanoid.Health <= 0
		end
	end

	if flag6 then
		return false
	end
	local prisoner = fn4(arg, "Prisoner")
	local cop = fn4(arg, "Cop")

	if flag3 then
		if not cop then
			return false
		end
	elseif not prisoner then
		return false
	end

	if tbl3.InnocentCheck and prisoner then
		local serverVariables = arg:FindFirstChild("ServerVariables")

		if serverVariables then
			serverVariables = serverVariables:FindFirstChild("Innocent")
		end

		if serverVariables and serverVariables.Value then
			return false
		end
	end

	local serverVariables = arg:FindFirstChild("ServerVariables")

	if serverVariables then
		serverVariables = serverVariables:FindFirstChild("Handcuffs")
	end

	if serverVariables then
		serverVariables = serverVariables:FindFirstChild("Cuffed")
	end

	if serverVariables and serverVariables.Value then
		return false
	end
	local v = fn5(character2, tbl3.LockPart or "Head")
	if not v then
		return false
	end

	if tbl3.WallCheck then
		local head = character2:FindFirstChild("Head")

		if not head then
			head = character2:FindFirstChild("Torso")
		end

		if not head or not fn3(head) then
			return false
		end
	end

	return true, v
end

local function fn7()
	local now = tick()
	if now - n < 0.15 then
		return
	end
	n = now
	local character2 = localPlayer.Character

	if character2 then
		character2 = character2:FindFirstChild("HumanoidRootPart")
	end

	local tbl12 = {}
	local v = ipairs
	local v2 = Players
	local getPlayers = v2.GetPlayers

	for _, v3 in v(getPlayers(v2)) do
		if v3 ~= localPlayer and v3.Parent then
			local iswhitelisted = getgenv().iswhitelisted

			if iswhitelisted then
				iswhitelisted = getgenv().iswhitelisted(v3, "Aimbot")
			end

			if not iswhitelisted then
				local v4, v5 = fn6(v3)

				if v4 then
					local tbl13 = { bonePosition = v5, character = v3.Character }
					local magnitude

					if character2 then
						magnitude = (character2.Position - v5).Magnitude
					else
						magnitude = character2
					end

					magnitude = magnitude or math.huge
					tbl13.distance = magnitude
					tbl12[v3] = tbl13
				end
			end
		end
	end

	tbl = tbl12
end

local function fn8()
	local character2 = localPlayer.Character
	local flag4 = not character2

	if not flag4 then
		flag4 = not character2:FindFirstChild("HumanoidRootPart")
	end

	if flag4 then
		return
	end
	fn7()

	if tbl3.AutoLock then
		local huge = math.huge
		local v = nil

		for k, v2 in pairs(tbl) do
			if v2.distance < huge then
				huge = v2.distance
				v = k
			end
		end

		return v
	end

	local mouseLocation = UserInputService:GetMouseLocation()
	local fovSize = tbl3.FovSize or 90
	local v = nil

	for k, v2 in pairs(tbl) do
		local v3, v4 = currentCamera:WorldToViewportPoint(v2.bonePosition)

		if v4 then
			local n2 = v3.X - mouseLocation.X
			local n3 = v3.Y - mouseLocation.Y
			local v5 = math.sqrt(n2 * n2 + n3 * n3)

			if v5 < fovSize then
				fovSize = v5
				v = k
			end
		end
	end

	return v
end

local mouse = localPlayer:GetMouse()
local tbl12 = {}

local function fn9()
	if aimbot.TriggerBot.Connection then
		aimbot.TriggerBot.Connection:Disconnect()
		aimbot.TriggerBot.Connection = nil
	end

	if not aimbot.TriggerBot.Enabled then
		return
	end

	aimbot.TriggerBot.Connection = RunService.Heartbeat:Connect(function()
		if aimbot.TriggerBot.Debounce then
			return
		end
		local target = mouse.Target
		local flag4 = not target

		if not flag4 then
			flag4 = not target.Parent
		end

		if flag4 then
			return
		end
		local playerFromCharacter = Players:GetPlayerFromCharacter(target.Parent)
		local character2 = playerFromCharacter and playerFromCharacter.Character
		local flag5 = not playerFromCharacter or not fn6(playerFromCharacter)

		if not flag5 then
			if character2 then
				flag5 = character2:FindFirstChildOfClass("ForceField")
			else
				flag5 = character2
			end
		end

		if flag5 then
			return
		end
		aimbot.TriggerBot.Debounce = true

		task.spawn(function()
			mouse1press()

			while true do
				RunService.Heartbeat:Wait()
				local target2 = mouse.Target
				local parent = target2 and target2.Parent

				if parent then
					parent = Players:GetPlayerFromCharacter(target2.Parent)
				end

				local flag6 = not parent or parent ~= playerFromCharacter

				if not flag6 then
					flag6 = not aimbot.TriggerBot.Enabled
				end

				if not flag6 then
					continue
				end
				break
			end

			mouse1release()
			aimbot.TriggerBot.Debounce = false
		end)
	end)
end

tbl2.typing1 = UserInputService.TextBoxFocused:Connect(function()
	flag = true
end)

tbl2.typing2 = UserInputService.TextBoxFocusReleased:Connect(function()
	flag = false
end)

local function fn10()
	flag3 = fn4(localPlayer, "Prisoner")
	local fovColor = tbl3.FovColor or { 255, 255, 255 }
	local flag4 = typeof(fovColor) == "Color3" and fovColor
	local color

	if flag4 then
		color = flag4
	else
		color = Color3.fromRGB(fovColor[1], fovColor[2], fovColor[3])
	end

	local v = nil

	tbl2.render = RunService.RenderStepped:Connect(function()
		local enabled = tbl3.Enabled
		if not enabled then
			aimbot.FovCircle.Visible = false
			return
		end
		local fovSettings = aimbot.FovSettings
		local fovCircle = aimbot.FovCircle
		local fovColor2 = tbl3.FovColor or { 255, 255, 255 }

		if typeof(fovColor2) == "Color3" then
			color = fovColor2
		else
			color = Color3.fromRGB(fovColor2[1], fovColor2[2], fovColor2[3])
		end

		if not v then
			v = fn2(fovSettings.LockedColor)
		end

		local showFov = tbl3.ShowFov
		local enabled2 = fovSettings.Enabled and enabled
		fovCircle.Visible = enabled2 and showFov

		if enabled2 then
			local fovSize = tbl3.FovSize or 90

			if fovCircle.Radius ~= fovSize then
				fovCircle.Radius = fovSize
			end

			if fovCircle.Thickness ~= fovSettings.Thickness then
				fovCircle.Thickness = fovSettings.Thickness
			end

			if fovCircle.Filled ~= fovSettings.Filled then
				fovCircle.Filled = fovSettings.Filled
			end

			if fovCircle.NumSides ~= fovSettings.Sides then
				fovCircle.NumSides = fovSettings.Sides
			end

			if fovCircle.Transparency ~= fovSettings.Transparency then
				fovCircle.Transparency = fovSettings.Transparency
			end

			fovCircle.Position = UserInputService:GetMouseLocation()
		end

		if enabled then
			local flag5 = localPlayer.Team ~= team

			if not flag5 then
				flag5 = localPlayer.Character ~= character
			end

			if flag5 then
				team = localPlayer.Team
				character = localPlayer.Character
				flag3 = fn4(localPlayer, "Prisoner")
				aimbot.Locked = nil
				tbl = {}
				fovCircle.Color = color
			end

			local locked = aimbot.Locked

			if locked then
				locked = not tbl[aimbot.Locked]

				if not locked then
					locked = not fn6(aimbot.Locked)
				end
			end

			if locked then
				aimbot.Locked = nil
			end

			if tbl3.AutoLock or flag2 then
				if not aimbot.Locked then
					aimbot.Locked = fn8()
				end
			else
				aimbot.Locked = nil
			end

			local locked2 = aimbot.Locked

			if locked2 then
				locked2 = tbl[aimbot.Locked]
			end

			if locked2 then
				local v2 = tbl[aimbot.Locked]
				local lockPart = tbl3.LockPart or "Head"
				local v3 = fn5(v2.character, lockPart)

				if v3 then
					local character2 = localPlayer.Character

					if character2 then
						character2 = character2:FindFirstChild("Head")
					end

					if character2 then
						character2 = (character2.CFrame.Position - currentCamera.CFrame.Position).Magnitude > 2
					end

					local sensitivity = tbl3.Sensitivity or 0
					local n2 = math.floor(sensitivity + 0.5) + 1

					if character2 then
						local n3 = tbl6[n2] or 1
						local v4 = currentCamera:WorldToViewportPoint(v3)
						local mouseLocation = UserInputService:GetMouseLocation()
						local n4 = (v4.X - mouseLocation.X) * n3
						local n5 = (v4.Y - mouseLocation.Y) * n3
						local flag6 = math.abs(n4) > 1

						if not flag6 then
							flag6 = math.abs(n5) > 1
						end

						if flag6 then
							mousemoverel(n4, n5)
						end
					else
						local n3 = tbl7[n2] or 0

						if n3 > 0 then
							if tween then
								tween:Cancel()
							end

							if not tbl12[n3] then
								tbl12[n3] = TweenInfo.new(n3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
							end

							tween = TweenService:Create(currentCamera, tbl12[n3], { CFrame = CFrame.new(currentCamera.CFrame.Position, v3) })
							tween:Play()
						else
							currentCamera.CFrame = CFrame.new(currentCamera.CFrame.Position, v3)
						end
					end
				else
					aimbot.Locked = nil
					locked2 = false
				end
			end

			fovCircle.Color = locked2 and v or color
		else
			fovCircle.Color = color
		end
	end)

	local function fn11(arg)
		if tbl3.AutoLock then
			return
		end

		if aimbot.Settings.Toggle then
			if arg then
				flag2 = not flag2
			end
		else
			flag2 = arg
		end

		if not flag2 then
			aimbot.Locked = nil
			aimbot.FovCircle.Color = color
		end
	end

	local function fn12(arg)
		local triggerKey = aimbot.Settings.TriggerKey
		local flag5 = not flag

		if flag5 then
			flag5 = arg.KeyCode

			if flag5 then
				flag5 = arg.KeyCode.Name == triggerKey
			end

			if not flag5 then
				flag5 = arg.UserInputType

				if flag5 then
					flag5 = arg.UserInputType.Name == triggerKey
				end
			end
		end

		return flag5
	end

	tbl2.began = UserInputService.InputBegan:Connect(function(input)
		if fn12(input) then
			fn11(true)
		end
	end)

	tbl2.ended = UserInputService.InputEnded:Connect(function(input)
		if fn12(input) then
			fn11(false)
		end
	end)

	fn9()
end

aimbot.Functions = {}

local function exit()
	for _, v in pairs(tbl2) do
		pcall(function()
			v:Disconnect()
		end)
	end

	if aimbot.TriggerBot.Connection then
		pcall(function()
			aimbot.TriggerBot.Connection:Disconnect()
		end)
	end

	pcall(function()
		aimbot.FovCircle:Remove()
	end)

	getgenv().Aimbot = nil
end

aimbot.Functions.Exit = exit

local function restart(arg)
	arg:Exit()
	fn10()
end

aimbot.Functions.Restart = restart

local function resetSettings()
	aimbot.Settings = fn(tbl8)
	aimbot.FovSettings = fn(tbl9)
	local triggerBot = aimbot.TriggerBot
	triggerBot.Enabled = false
	triggerBot.Debounce = false
end

aimbot.Functions.ResetSettings = resetSettings

local function toggleTriggerBot(arg, enabled)
	local triggerBot = aimbot.TriggerBot
	enabled = enabled ~= nil and enabled

	if not enabled then
		enabled = not triggerBot.Enabled
	end

	triggerBot.Enabled = enabled
	fn9()
	return triggerBot.Enabled
end

aimbot.Functions.ToggleTriggerBot = toggleTriggerBot

local function toggleAutoLock(arg, autoLock)
	local settings = aimbot.Settings
	autoLock = autoLock ~= nil and autoLock

	if not autoLock then
		autoLock = not settings.AutoLock
	end

	settings.AutoLock = autoLock

	if not settings.AutoLock then
		local v = aimbot
		flag2 = false
		v.Locked = nil
	end

	return settings.AutoLock
end

aimbot.Functions.ToggleAutoLock = toggleAutoLock
fn10()
