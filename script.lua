local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/lolpippiou/nicosrektbots/main/ui-engine.lua"))()

local name = "nibba what this game"
if game.PlaceId == 10118559731 then
    name = "nico's rektbots"
elseif game.PlaceId == 10332948375 then
    name = "nico's rekting"
end
--local name = "nico's rektbots (beta)"

if identifyexecutor then
    name = name.." - "..string.lower(identifyexecutor())
end

local Window = library:AddWindow(name, {
    min_size = Vector2.new(500, 400),
    toggle_key = Enum.KeyCode.RightShift,
    can_resize = true
})
local Main = Window:AddTab("main")
_G.safezoneesp = false
Main:AddSwitch("safezone esp", function(safezoneesp)
    _G.safezoneesp = safezoneesp
    while _G.safezoneesp do
        for i, v in pairs(workspace:GetDescendants()) do
            if v.Name == "zone" and v:IsA("BasePart") and v:FindFirstChild("safeESP by popbob#1483") == nil then
                local a = Instance.new("BoxHandleAdornment", v)
                a.Name = "safeESP by popbob#1483"
                a.Size = v.Size
                a.Adornee = v
                a.AlwaysOnTop = true
                a.ZIndex = 10
                a.Transparency = 0.3
                a.Color = BrickColor.new("Lime green")
            end
        end
        wait(1)
    end
    if _G.safezoneesp == false then
        for i, v in pairs(workspace:GetDescendants()) do
            if v.Name == "safeESP by popbob#1483" then
                v:Destroy()
            end
        end
    end
end)
if _G.gamering then _G.gamering:Disconnect() end
if game:GetService("CoreGui"):FindFirstChild("modalGui") ~= nil then game:GetService("CoreGui"):FindFirstChild("modalGui"):Destroy() end
local screenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
screenGui.Name = "modalGui"
local txtButton = Instance.new("TextButton")
txtButton.BackgroundTransparency = 1
txtButton.Size = UDim2.new(0, 0, 0, 0)
txtButton.Text = ""
txtButton.Modal = true
txtButton.Parent = screenGui
local UIS = game:GetService("UserInputService")
_G.gamering = UIS.InputBegan:connect(function(input)
    if input.KeyCode == Enum.KeyCode.RightShift then
        txtButton.Modal = not txtButton.Modal
    end
end)
_G.nextbotsesp = false
Main:AddSwitch("nextbot esp", function(nextbotsesp)
    _G.nextbotsesp = nextbotsesp
    while _G.nextbotsesp do
        for i, v in pairs(workspace.bots:GetChildren()) do
            if v:FindFirstChild("HumanoidRootPart") ~= nil and v:FindFirstChild("HumanoidRootPart"):FindFirstChild("botESP by popbob#1483") == nil then
                local bill = v.HumanoidRootPart.icon:Clone()
                bill.Name = "botESP by popbob#1483"
                bill.AlwaysOnTop = true
                bill:ClearAllChildren()
                local text = Instance.new("TextLabel", bill)
                text.BorderSizePixel = 0
                text.BackgroundTransparency = 0.75
                text.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
                text.Size = UDim2.new(1, 0, 1, 0)
                text.Font = Enum.Font.SourceSansSemibold
                text.TextSize = 20
                text.TextColor3 = Color3.fromRGB(255, 255, 255)
                text.TextStrokeTransparency = 0
                text.TextYAlignment = Enum.TextYAlignment.Top
                text.Text = string.lower(v.Name)
                text.ZIndex = 10
                bill.Parent = v.HumanoidRootPart
            end
        end
        wait(1)
    end
    if _G.nextbotsesp == false then
        for i, v in pairs(workspace.bots:GetChildren()) do
            if v:FindFirstChild("HumanoidRootPart") ~= nil and v:FindFirstChild("HumanoidRootPart"):FindFirstChild("botESP by popbob#1483") ~= nil then
                v:FindFirstChild("HumanoidRootPart"):FindFirstChild("botESP by popbob#1483"):Destroy()
            end
        end
    end
end)
_G.powerboxesp = false
Main:AddSwitch("powerbox esp", function(powerboxesp)
    _G.powerboxesp = powerboxesp
    while _G.powerboxesp do
        for i, v in pairs(workspace.PowerBox:GetChildren()) do
            print()
            if v:FindFirstChildOfClass("ProximityPrompt") ~= nil and v:FindFirstChildOfClass("ProximityPrompt").Enabled == true and v:FindFirstChild("powerESP by popbob#1483") == nil then
                local a = Instance.new("BoxHandleAdornment", v)
                a.Name = "powerESP by popbob#1483"
                a.Size = v.Size
                a.Adornee = v
                a.AlwaysOnTop = true
                a.ZIndex = 10
                a.Transparency = 0.3
                a.Color = BrickColor.new("Dark orange")
            elseif (v:FindFirstChildOfClass("ProximityPrompt").Enabled == false and v:FindFirstChild("powerESP by popbob#1483") ~= nil) or (v:FindFirstChildOfClass("ProximityPrompt") == nil and v:FindFirstChild("powerESP by popbob#1483") ~= nil) then
                v:FindFirstChild("powerESP by popbob#1483"):Destroy()
            end
        end
        wait(1)
    end
    if _G.powerboxesp == false then
        for i, v in pairs(workspace.PowerBox:GetChildren()) do
            if v:FindFirstChild("powerESP by popbob#1483") ~= nil then
                v:FindFirstChild("powerESP by popbob#1483"):Destroy()
            end
        end
    end
end)
_G.fullbright = false
Main:AddSwitch("fullbright", function(fullbright)
    _G.fullbright = fullbright
    if _G.fullbright then
        _G.Brightness = game:GetService("Lighting").Brightness
		_G.ClockTime = game:GetService("Lighting").ClockTime
		_G.FogEnd = game:GetService("Lighting").FogEnd
		_G.GlobalShadows = game:GetService("Lighting").GlobalShadows
		_G.OutdoorAmbient = game:GetService("Lighting").OutdoorAmbient
    end
    while _G.fullbright do
        game:GetService("Lighting").Brightness = 2
		game:GetService("Lighting").ClockTime = 14
		game:GetService("Lighting").FogEnd = 100000
		game:GetService("Lighting").GlobalShadows = false
		game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(128, 128, 128)
        game:GetService("RunService").RenderStepped:Wait()
    end
    if _G.fullbright == false then
        game:GetService("Lighting").Brightness = _G.Brightness
		game:GetService("Lighting").ClockTime = _G.ClockTime
		game:GetService("Lighting").FogEnd = _G.FogEnd
		game:GetService("Lighting").GlobalShadows = _G.GlobalShadows
		game:GetService("Lighting").OutdoorAmbient = _G.OutdoorAmbient
    end
end)
_G.alwaysshownextbots = false
Main:AddSwitch("always show nextbots", function(alwaysshownextbots)
    _G.alwaysshownextbots = alwaysshownextbots
    while _G.alwaysshownextbots do
        for i, v in pairs(workspace.bots:GetChildren()) do
            if v:FindFirstChild("HumanoidRootPart") ~= nil and v:FindFirstChild("HumanoidRootPart"):FindFirstChild("icon") ~= nil then
                v:FindFirstChild("HumanoidRootPart"):FindFirstChild("icon").AlwaysOnTop = true
            end
        end
        wait(1)
    end
    if _G.alwaysshownextbots == false then
        for i, v in pairs(workspace.bots:GetChildren()) do
            if v:FindFirstChild("HumanoidRootPart") ~= nil and v:FindFirstChild("HumanoidRootPart"):FindFirstChild("icon") ~= nil then
                v:FindFirstChild("HumanoidRootPart"):FindFirstChild("icon").AlwaysOnTop = false
            end
        end
    end
end)
Main:AddButton("toggle tunnel2 gates", function()
    local oldcframe = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.map.tunnel2.unit["garage_button"].CFrame
    wait(0.25)
    fireproximityprompt(workspace.map.tunnel2.unit["garage_button"].ProximityPrompt)
    wait(0.25)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe
end)
Main:AddButton("toggle parking tunnel gates", function()
    local oldcframe = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.map["parking_lot_all"]["parking_tunnel"].unit.garage_button.CFrame
    wait(0.25)
    fireproximityprompt(workspace.map["parking_lot_all"]["parking_tunnel"].unit.garage_button.ProximityPrompt)
    wait(0.25)
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe
end)
local killedby = Main:AddDropdown("get killed by...", function(name)
    if workspace.bots:FindFirstChild(name) ~= nil then
        firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, workspace.bots:FindFirstChild(name).hitbox, 0)
        firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, workspace.bots:FindFirstChild(name).hitbox, 1)
    end
