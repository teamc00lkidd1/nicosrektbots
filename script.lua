local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/lolpippiou/nicosrektbots/main/ui-engine.lua"))()

local name = "nico's rektbots"

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
local plrGui = game.CoreGui
local screenGui = Instance.new("ScreenGui", plrGui)
local txtButton = Instance.new("TextButton")
txtButton.BackgroundTransparency = 1
txtButton.Size = UDim2.new(0, 0, 0, 0)
txtButton.Text = " "
txtButton.Modal = true
txtButton.Parent = screenGui