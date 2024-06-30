--[[
██████╗  █████╗ ██╗   ██╗███████╗███╗   ██╗    ██████╗ ██╗  ██╗
██╔══██╗██╔══██╗██║   ██║██╔════╝████╗  ██║    ██╔══██╗██║  ██║
██████╔╝███████║██║   ██║█████╗  ██╔██╗ ██║    ██████╔╝███████║
██╔══██╗██╔══██║╚██╗ ██╔╝██╔══╝  ██║╚██╗██║    ██╔══██╗╚════██║
██║  ██║██║  ██║ ╚████╔╝ ███████╗██║ ╚████║    ██████╔╝     ██║
╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝  ╚══════╝╚═╝  ╚═══╝    ╚═════╝      ╚═╝
Author: Near (or nea.r)
Language: Lua
Category: Games (Skywars)

*If you do use my code, give credits to me!*
]]

repeat task.wait() until game:IsLoaded()
local UIS = game:GetService("UserInputService")
local HttpService = game:service('HttpService')
local Lighting = game:GetService("Lighting")
local PCplaying
local loop = true
function RunCode(func)
    func()
end
----Buttons

    local ScreenGui2 = Instance.new("ScreenGui") 
    local DownButton = Instance.new("TextButton")
    local UICorner = Instance.new("UICorner")
    local ImageLabel = Instance.new("ImageLabel")
    local UICorner_2 = Instance.new("UICorner")
    local FlyButton = Instance.new("TextButton")
    local UICorner_3 = Instance.new("UICorner")
    local InfFlyButton = Instance.new("TextButton")
    local UICorner_4 = Instance.new("UICorner")
    local LongjumpButton = Instance.new("TextButton")
    local UICorner_5 = Instance.new("UICorner")
    local UpButton = Instance.new("TextButton")
    local UICorner_6 = Instance.new("UICorner")
    local ImageLabel_2 = Instance.new("ImageLabel")
    local UICorner_7 = Instance.new("UICorner")

    ScreenGui2.Name = "ScreenGui2"
    ScreenGui2.Parent = game:WaitForChild("CoreGui")
    ScreenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    DownButton.Name = "DownButton"
    DownButton.Parent = ScreenGui2
    DownButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    DownButton.BackgroundTransparency = 0.400
    DownButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    DownButton.BorderSizePixel = 0
    DownButton.Position = UDim2.new(0.155999988, 0, 0.277943134, 0)
    DownButton.Size = UDim2.new(0, 50, 0, 49)
    DownButton.Font = Enum.Font.GothamBold
    DownButton.Text = ""
    DownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    DownButton.TextSize = 18.000
    DownButton.TextWrapped = true
    DownButton.Visible = false

    UICorner.CornerRadius = UDim.new(0, 50)
    UICorner.Parent = DownButton

    ImageLabel.Parent = DownButton
    ImageLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageLabel.BorderSizePixel = 0
    ImageLabel.Position = UDim2.new(0, 0, -3.24249268e-05, 0)
    ImageLabel.Size = UDim2.new(1, 0, 1.02546406, 0)
    ImageLabel.Image = "rbxassetid://14675812877"

    UICorner_2.CornerRadius = UDim.new(0, 100)
    UICorner_2.Parent = ImageLabel

    FlyButton.Name = "FlyButton"
    FlyButton.Parent = ScreenGui2
    FlyButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    FlyButton.BackgroundTransparency = 0.400
    FlyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    FlyButton.BorderSizePixel = 0
    FlyButton.Position = UDim2.new(0.0232432075, 0, 0.417482257, 0)
    FlyButton.Size = UDim2.new(0, 50, 0, 49)
    FlyButton.Font = Enum.Font.GothamBold
    FlyButton.Text = "Fly"
    FlyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    FlyButton.TextSize = 18.000
    FlyButton.TextWrapped = true
    FlyButton.Visible = false

    UICorner_3.CornerRadius = UDim.new(0, 50)
    UICorner_3.Parent = FlyButton

    InfFlyButton.Name = "InfFlyButton"
    InfFlyButton.Parent = ScreenGui2
    InfFlyButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    InfFlyButton.BackgroundTransparency = 0.400
    InfFlyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    InfFlyButton.BorderSizePixel = 0
    InfFlyButton.Position = UDim2.new(0.111921936, 0, 0.417482257, 0)
    InfFlyButton.Size = UDim2.new(0, 50, 0, 49)
    InfFlyButton.Font = Enum.Font.GothamBold
    InfFlyButton.Text = "Inf Fly"
    InfFlyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    InfFlyButton.TextSize = 16.000
    InfFlyButton.TextWrapped = true
    InfFlyButton.Visible = false

    UICorner_4.CornerRadius = UDim.new(0, 50)
    UICorner_4.Parent = InfFlyButton

    UpButton.Name = "UpButton"
    UpButton.Parent = ScreenGui2
    UpButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UpButton.BackgroundTransparency = 0.400
    UpButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UpButton.BorderSizePixel = 0
    UpButton.Position = UDim2.new(0.067507498, 0, 0.277664095, 0)
    UpButton.Size = UDim2.new(0, 50, 0, 49)
    UpButton.Font = Enum.Font.GothamBold
    UpButton.Text = ""
    UpButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    UpButton.TextSize = 18.000
    UpButton.TextWrapped = true
    UpButton.Visible = false

    UICorner_6.CornerRadius = UDim.new(0, 50)
    UICorner_6.Parent = UpButton

    ImageLabel_2.Parent = UpButton
    ImageLabel_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    ImageLabel_2.BackgroundTransparency = 1.000
    ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageLabel_2.BorderSizePixel = 0
    ImageLabel_2.Size = UDim2.new(1, 0, 1, 0)
    ImageLabel_2.Image = "rbxassetid://14675825062"

    UICorner_7.CornerRadius = UDim.new(0, 100)
    UICorner_7.Parent = ImageLabel_2
 
    spawn(function ()
        repeat
            task.wait()
            if not FlyButton.Visible and not InfFlyButton.Visible then
                UpButton.Visible = false
                DownButton.Visible = false
            else
                UpButton.Visible = true
                DownButton.Visible = true
            end
        until not loop
    end)