end)
local killedbylist = {}
_G.autofarm = false
Main:AddSwitch("autofarm", function(autofarm)
    _G.autofarm = autofarm
    if _G.autofarm then
        _G.originalcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-245, 50, 115))
    end
    while _G.autofarm do
        game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(-245, 50, 63))
        game.Players.LocalPlayer.Character.Humanoid.MoveToFinished:Wait()
        game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(-320, 50, 63))
        game.Players.LocalPlayer.Character.Humanoid.MoveToFinished:Wait()
        game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(-320, 50, 115))
        game.Players.LocalPlayer.Character.Humanoid.MoveToFinished:Wait()
        game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(-245, 50, 115))
        game.Players.LocalPlayer.Character.Humanoid.MoveToFinished:Wait()
        if _G.autofarm == false then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.originalcframe end
    end
end)
_G.fakeadmin = false
Main:AddSwitch("fake admin (enable before blackout)", function(fakeadmin)
    _G.fakeadmin = fakeadmin
    while _G.fakeadmin do
        if game:GetService("Players").LocalPlayer.PlayerGui.event.Header.Text == "blackout" then
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/blackout", "All")
            _G.fakeadmin = false
            repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui.event.Header.Text == ""
            _G.fakeadmin = true
        end
        wait()
    end
end)
local GC = getconnections or get_signal_cons
if GC then
    for i,v in pairs(GC(game:GetService("Players").LocalPlayer.Idled)) do
        if v["Disable"] then
            v["Disable"](v)
        elseif v["Disconnect"] then
            v["Disconnect"](v)
        end
    end
else
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        local VirtualUser = game:GetService("VirtualUser")
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
end
while wait(1) do
    for i, bot in pairs(workspace.bots:GetChildren()) do
        if killedbylist[bot.Name] == nil and bot:FindFirstChild("hitbox") ~= nil and bot:FindFirstChild("hitbox"):FindFirstChild("TouchInterest") ~= nil then
            killedbylist[bot.Name] = killedby:Add(bot.Name)
        end
    end
end