--[[
██████╗  █████╗ ██╗   ██╗███████╗███╗   ██╗    ██████╗ ██╗  ██╗
██╔══██╗██╔══██╗██║   ██║██╔════╝████╗  ██║    ██╔══██╗██║  ██║
██████╔╝███████║██║   ██║█████╗  ██╔██╗ ██║    ██████╔╝███████║
██╔══██╗██╔══██║╚██╗ ██╔╝██╔══╝  ██║╚██╗██║    ██╔══██╗╚════██║
██║  ██║██║  ██║ ╚████╔╝ ███████╗██║ ╚████║    ██████╔╝     ██║
╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝  ╚══════╝╚═╝  ╚═══╝    ╚═════╝      ╚═╝
Author: Near (or nea.r)
Language: Lua
Category: Games (Bladeball)

*If you do use my code, give credits to me!*
]]
repeat task.wait() until game:IsLoaded()
local UIS = game:GetService("UserInputService")
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
    local AutoClickerButton = Instance.new("TextButton")
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

    AutoClickerButton.Name = "AutoClickerButton"
    AutoClickerButton.Parent = ScreenGui2
    AutoClickerButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    AutoClickerButton.BackgroundTransparency = 0.400
    AutoClickerButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    AutoClickerButton.BorderSizePixel = 0
    AutoClickerButton.Position = UDim2.new(0.111921936, 0, 0.417482257, 0)
    AutoClickerButton.Size = UDim2.new(0, 50, 0, 49)
    AutoClickerButton.Font = Enum.Font.GothamBold
    AutoClickerButton.Text = "AutoClicker"
    AutoClickerButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    AutoClickerButton.TextSize = 16.000
    AutoClickerButton.TextWrapped = true
    AutoClickerButton.Visible = false

    UICorner_4.CornerRadius = UDim.new(0, 50)
    UICorner_4.Parent = AutoClickerButton

    LongjumpButton.Name = "LongjumpButton"
    LongjumpButton.Parent = ScreenGui2
    LongjumpButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    LongjumpButton.BackgroundTransparency = 0.400
    LongjumpButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    LongjumpButton.BorderSizePixel = 0
    LongjumpButton.Position = UDim2.new(0.20210211, 0, 0.417482257, 0)
    LongjumpButton.Size = UDim2.new(0, 50, 0, 49)
    LongjumpButton.Font = Enum.Font.GothamBold
    LongjumpButton.Text = "Longjump"
    LongjumpButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    LongjumpButton.TextSize = 10.000
    LongjumpButton.TextWrapped = true
    LongjumpButton.Visible = false

    UICorner_5.CornerRadius = UDim.new(0, 50)
    UICorner_5.Parent = LongjumpButton

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
            if not FlyButton.Visible then
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
--Locals
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RepStorage = game:GetService("ReplicatedStorage")
local workspace = game:GetService("Workspace")
local ballsFolder = workspace:WaitForChild("Balls")
local RunService = game:GetService("RunService")
local Remotes = RepStorage:WaitForChild("Remotes", 9e9)
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
function hashFunc(vec)
    return {value = vec}
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
local function VerifyBall(Ball)
    if typeof(Ball) == "Instance" and Ball:IsA("BasePart") and Ball:IsDescendantOf(ballsFolder) and Ball:GetAttribute("realBall") == true then
        return true
    end