if UIS.KeyboardEnabled and UIS.MouseEnabled and not UIS.TouchEnabled then
    PCplaying = true
else
    PCplaying = false
end
if UIS.KeyboardEnabled and UIS.MouseEnabled and UIS.TouchEnabled then
    EmulatorEnabled = true
else
    EmulatorEnabled = false
end

local TargetHud = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TargetName = Instance.new("TextLabel")
local HealthValue = Instance.new("TextLabel")
local TargetImage = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local SliderMain = Instance.new("Frame")
local SliderInner = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local UICorner_4 = Instance.new("UICorner")
local UIGradient_2 = Instance.new("UIGradient")

if PCplaying then
    TargetHud.Name = "Target Hud"
    TargetHud.Parent = ScreenGui2
    TargetHud.BackgroundColor3 = Color3.fromRGB(102, 102, 102)
    TargetHud.BackgroundTransparency = 0.300
    TargetHud.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TargetHud.BorderSizePixel = 0
    TargetHud.Position = UDim2.new(0.425, 0, 0.65, 0)
    TargetHud.Size = UDim2.new(0, 289, 0, 104)
    TargetHud.Visible = false

    UICorner.CornerRadius = UDim.new(0, 20)
    UICorner.Parent = TargetHud

    TargetName.Name = "TargetName"
    TargetName.Parent = TargetHud
    TargetName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TargetName.BackgroundTransparency = 1.000
    TargetName.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TargetName.BorderSizePixel = 0
    TargetName.Position = UDim2.new(0.383539855, 0, 0.12922962, 0)
    TargetName.Size = UDim2.new(0.550000072, 0, 0.346518725, 0)
    TargetName.Font = Enum.Font.GothamMedium
    TargetName.Text = "testing"
    TargetName.TextColor3 = Color3.fromRGB(255, 255, 255)
    TargetName.TextScaled = true
    TargetName.TextSize = 15.000
    TargetName.TextWrapped = true
    TargetName.TextXAlignment = Enum.TextXAlignment.Left

    HealthValue.Name = "HealthValue"
    HealthValue.Parent = TargetHud
    HealthValue.BackgroundColor3 = Color3.fromRGB(115, 47, 218)
    HealthValue.BackgroundTransparency = 1.000
    HealthValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
    HealthValue.BorderSizePixel = 0
    HealthValue.Position = UDim2.new(0.386226654, 0, 0.475749671, 0)
    HealthValue.Size = UDim2.new(0, 68, 0, 23)
    HealthValue.Font = Enum.Font.GothamMedium
    HealthValue.Text = "100 HP"
    HealthValue.TextColor3 = Color3.fromRGB(255, 255, 255)
    HealthValue.TextSize = 18.000
    HealthValue.TextWrapped = true
    HealthValue.TextXAlignment = Enum.TextXAlignment.Left

    TargetImage.Name = "TargetImage"
    TargetImage.Parent = TargetHud
    TargetImage.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
    TargetImage.BackgroundTransparency = 0.500
    TargetImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TargetImage.BorderSizePixel = 0
    TargetImage.Position = UDim2.new(0.0358460099, 0, 0.0596155003, 0)
    TargetImage.Size = UDim2.new(0, 90, 0, 90)
    TargetImage.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
    TargetImage.ImageTransparency = 1.000

    UICorner_2.CornerRadius = UDim.new(0, 20)
    UICorner_2.Parent = TargetImage

    SliderMain.Name = "SliderMain"
    SliderMain.Parent = TargetHud
    SliderMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SliderMain.BackgroundTransparency = 0.800
    SliderMain.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SliderMain.BorderSizePixel = 0
    SliderMain.Position = UDim2.new(0.384000003, 0, 0.699999988, 0)
    SliderMain.Size = UDim2.new(0.549539864, 0, 0.150000006, 0)

    SliderInner.Name = "SliderInner"
    SliderInner.Parent = SliderMain
    SliderInner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SliderInner.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SliderInner.BorderSizePixel = 0
    SliderInner.Position = UDim2.new(-5.19923219e-07, 0, 0, 0)
    SliderInner.Size = UDim2.new(0.821926296, 0, 0.99999994, 0)

    UICorner_3.Parent = SliderInner

    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(240, 158, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(179, 73, 255))}
    UIGradient.Parent = SliderInner

    UICorner_4.Parent = SliderMain

    UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(240, 158, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(179, 73, 255))}
    UIGradient_2.Parent = TargetHud