end
local function IsTarget()
    return (LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Highlight"))
end
function IsAlive(plr)
    plr = plr or LocalPlayer
        if not plr.Character then return false end        
        if not plr.Character:FindFirstChild("Head") then return false end
        if not plr.Character:FindFirstChild("Humanoid") then return false end
        if plr.Character:FindFirstChild("Humanoid").Health < 0.11 then return false end
    return true
 end
 local function GetClosest()
     if not IsAlive(LocalPlayer) then return end
     local HumanoidRootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
     if not (LocalPlayer.Character or HumanoidRootPart) then return end
 
     local TargetDistance = math.huge
     local Target
 
     for i,v in ipairs(Players:GetPlayers()) do
         if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
             local TargetHRP = v.Character.HumanoidRootPart
             local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
             if mag < TargetDistance then
                 TargetDistance = mag
                 Target = v
             end
         end
     end
     return Target
 end
local LockedView = false
EnabledAutoParry = Combat:CreateToggle({
    Name = "Auto Parry",
    Callback = function(Callback) 
    EnabledAutoParry = Callback
    if EnabledAutoParry and IsAlive(LocalPlayer) then
        AutoParryConnection2 = ballsFolder.ChildAdded:Connect(function(Ball)
            if not VerifyBall(Ball) then
                return
            end
            local OldPosition = Ball.Position
            local OldTick = tick() 
            Ball:GetPropertyChangedSignal("Position"):Connect(function()
                if IsTarget() then 
                    local Velocity = (OldPosition - Ball.Position).Magnitude
                    local Distance = (Ball.Position - workspace.CurrentCamera.Focus.Position).Magnitude
                    if ((Distance / Velocity) <= 11 and Distance < 120) or Distance < 15 then 
                        if GetClosest() then
                            local args = {
                                [1] = 0.5,
                                [2] = CFrame.new(-170.68218994140625, 21.187170028686523, -68.97377014160156, 0.1499946266412735, -0.3812122642993927, 0.9122382998466492, -3.725290742551124e-09, 0.9226767420768738, 0.3855743110179901, -0.9886868596076965, -0.05783407762646675, 0.13839654624462128),
                                [3] = {
                                    ["RavenB4God"] = Vector3.new(485.7406921386719, 41.24232482910156, 184.4142608642578),
                                    ["RavenB4onopfr"] = Vector3.new(132.63336181640625, 103.59786987304688, 157.44236755371094),
                                    ["RavenB4lovetoyou"] = Vector3.new(244.41799926757812, 103.0703125, 162.02842712402344),
                                    ["RavenB4Bypassed"] = Vector3.new(1202.780029296875, 178.57180786132812, 31.34796142578125),
                                    ["NOwayRavenB4"] = Vector3.new(3149.427978515625, 265.93121337890625, 16.215591430664062),
                                    ["User_RavenB4"] = Vector3.new(-132.4027099609375, 127.88240051269531, 68.36740112304688),
                                    ["Fr_ozenmonkey65"] = Vector3.new(300.15283203125, 109.14292907714844, 128.28269958496094),
                                    ["asdasdsadsadas65"] = Vector3.new(476.3878173828125, 308.57562255859375, 13.123077392578125),
                                    ["Nik62n"] = Vector3.new(359.4144592285156, 100.16458129882812, 192.99082946777344)
                                },
                                [4] = {
                                    [1] = 533.3333129882812,
                                    [2] = 300
                                },
                                [5] = false
                            }
                            
                            game:GetService("AdService"):WaitForChild("\n\n\n\n\n"):FireServer(unpack(args))
                        end
                    end
                end
                if LockedView then
                local x = Ball.Position.X
                local y = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Y
                local z = Ball.Position.Z
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.lookAt(LocalPlayer.Character.HumanoidRootPart.Position,Vector3.new(x,y,z))
                end
                if (tick() - OldTick >= 1/60) then
                    OldTick = tick()
                    OldPosition = Ball.Position
                end
            end)
        end)
    else
        if AutoParryConnection2 then AutoParryConnection2:Disconnect()end
    end
end})
EnabledAutoParry:CreateInfo("Killaura for balls ;)")
local AutoClickerMouse = false
Autoclicker = Combat:CreateToggle({
    Name = "AutoClicker",
    Callback = function(Callback) 
    AutoClicker = Callback
    if AutoClicker then
        UIS.InputBegan:Connect(function(input, gameProcessed)
            if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and not UIS:GetFocusedTextBox() then
                AutoClickerMouse = true
            end
        end)
        UIS.InputEnded:Connect(function(input)
            if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and not UIS:GetFocusedTextBox() then
                AutoClickerMouse = false
            end
        end)
        repeat task.wait()
            if (AutoClicker and AutoClickerMouse) and IsTarget() then
                HitBall()
            end
        until not loop
    end
end})
Autoclicker:CreateInfo("Ballin' Simulator 2")
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
    Default = 100,
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
    Name = "Speed",
    Default = 23,
    Min = 0,
    Max = 100,
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
Render:CreateToggle({
    Name = "FPS Unlocker",
    Callback = function(Callback) 
        EnabledFPS = Callback
        if EnabledFPS then
            setfpscap((160))
        end
end})
LockedView = Utility:CreateToggle({
    Name = "Locked View",
    Callback = function(Callback) 
        LockedView = Callback
    end
})
LockedView:CreateInfo("What ya looking at?")
AutoWinning = Utility:CreateToggle({
    Name = "AutoWin",
    Callback = function(Callback) 
    EnabledAutoWin = Callback
    if EnabledAutoWin and IsAlive(LocalPlayer) then
        RunLoops:BindToHeartbeat("AutoWin", function()
            for i,v in pairs(ballsFolder:GetChildren()) do
                if not VerifyBall(v) then return end
                if IsTarget() then
                    print(v.Velocity.magnitude)
                    if v.Velocity.magnitude >= 0 then 
                        LocalPlayer.Character.HumanoidRootPart.CFrame = (v.CFrame + Vector3.new(10,-12,10))
                        HitBall()
                    else
                        LocalPlayer.Character.HumanoidRootPart.CFrame = (v.CFrame + Vector3.new(50,-12,50))
                    end
                else
                    LocalPlayer.Character.HumanoidRootPart.CFrame = (v.CFrame + Vector3.new(10,-12,10))
                end
            end
        end)
    else
        RunLoops:UnbindFromHeartbeat("AutoWin")
    end
end})
AutoWinning:CreateInfo("Makes you unkillable!")
AutoWinning:CreateToggle({
    Name = "Legit",
    Callback = function(Callback) 
        LegitAutoWin = Callback
    end
})
Utility:CreateToggle({
    Name = "FPS Booster",
    Callback = function(Callback) 
    local Stuff = {}
    if Callback then
        for _, v in next, game:GetDescendants() do
            if v:IsA("Part") or v:IsA("Union") or v:IsA("BasePart") then
                v.Material = Enum.Material.SmoothPlastic
                table.insert(Stuff, 1, v)
            end
        
            if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Explosion") or v:IsA("Sparkles") or v:IsA("Fire") then
                v.Enabled = false
                table.insert(Stuff, 1, v)
            end
        
            if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("DepthOfFieldEffect") or v:IsA("SunRaysEffect") then
                v.Enabled = false
                table.insert(Stuff, 1, v)
            end
        
            if v:IsA("Decal") or v:IsA("Texture") then
                v.Texture = ""
                table.insert(Stuff, 1, v)
            end
        
            if v:IsA("Sky") then
                v.Parent = nil
                table.insert(Stuff, 1, v)
            end
        end     
    end
end
})
local function GetClosest()
    if not IsAlive(LocalPlayer) then return end
    local HumanoidRootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not (LocalPlayer.Character or HumanoidRootPart) then return end

    local TargetDistance = math.huge
    local Target

    for i,v in ipairs(Players:GetPlayers()) do
        if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            local TargetHRP = v.Character.HumanoidRootPart
            local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
            if mag < TargetDistance then
                TargetDistance = mag
                Target = v
            end
        end
    end
    return Target
end
TargetHudModule = Client:CreateToggle({
    Name = "Target Hud",
    Callback = function(Callback) 
        TargetHudEnabled = Callback
        if TargetHudEnabled then
            repeat task.wait()
            GetClosestPlayer = GetClosest()
            if GetClosestPlayer ~= nil and IsAlive(GetClosestPlayer) and IsAlive(LocalPlayer) then
                local Magnitude = (GetClosestPlayer.Character:FindFirstChild("HumanoidRootPart").Position - LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude
                if Magnitude < TargetHudRange then
                        TargetHud.Visible = true
                        TargetName.Text = GetClosestPlayer.Name
                        TargetName.TextColor3 = Color3.fromRGB(255,255,255)
                        HealthValue.Text = tostring(GetClosestPlayer.Character.Humanoid.Health).." HP"
                        local userId = GetClosestPlayer.UserId
                        local thumbType = Enum.ThumbnailType.HeadShot
                        local thumbSize = Enum.ThumbnailSize.Size420x420
                        local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
                        TargetImage.Image = content
                        game:GetService("TweenService"):Create(SliderInner, TweenInfo.new(0.3,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Size = UDim2.fromScale((GetClosestPlayer.Character.Humanoid.Health / 100),1)}):Play()
                    else
                    TargetHud.Visible = false
                    end
                else
                    TargetHud.Visible = false
                end
            until not TargetHud
    else
        RunLoops:UnbindFromHeartbeat("TargetHud")
        TargetHud.Visible = false
    end
end})
TargetHudModule:CreateInfo("Shows Infos about the Player!")
TargetHudModule:CreateSlider({
    Name = "Range",
    Default = 20,
    Min = 0,
    Max = 20,
    Callback = function(Callback) 
        TargetHudRange = Callback
    end
})
if shared.RavenB4Started == nil then
    shared.RavenB4Completed = true
end