else
    TargetHud.Name = "Target Hud"
    TargetHud.Parent = ScreenGui2
    TargetHud.BackgroundColor3 = Color3.fromRGB(102, 102, 102)
    TargetHud.BackgroundTransparency = 0.300
    TargetHud.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TargetHud.BorderSizePixel = 0
    TargetHud.Position = UDim2.new(0.35279277, 0, 0.687198877, 0)
    TargetHud.Size = UDim2.new(0, 200, 0, 72)
    TargetHud.Visible = false

    UICorner.CornerRadius = UDim.new(0, 20)
    UICorner.Parent = TargetHud

    TargetName.Name = "TargetName"
    TargetName.Parent = TargetHud
    TargetName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TargetName.BackgroundTransparency = 1.000
    TargetName.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TargetName.BorderSizePixel = 0
    TargetName.Position = UDim2.new(0.383539855, 0, 0.12922962, 0)
    TargetName.Size = UDim2.new(0.550000072, 0, 0.346518725, 0)
    TargetName.Font = Enum.Font.GothamMedium
    TargetName.Text = "Testing"
    TargetName.TextColor3 = Color3.fromRGB(255, 0, 8)
    TargetName.TextScaled = true
    TargetName.TextSize = 15.000
    TargetName.TextWrapped = true
    TargetName.TextXAlignment = Enum.TextXAlignment.Left

    HealthValue.Name = "HealthValue"
    HealthValue.Parent = TargetHud
    HealthValue.BackgroundColor3 = Color3.fromRGB(115, 47, 218)
    HealthValue.BackgroundTransparency = 1.000
    HealthValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
    HealthValue.BorderSizePixel = 0
    HealthValue.Position = UDim2.new(0.386226684, 0, 0.475749552, 0)
    HealthValue.Size = UDim2.new(0, 62, 0, 12)
    HealthValue.Font = Enum.Font.GothamMedium
    HealthValue.Text = "15 HP"
    HealthValue.TextColor3 = Color3.fromRGB(255, 255, 255)
    HealthValue.TextSize = 17.000
    HealthValue.TextWrapped = true
    HealthValue.TextXAlignment = Enum.TextXAlignment.Left

    TargetImage.Name = "TargetImage"
    TargetImage.Parent = TargetHud
    TargetImage.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
    TargetImage.BackgroundTransparency = 0.500
    TargetImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TargetImage.BorderSizePixel = 0
    TargetImage.Position = UDim2.new(0.0500000007, 0, 0.0799999982, 0)
    TargetImage.Size = UDim2.new(0, 60, 0, 60)
    TargetImage.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
    TargetImage.ImageTransparency = 1.000

    UICorner_2.CornerRadius = UDim.new(0, 20)
    UICorner_2.Parent = TargetImage

    SliderMain.Name = "SliderMain"
    SliderMain.Parent = TargetHud
    SliderMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SliderMain.BackgroundTransparency = 0.800
    SliderMain.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SliderMain.BorderSizePixel = 0
    SliderMain.Position = UDim2.new(0.384000003, 0, 0.699999988, 0)
    SliderMain.Size = UDim2.new(0.549539864, 0, 0.150000006, 0)

    SliderInner.Name = "SliderInner"
    SliderInner.Parent = SliderMain
    SliderInner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SliderInner.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SliderInner.BorderSizePixel = 0
    SliderInner.Position = UDim2.new(-5.19923219e-07, 0, 0, 0)
    SliderInner.Size = UDim2.new(0.821926296, 0, 0.99999994, 0)

    UICorner_3.Parent = SliderInner

    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(240, 158, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(179, 73, 255))}
    UIGradient.Parent = SliderInner

    UICorner_4.Parent = SliderMain

    UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(240, 158, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(179, 73, 255))}
    UIGradient_2.Parent = TargetHud
end
--Locals
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = game:GetService("Workspace").CurrentCamera
local RunService = game:GetService("RunService")
local skywars = {}
function SetCamera(Camera)
    workspace.CurrentCamera.CameraSubject = Camera
 end
 function IsAlive(plr)
    plr = plr or LocalPlayer
        if not plr.Character then return false end        
        if not plr.Character:FindFirstChild("Head") then return false end
        if not plr.Character:FindFirstChild("Humanoid") then return false end
        if plr.Character:FindFirstChild("Humanoid").Health < 0.11 then return false end
    return true
 end
function ClosetPlayerCheck(plr,distance)
    if (plr.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).magnitude < distance then
        return true
    else
        return false
    end
end
local function Runcode(func)
	func()
end
-------- 
local controllers = {}
local controllerids = {}
local eventnames = {}
local Flamework = require(game:GetService("ReplicatedStorage")["rbxts_include"]["node_modules"]["@flamework"].core.out).Flamework
Runcode(function() -------- Taken from this: https://github.com/7GrandDadPGN/VapeV4ForRoblox/blob/main/CustomModules/8542275097.lua (will rewrite when I can view module scripts with dex)
    for i,v in pairs(debug.getupvalue(Flamework.Testing.patchDependency, 1).idToObj) do
        controllers[tostring(v)] = v
        controllerids[tostring(v)] = i
        local controllerevents = {}
        for i2,v2 in pairs(v) do
            if type(v2) == "function" then
                local eventsfound = {}
                for i3,v3 in pairs(debug.getconstants(v2)) do
                    if tostring(v3):find("-") == 9 then
                        table.insert(eventsfound, tostring(v3))
                    end
                end
                if #eventsfound > 0 then
                    controllerevents[i2] = eventsfound
                end
            end
        end
        eventnames[tostring(v)] = controllerevents
    end
end)
local Events = require(game:GetService("ReplicatedStorage").TS.events).GlobalEvents.client
skywars = {
    ["EventHandler"] = Events,
    ["Events"] = eventnames,
    ["BlockFunctionHandler"] = require(LocalPlayer.PlayerScripts.TS.events).Functions,
    ["HotbarController"] = controllers["HotbarController"],
    ["ItemTable"] = require(game:GetService("ReplicatedStorage").TS.item.item).Items,
    ["HealthController"] = Flamework.resolveDependency(controllerids["HealthController"])
}
local function getSword()
	for i,v in ipairs(skywars["HotbarController"]:getHotbarItems()) do
		if skywars["ItemTable"][v.Type].Melee then
			return skywars["ItemTable"][v.Type]
		end
	end
	return nil
end
local function getPickaxe()
	for i,v in ipairs(skywars["HotbarController"]:getHotbarItems()) do
		if skywars["ItemTable"][v.Type].Pickaxe then
			return skywars["ItemTable"][v.Type]
		end
	end
	return nil
end
local function getHeldItem()
	return skywars["HotbarController"]:getHeldItemInfo() and skywars["HotbarController"]:getHeldItemInfo().Name or nil
end

local function equipItem(itemnam)
	skywars["EventHandler"][skywars["Events"].HotbarController.updateActiveItem[1]]:fire(itemnam)
end
local RunLoops = {RenderStepTable = {}, StepTable = {}, HeartTable = {}}
function RunLoops:BindToHeartbeat(name, func)
    if RunLoops.HeartTable[name] == nil then
        RunLoops.HeartTable[name] = RunService.Heartbeat:Connect(func)
    end
end
function RunLoops:UnbindFromHeartbeat(name)
    if RunLoops.HeartTable[name] then
        RunLoops.HeartTable[name]:Disconnect()
        RunLoops.HeartTable[name] = nil
    end
end
Multiaura = Combat:CreateToggle({
    Name = "Multiaura",
    Callback = function(Callback) 
        EnabledMultiaura = Callback
        if EnabledMultiaura then
            RunLoops:BindToHeartbeat("Multiaura",function ()
                for i, v in pairs(game:GetService("Players"):GetChildren()) do
                    if IsAlive(v) and IsAlive(LocalPlayer) then
                        local Magnitude = (v.Character:FindFirstChild("HumanoidRootPart").Position - LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude
                        if Magnitude < MultiauraRange then
                            local olditemname = getHeldItem()
                            Sword = getSword()
                            if Sword ~= nil then
                            if not ToolCheckMulti then
                            equipItem(Sword.Name)
                            end
                            skywars["EventHandler"][skywars["Events"].MeleeController.strikeDesktop[1]]:fire(v)
                            equipItem(olditemname)
                        end
                        end
                    end
                end
            end)
        else
            RunLoops:UnbindFromHeartbeat("Multiaura")
        end
end})
Multiaura:CreateInfo("Killaura on Steroids!")
Multiaura:CreateSlider({
    Name = "Range",
    Default = 20,
    Min = 0,
    Max = 20,
    Callback = function(Callback) 
        MultiauraRange = Callback
    end
})
Multiaura:CreateToggle({
    Name = "Toolcheck",
    Callback = function(Callback) 
        ToolCheckMulti = Callback
    end
})
Blatant:CreateToggle({
    Name = "AutoBuy",
    Callback = function(Callback) 
        EnabledAutoBuy = Callback
        if EnabledAutoBuy then
            RunLoops:BindToHeartbeat("AutoBuy",function ()
            game:GetService("ReplicatedStorage"):WaitForChild("events-eL9"):WaitForChild("dd0aa2df-cb6e-4ffa-8f7e-5d6ee673389c"):FireServer("Blacksmith",1)
            game:GetService("ReplicatedStorage"):WaitForChild("events-eL9"):WaitForChild("dd0aa2df-cb6e-4ffa-8f7e-5d6ee673389c"):FireServer("Blacksmith",0)
        end)
    else
        RunLoops:UnbindFromHeartbeat("AutoBuy")
        end
end})
local velo
local flydown = false
local flyup = false
local EnabledFlyButton = false
local FlyButtonEnabled = false
Fly = Blatant:CreateToggle({
    Name = "Fly",
    Callback = function(Callback) 
        EnabledFly = Callback
            if EnabledFly and not EnabledFlyButton then
                if IsAlive(LocalPlayer) then
                    task.spawn(function()
                        velo = Instance.new("BodyVelocity")
                        velo.MaxForce = Vector3.new(0,9e9,0)
                        velo.Parent = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                        UIS.InputBegan:Connect(function(input)
                            if input.KeyCode == Enum.KeyCode.Space then
                                flyup = true
                            end
                            if input.KeyCode == Enum.KeyCode.LeftShift then
                                flydown = true
                            end
                        end)
                        UIS.InputEnded:Connect(function(input)
                            if input.KeyCode == Enum.KeyCode.Space then
                                flyup = false
                            end
                            if input.KeyCode == Enum.KeyCode.LeftShift then
                                flydown = false
                            end
                        end)
                        spawn(function()
                            while task.wait() do
                                if not EnabledFly or not IsAlive(LocalPlayer) then return end
                                velo.Velocity = Vector3.new(0,(flyup and UpValue or 0)+(flydown and -DownValue or 0),0)
                            end
                    end)
                end)
            end
        else
            if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity"):Destroy()
                flyup = false
                flydown = false
            end
        end
end})
Fly:CreateInfo("Makes you a raven ;)")
Fly:CreateSlider({
    Name = "Up",
    Default = 50,
    Min = 0,
    Max = 100,
    Callback = function(Callback) 
        UpValue = Callback
    end
})
Fly:CreateSlider({
    Name = "Down",
    Default = 50,
    Min = 0,
    Max = 100,
    Callback = function(Callback) 
        DownValue = Callback 
    end
})
Fly:CreateToggle({
    Name = "Fly Counter",
    StartingState = true,
    Callback = function(Callback) 
        FlyCounterEnabled = Callback
end})
Fly:CreateToggle({
    Name = "FlyButton",
    Callback = function(Callback) 
        EnabledFlyButton = Callback
        repeat task.wait()
        if EnabledFlyButton and EnabledFly then
            FlyButton.Visible = true
        else
            FlyButton.Visible = false
        end
    until not loop
end})
FlyButton.MouseButton1Click:Connect(function ()
    FlyButtonEnabled = not FlyButtonEnabled
        if FlyButtonEnabled then
            if IsAlive(LocalPlayer) then
            velo = Instance.new("BodyVelocity")
            velo.MaxForce = Vector3.new(0,9e9,0)
            velo.Parent = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            FlyButton.BackgroundColor3 = Color3.new(0,255,0)
                task.spawn(function()
                    UpButton.MouseEnter:Connect(function()
                        hoveringUpButton = true
                        end)
                    UpButton.MouseLeave:Connect(function()
                        hoveringUpButton = false
                    end)
                    DownButton.MouseEnter:Connect(function()
                        hoveringDownButton = true
                        end)
                    DownButton.MouseLeave:Connect(function()
                        hoveringDownButton = false
                    end)
                    UIS.InputBegan:Connect(function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 and hoveringUpButton then
                            flyup = true
                        end
                        if input.UserInputType == Enum.UserInputType.MouseButton1 and hoveringDownButton then
                            flydown = true
                        end
                    end)
                    UIS.InputEnded:Connect(function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            flydown = false
                            flyup = false
                        end
                    end)
                    spawn(function()
                        while task.wait() do
                            task.wait()
                            if not FlyButtonEnabled then return end
                            velo.Velocity = Vector3.new(0,(flyup and UpValue or 0)+(flydown and -DownValue or 0),0)
                        end
                    end)
                end)
            end
            else
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            FlyButton.BackgroundColor3 = Color3.new(0,0,0)
            flyup = false
            flydown = false
            LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity"):Destroy()
        end
    end
end)
HighJump = Blatant:CreateToggle({
    Name = "HighJump",
    Callback = function(Callback) 
    HighJump = Callback
    if HighJump then
        JumpingConnect = LocalPlayer.Character.Humanoid.Jumping:Connect(function(IsJumping) --Best way to do this
            if IsJumping then
                if IsAlive(LocalPlayer) then
                    workspace.Gravity = 192.6
                    LocalPlayer.Character.HumanoidRootPart.Velocity += Vector3.new(0, JumpHeight, 0)
                    task.wait(0.2)
                    workspace.Gravity = 10
                    task.wait(0.6)
                    workspace.Gravity = 192.6
                end
            end
        end)
    else
    JumpingConnect:Disconnect()
end
end})
HighJump:CreateInfo("Makes you lebron James")
HighJump:CreateSlider({
    Name = "JumpHeight",
    Default = 150,
    Min = 0,
    Max = 500,
    Callback = function(Callback) 
        JumpHeight = Callback
    end
})
local CheckInfJump = false
Blatant:CreateToggle({
    Name = "INF Jump",
    Callback = function(Callback) 
    EnabledINFJUMP = Callback
    if EnabledINFJUMP then
        CheckInfJump = true
        ConnectionINFJUMP = game:GetService("UserInputService").JumpRequest:Connect(function()
	    game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
    end)
    else
        if CheckInfJump then
        ConnectionINFJUMP:Disconnect()
        end
    end
end})
local RunLoops = {RenderStepTable = {}, StepTable = {}, HeartTable = {}}
function RunLoops:BindToHeartbeat(name, func)
    if RunLoops.HeartTable[name] == nil then
        RunLoops.HeartTable[name] = RunService.Heartbeat:Connect(func)
    end
end
function RunLoops:UnbindFromHeartbeat(name)
    if RunLoops.HeartTable[name] then
        RunLoops.HeartTable[name]:Disconnect()
        RunLoops.HeartTable[name] = nil
    end
end
local NewSpeed = 100
Speed = Blatant:CreateToggle({
    Name = "Speed",
    Callback = function(Callback) 
        EnabledSpeed = Callback
        if EnabledSpeed then
            RunLoops:BindToHeartbeat("Speed", function(delta)
                if IsAlive(LocalPlayer) then
                    local SpeedCFrame = LocalPlayer.Character.Humanoid.MoveDirection * (NewSpeed - 20) * delta
                    LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame + SpeedCFrame
                end
            end)
        else
            RunLoops:UnbindFromHeartbeat("Speed")
        end
end})
Speed:CreateInfo("Makes you go zoooom")
Speed:CreateSlider({
    Name = "Value",
    Default = 100,
    Min = 16,
    Max = 200,
    Callback = function(Callback) 
        NewSpeed = Callback - 0.01
    end
})
local Sky
Render:CreateToggle({
    Name = "Galaxy Sky",
    Callback = function(Callback) 
        SkyEnabled = Callback
        if SkyEnabled then
        Sky = Instance.new("Sky")
        ID = 8281961896
        Sky.SkyboxBk = "http://www.roblox.com/asset/?id="..ID
        Sky.SkyboxDn = "http://www.roblox.com/asset/?id="..ID
        Sky.SkyboxFt = "http://www.roblox.com/asset/?id="..ID
        Sky.SkyboxLf = "http://www.roblox.com/asset/?id="..ID
        Sky.SkyboxRt = "http://www.roblox.com/asset/?id="..ID
        Sky.SkyboxUp = "http://www.roblox.com/asset/?id="..ID
        Sky.Parent = Lighting
        else
            if Sky then Sky:Destroy() end
        end
end})
local Atmosphere
Render:CreateToggle({
    Name = "Atmosphere",
    Callback = function(Callback)
        AtmoEnabled = Callback
        if AtmoEnabled then
            Atmosphere = Instance.new("ColorCorrectionEffect")
            Atmosphere.TintColor = Color3.fromHSV(0.7,0.05,0.7)
            Atmosphere.Parent = Lighting
        else
            if Atmosphere then Atmosphere:Destroy() end
        end
end})
FOV = Render:CreateToggle({
    Name = "FOV",
    Callback = function(Callback) 
        FOVEnabled = Callback
        if FOVEnabled then
        RunLoops:BindToHeartbeat("FOV",function ()
            Camera.FieldOfView = FOVValue
        end)
    else
        RunLoops:UnbindFromHeartbeat("FOV")
    end
end})
FOV:CreateInfo("Makes you see the end of time")
FOV:CreateSlider({
    Name = "FOV",
    Default = 120,
    Min = 0,
    Max = 120,
    Callback = function(Callback) 
        FOVValue = Callback
    end
})
Render:CreateToggle({
    Name = "FPS Unlocker",
    Callback = function(Callback) 
        EnabledFPS = Callback
        if EnabledFPS then
            setfpscap((200))
        end
end})
BedNuker = Utility:CreateToggle({
    Name = "Bed Nuker",
    Callback = function(Callback) 
        EnabledNuker = Callback
        if EnabledNuker then
            RunLoops:BindToHeartbeat("Nuker",function ()
                for i,v in pairs (game:GetService("Workspace").BlockContainer:GetChildren()) do
                    if v ~= nil and v.Name ~= nil and v.Name == "ShimBlock" and v:IsA("Part") then
                        local Magnitude = (v.Position - LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude
                        if Magnitude < BedNukerRange then
                            local olditemname = getHeldItem()
                            Pickaxe = getPickaxe()
                            if Pickaxe ~= nil then
                                if not ToolCheckBedNuker then
                                    equipItem(Pickaxe.Name)
                                end
                                game:GetService("ReplicatedStorage"):WaitForChild("events-eL9"):WaitForChild("aa07b4e5-e904-4516-aea1-3314f519ac52"):FireServer(v.Position)
                                equipItem(olditemname)
                            end
                        end
                    end
                end
            end)
        else
            RunLoops:UnbindFromHeartbeat("Nuker")
        end
end})
BedNuker:CreateInfo("Killaura on Steroids!")
BedNuker:CreateSlider({
    Name = "Range",
    Default = 20,
    Min = 0,
    Max = 20,
    Callback = function(Callback) 
        BedNukerRange = Callback
    end
})
BedNuker:CreateToggle({
    Name = "Toolcheck",
    Callback = function(Callback) 
        ToolCheckBedNuker = Callback
    end
})
local ChestBlacklist = {}
Utility:CreateToggle({
    Name = "ChestStealer",
    Callback = function(Callback) 
        EnabledNuker = Callback
        if EnabledNuker then
            ChestOpen = skywars["EventHandler"][skywars["Events"].ChestController.onStart[1]]:connect(function(one, two, three)
                if ChestBlacklist[one] == nil then
                    ChestBlacklist[one] = true
                    for i,v in pairs(two) do
                        skywars["EventHandler"][skywars["Events"].ChestController.updateChest[1]](one, v.Type, -v.Quantity)
                    end
                    skywars["EventHandler"][skywars["Events"].ChestController.closeChest[1]](one)
                end
            end)
            RunLoops:BindToHeartbeat("ChestStealer",function ()
                    if IsAlive(LocalPlayer) then
                        for i,v in pairs(workspace.BlockContainer.Map.Chests:GetChildren()) do
                            if v.PrimaryPart then
                                if (LocalPlayer.Character.HumanoidRootPart.Position - v.PrimaryPart.Position).magnitude <= 10 and ChestBlacklist[v] == nil then
                                    skywars["EventHandler"][skywars["Events"].ChestController.openChest[1]](v)
                                end
                            end
                        end
                    end
                end) 
        else
            RunLoops:UnbindFromHeartbeat("ChestStealer")
            if ChestOpen then
                ChestOpen:Disconnect()
            end
        end
end})
Utility:CreateToggle({
    Name = "Autowin Bridge",
    Callback = function(Callback) 
        AutoWinBridge = Callback
        if AutoWinBridge then
            repeat task.wait(1.5)
                local OriginalHRoot = LocalPlayer.Character.HumanoidRootPart.CFrame
                for i, v in pairs(game:GetService("Workspace").BlockContainer.Map.Portals:GetChildren()) do
                    if v.Name == "Portal" then
                        LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                        task.wait(0.1)
                    end
                end
                LocalPlayer.Character.HumanoidRootPart.CFrame = OriginalHRoot
            until not AutoWinBridge
        end
end})
local counter = 0
local AutoWin = false
function BreakAllBeds()
    counter = 0
            repeat
            task.wait()
            counter = counter + 1
            for i,v in pairs(game:GetService("Workspace").BlockContainer:GetChildren()) do
                if v.Name == "ShimBlock" then
                local WherePlayer2 = LocalPlayer.Character.HumanoidRootPart.CFrame
                LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,8,0)
                if not AutoWin then return end
                task.wait(1.1)
                LocalPlayer.Character.HumanoidRootPart.CFrame = WherePlayer2
                end
            end
        until counter >= 2 or not AutoWin
end
function TeleportAllPlayers()
        repeat task.wait()
            for i,v in pairs(game.Players:GetChildren()) do
                if v ~= LocalPlayer and IsAlive(LocalPlayer) and IsAlive(v) then
                    local PRoot = v.Character.HumanoidRootPart
                    local LPRoot = LocalPlayer.Character.HumanoidRootPart
                    if PRoot.CFrame.Y > -50 then 
                        LPRoot.CFrame = PRoot.CFrame + Vector3.new(3,3,3)
                    end
                    task.wait(0.1)
                end
                if not AutoWin then return end
            end
        until not AutoWin
end
Utility:CreateToggle({
    Name = "AutoWin",
    Callback = function(Callback) 
        EnabledAutoWin = Callback
        if EnabledAutoWin then
            AutoWin = true
            BreakAllBeds()
            TeleportAllPlayers()
        else
            AutoWin = false
        end
end})
Utility:CreateToggle({
    Name = "GetAllItems",
    Callback = function(Callback) 
        EnabledGetItems = Callback
        if EnabledGetItems then
            repeat
            for i,v in pairs(game:GetService("Workspace").BlockContainer.Map.Generators:GetDescendants()) do
                if v.Name == "RootPart" then
                    if not EnabledGetItems then return end
                    local WherePlayer = LocalPlayer.Character.HumanoidRootPart.CFrame
                    LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                    task.wait(0.03)
                    LocalPlayer.Character.HumanoidRootPart.CFrame = WherePlayer
                end
            end
            if not EnabledGetItems then return end
            task.wait(5)
        until not EnabledGetItems
    end
end})
if shared.RavenB4Started == nil then
    shared.RavenB4Completed = true
end
