--[[
██████╗  █████╗ ██╗   ██╗███████╗███╗   ██╗    ██████╗ ██╗  ██╗
██╔══██╗██╔══██╗██║   ██║██╔════╝████╗  ██║    ██╔══██╗██║  ██║
██████╔╝███████║██║   ██║█████╗  ██╔██╗ ██║    ██████╔╝███████║
██╔══██╗██╔══██║╚██╗ ██╔╝██╔══╝  ██║╚██╗██║    ██╔══██╗╚════██║
██║  ██║██║  ██║ ╚████╔╝ ███████╗██║ ╚████║    ██████╔╝     ██║
╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝  ╚══════╝╚═╝  ╚═══╝    ╚═════╝      ╚═╝
Author: Near (or nea.r)
Language: Lua
Category: GUI

*If you do use my code, give credits to me!*
]]

function table_merge(...) --Credits: https://gist.github.com/qizhihere/cb2a14432d9bf65693ad 
    local tables_to_merge = { ... }

    for k, t in ipairs(tables_to_merge) do
        assert(type(t) == "table", string.format("Expected a table as function parameter %d", k))
    end

    local result = tables_to_merge[1]

    for i = 2, #tables_to_merge do
        local from = tables_to_merge[i]
        for k, v in pairs(from) do
            if type(k) == "number" then
                table.insert(result, v)
            elseif type(k) == "string" then
                if type(v) == "table" then
                    result[k] = result[k] or {}
                    result[k] = table_merge(result[k], v)
                else
                    result[k] = v
                end
            end
        end
    end

    return result
end
local RepStorage = game:GetService("ReplicatedStorage")
local file = shared.FileName ~= nil and shared.FileName
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local HttpService = game:service('HttpService')
local lib = {}
local ScreenGui = Instance.new("ScreenGui")
local ScreenGui2 = Instance.new("ScreenGui")
local Array = Instance.new("Frame")
local UIGridLayout = Instance.new("UIGridLayout")
local ScreenGUIFrame = Instance.new("Frame")
local GUILoadSettings = {}
local GUISaveSettings = {}
local FixedTable = {}
local RavenLogoButton = Instance.new("TextButton")
local ButtonLogo = Instance.new("ImageLabel")
local TweenService = game:GetService("TweenService")
local ModuleNotification = true
if file ~= nil then
    if isfile(file) then
        GUILoadSettings = HttpService:JSONDecode(readfile(file))
        GUILoadSettings = GUILoadSettings or {}
    end
    spawn(function ()
        repeat task.wait() until shared.RavenB4Completed ~= nil
        FixedTable = table_merge(table.unpack(GUISaveSettings))
        repeat task.wait()
            JSON = HttpService:JSONEncode(FixedTable)
            writefile(file,JSON)
        until not shared.Injected
    end)
end
--Properties:

ScreenGUIFrame.Name = "ScreenGUIFrame"
ScreenGUIFrame.Parent = ScreenGui
ScreenGUIFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScreenGUIFrame.BackgroundTransparency = 1.000
ScreenGUIFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScreenGUIFrame.BorderSizePixel = 0
ScreenGUIFrame.Position = UDim2.new(0,0,0,0)
ScreenGUIFrame.Size = UDim2.new(0,0,0,0)

Array.Name = "Array"
Array.Parent = ScreenGui2
Array.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Array.BackgroundTransparency = 1.000
Array.BorderColor3 = Color3.fromRGB(0, 0, 0)
Array.BorderSizePixel = 0
Array.Position = UDim2.new(0.867999971, 0, 0, 10)
Array.Size = UDim2.new(0.127251238, 0, 0.980064094, 0)
Array.Visible = false

UIGridLayout.Parent = Array
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 0, 9.99999975e-05, 0)
UIGridLayout.CellSize = UDim2.new(1, 0, 0, 15)

local Frame = Instance.new("Frame")

Frame.Parent = ScreenGUIFrame
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.650
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0,-2000,0,-2000)
Frame.Size = UDim2.new(0, 4016,0, 4001)
Frame.Visible = false

local Lighting = game:GetService("Lighting")
local Blur = Instance.new("BlurEffect")
Blur.Name = "Blur"
Blur.Parent = Lighting
Blur.Enabled = false
Blur.Size = 25

local counter = 0 -- me when counter:
function shared:createnotification(text ,delay2,title,timer)
    spawn(function ()
    local RavenNotification = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local UIGradient = Instance.new("UIGradient")
    local RavenIcon = Instance.new("ImageLabel")
    local UIGradient_2 = Instance.new("UIGradient")
    local InfoText = Instance.new("TextLabel")
    local TitleNotification = Instance.new("TextLabel")
    local MiddleLine = Instance.new("Frame")
    local UIGradient_3 = Instance.new("UIGradient")
    local UIStroke = Instance.new("UIStroke")

    title = title or "Raven Notification"
    timer = timer or 0.5

    RavenNotification.Name = "Raven Notification"
    RavenNotification.Parent = ScreenGui2
    RavenNotification.BackgroundColor3 = Color3.fromRGB(0,0,0)
    RavenNotification.BackgroundTransparency = 0.500
    RavenNotification.BorderColor3 = Color3.fromRGB(0, 0, 0)
    RavenNotification.BorderSizePixel = 0
    RavenNotification.Position = UDim2.new(1.1, 0, 0, 450 - (counter * 59))
    RavenNotification.Size = UDim2.new(0, 183, 0, 59)

    UICorner.CornerRadius = UDim.new(0, 8)
    UICorner.Parent = RavenNotification

    UIStroke.Thickness = 2
    UIStroke.Parent = RavenNotification
    UIStroke.Color = Color3.fromRGB(255,255,255)


    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(142, 132, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(160, 193, 255))}
    UIGradient.Parent = UIStroke

    RavenIcon.Name = "Raven Icon"
    RavenIcon.Parent = RavenNotification
    RavenIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    RavenIcon.BackgroundTransparency = 1.000
    RavenIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
    RavenIcon.BorderSizePixel = 0
    RavenIcon.Position = UDim2.new(0.0383167826, 0, 0.0830522925, 0)
    RavenIcon.Size = UDim2.new(0, 24, 0, 23)
    RavenIcon.Image = "rbxassetid://14483298187"

    UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(240, 158, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(179, 73, 255))}
    UIGradient_2.Parent = RavenIcon

    InfoText.Name = "Info Text"
    InfoText.Parent = RavenNotification
    InfoText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    InfoText.BackgroundTransparency = 1.000
    InfoText.BorderColor3 = Color3.fromRGB(0, 0, 0)
    InfoText.BorderSizePixel = 0
    InfoText.Position = UDim2.new(0.0659497455, 0, 0.621052623, 0)
    InfoText.Size = UDim2.new(0.862386227, 0, 0.263157904, 0)
    InfoText.Font = Enum.Font.GothamMedium
    InfoText.Text = text
    InfoText.TextColor3 = Color3.fromRGB(255, 255, 255)
    InfoText.TextScaled = true
    InfoText.RichText = true
    InfoText.TextSize = 15.000
    InfoText.TextWrapped = true
    InfoText.TextXAlignment = Enum.TextXAlignment.Left

    TitleNotification.Name = "TitleNotification"
    TitleNotification.Parent = RavenNotification
    TitleNotification.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TitleNotification.BackgroundTransparency = 1.000
    TitleNotification.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TitleNotification.BorderSizePixel = 0
    TitleNotification.Position = UDim2.new(0.204038709, 0, 0.15379101, 0)
    TitleNotification.Size = UDim2.new(0.657436132, 0, 0.24210526, 0)
    TitleNotification.Font = Enum.Font.GothamMedium
    TitleNotification.Text = "Raven Notification"
    TitleNotification.TextColor3 = Color3.fromRGB(255, 255, 255)
    TitleNotification.TextScaled = true
    TitleNotification.TextSize = 15.000
    TitleNotification.TextWrapped = true
    TitleNotification.TextXAlignment = Enum.TextXAlignment.Left

    MiddleLine.Name = "MiddleLine"
    MiddleLine.Parent = RavenNotification
    MiddleLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MiddleLine.BorderColor3 = Color3.fromRGB(0, 0, 0)
    MiddleLine.BorderSizePixel = 0
    MiddleLine.Position = UDim2.new(0, 0, 0.484210521, 0)
    MiddleLine.Size = UDim2.new(1, 0, 0.0399999991, 0)

    UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(142, 132, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(160, 193, 255))}
    UIGradient_3.Parent = MiddleLine

    pcall(function()
        RavenNotification:TweenPosition((RavenNotification.Position - UDim2.new(0.274324248, 0, 0, 0)), Enum.EasingDirection.InOut, Enum.EasingStyle.Quad, timer)
        counter = counter + 1
        task.wait(delay2)
        counter = counter - 1
        RavenNotification:TweenPosition((RavenNotification.Position + UDim2.new(0.274324248, 0, 0, 0)),Enum.EasingDirection.Out,Enum.EasingStyle.Sine, timer)
    end)
end)-- is this counter method stupid? yes. Does it work tho? also yes.
end

function lib:CreateWindow(text, Position)
    local TopFrame = Instance.new("Frame")
    local TabName = Instance.new("TextLabel")
    local TabTextPadding = Instance.new("UIPadding")
    local PlusMinusButton = Instance.new("TextButton")
    local TFCorner = Instance.new("UICorner")
    local TFStroke = Instance.new("UIStroke")
    local TFStrokeGrad = Instance.new("UIGradient")
    local HolderFrame = Instance.new("Frame")
    local HolderUIList = Instance.new("UIListLayout")
    local UICorner_10 = Instance.new("UICorner")
    local UIGradient_10 = Instance.new("UIGradient")
    
    local Toggles = {}

    ScreenGui.Name = "ScreenGui"
    ScreenGui.Parent = game:WaitForChild("CoreGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    ScreenGui2.Name = "ScreenGui2"
    ScreenGui2.Parent = game:WaitForChild("CoreGui")
    ScreenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    TopFrame.Name = "TopFrame"
    TopFrame.Parent = ScreenGUIFrame
    TopFrame.AutomaticSize = "Y"
    TopFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    TopFrame.BackgroundTransparency = 0.500
    TopFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TopFrame.BorderSizePixel = 0
    TopFrame.Position = Position
    TopFrame.Size = UDim2.new(0, 130, 0, 0)

    TabName.Name = "TabName"
    TabName.Parent = TopFrame
    TabName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabName.BackgroundTransparency = 1.000
    TabName.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TabName.BorderSizePixel = 0
    TabName.Size = UDim2.new(1, 0,0, 23)
    TabName.Font = Enum.Font.SourceSans
    TabName.Text = text
    TabName.TextColor3 = Color3.fromRGB(255, 255, 255)
    TabName.TextSize = 25.000
    TabName.TextXAlignment = Enum.TextXAlignment.Left

    TabTextPadding.Name = "TabTextPadding"
    TabTextPadding.Parent = TabName
    TabTextPadding.PaddingLeft = UDim.new(0, 10)

    PlusMinusButton.Name = "PlusMinusButton"
    PlusMinusButton.Parent = TabName
    PlusMinusButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    PlusMinusButton.BackgroundTransparency = 1.000
    PlusMinusButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    PlusMinusButton.BorderSizePixel = 0
    PlusMinusButton.Position = UDim2.new(0.699999988, 0, 0, 0)
    PlusMinusButton.Size = UDim2.new(0, 35, 1, 0)
    PlusMinusButton.Font = Enum.Font.SourceSansBold
    PlusMinusButton.Text = "-"
    PlusMinusButton.TextColor3 = Color3.fromRGB(235, 39, 39)
    PlusMinusButton.TextSize = 30.000
    PlusMinusButton.TextWrapped = true

    TFCorner.Name = "TFCorner"
    TFCorner.Parent = TopFrame

    TFStroke.Name = "TFStroke"
    TFStroke.Parent = TopFrame
    TFStroke.Thickness = 2
    TFStroke.Color = Color3.new(255,255,255)

    TFStrokeGrad.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(142, 132, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(160, 193, 255))}
    TFStrokeGrad.Parent = TFStroke

    HolderFrame.Name = "HolderFrame"
    HolderFrame.Parent = TopFrame
    HolderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    HolderFrame.BackgroundTransparency = 1.000
    HolderFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    HolderFrame.BorderSizePixel = 0
    HolderFrame.Position = UDim2.new(0, 0, 0, 27)
    HolderFrame.Size = UDim2.new(1, 0, 0, 0)
    HolderFrame.AutomaticSize = "Y"

    HolderUIList.Name = "HolderUIList"
    HolderUIList.Parent = HolderFrame
    HolderUIList.SortOrder = Enum.SortOrder.LayoutOrder

    RavenLogoButton.Name = "RavenLogoButton"
    RavenLogoButton.Parent = ScreenGui2
    RavenLogoButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    RavenLogoButton.BackgroundTransparency = 0.500
    RavenLogoButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    RavenLogoButton.BorderSizePixel = 0
    RavenLogoButton.Position = UDim2.new(0.949999988, 0, 0.300000012, 0)
    RavenLogoButton.Size = UDim2.new(0, 35, 0, 35)
    RavenLogoButton.Font = Enum.Font.SourceSans
    RavenLogoButton.Text = ""
    RavenLogoButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    RavenLogoButton.TextSize = 14.000

    ButtonLogo.Name = "ButtonLogo"
    ButtonLogo.Parent = RavenLogoButton
    ButtonLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ButtonLogo.BackgroundTransparency = 1.000
    ButtonLogo.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ButtonLogo.BorderSizePixel = 0
    ButtonLogo.Position = UDim2.new(0.100000001, 0, 0.100000001, 0)
    ButtonLogo.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
    ButtonLogo.Image = "rbxassetid://14483298187"

    UIGradient_10.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(240, 158, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(179, 73, 255))}
    UIGradient_10.Name = "UIGradient_10"
    UIGradient_10.Parent = ButtonLogo

    UICorner_10.Name = "UICorner_10"
    UICorner_10.Parent = RavenLogoButton

    ScreenGui.Enabled = false

    PlusMinusButton.MouseButton1Click:Connect(function ()
        if PlusMinusButton.Text == "+" then
            PlusMinusButton.Text = "-"
            PlusMinusButton.TextColor3 = Color3.fromRGB(235, 39, 39)
            HolderFrame.Visible = true
        else
            PlusMinusButton.Text = "+"
            PlusMinusButton.TextColor3 = Color3.fromRGB(153, 255, 168)
            HolderFrame.Visible = false
        end
    end)

    --Credits to a guy that the name I forgot (Made a client back then named "LachsHub" with him where he came up with this clever GUI Drag script)

    local frame = TopFrame
    local dragToggle = nil
    local dragSpeed = 0.5
    local dragStart = nil
    local startPos = nil

    local function updateInput(input)
        local delta = input.Position - dragStart
        local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
            startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
    end

    frame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
            dragToggle = true
            dragStart = input.Position
            startPos = frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragToggle = false
                end
            end)
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            if dragToggle then
                updateInput(input)
            end
        end
    end)

    function Toggles:ravenb4(defaults, options)
        defaults = defaults or {}
        options = options or {}
        for option, value in next, options do
            defaults[option] = value
        end
        return defaults
    end

    function Toggles:CreateToggle(options)
        options = self:ravenb4({
            Name = "Toggle",
            Keybind = nil,
            StartingState = false,
            Callback = function() end
        }, options)

        local function OptionsName()
            return options.Name
        end

        if GUILoadSettings[options.Name] ~= nil then
            if GUILoadSettings[options.Name].Value ~= nil then
                options.StartingState = GUILoadSettings[options.Name].Value
            end
            if GUILoadSettings[options.Name].Keybind ~= nil then
                options.Keybind = Enum.KeyCode[GUILoadSettings[options.Name].Keybind]
            end
        end
        
        table.insert(GUISaveSettings,{[options.Name] = {Value = options.StartingState}})
        table.insert(GUISaveSettings,{[options.Name] = {Keybind = options.Keybind ~= nil and options.Keybind.Name or options.Keybind}})

        local Toggle = {}
        local toggled = options.StartingState
        local MainButton = Instance.new("TextButton")
        local MiniHolderFrame = Instance.new("Frame")
        local MiniHolderUIList = Instance.new("UIListLayout")
        local Bind = Instance.new("Frame")
        local BindText = Instance.new("TextLabel")
        local BindTextPad = Instance.new("UIPadding")
        local TextButton = Instance.new("TextButton")


        do

        MainButton.Name = "MainButton"
        MainButton.Parent = HolderFrame
        MainButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MainButton.BackgroundTransparency = 1.000
        MainButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
        MainButton.BorderSizePixel = 0
        MainButton.Size = UDim2.new(1, 0, 0, 20)
        MainButton.FontFace = Font.new("rbxasset://fonts/families/Balthazar.json", Enum.FontWeight.Bold)
        MainButton.Text = options.Name
        MainButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        MainButton.TextSize = 20.000
        MainButton.TextScaled = true

        MiniHolderFrame.Name = "MiniHolderFrame"
        MiniHolderFrame.Parent = HolderFrame
        MiniHolderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        MiniHolderFrame.BackgroundTransparency = 1.000
        MiniHolderFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        MiniHolderFrame.BorderSizePixel = 0
        MiniHolderFrame.Size = UDim2.new(1, 0, 0, 0)
        MiniHolderFrame.AutomaticSize = "Y"
        MiniHolderFrame.Visible = false

        MiniHolderUIList.Name = "MiniHolderUIList"
        MiniHolderUIList.Parent = MiniHolderFrame
        MiniHolderUIList.SortOrder = Enum.SortOrder.LayoutOrder

        Bind.Name = "Bind"
        Bind.Parent = HolderFrame
        Bind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Bind.BackgroundTransparency = 1.000
        Bind.BorderColor3 = Color3.fromRGB(0, 0, 0)
        Bind.BorderSizePixel = 0
        Bind.Size = UDim2.new(1, 0, 0, 15)
        Bind.Visible = false

        BindText.Name = "BindText"
        BindText.Parent = Bind
        BindText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        BindText.BackgroundTransparency = 1.000
        BindText.BorderColor3 = Color3.fromRGB(0, 0, 0)
        BindText.BorderSizePixel = 0
        BindText.Size = UDim2.new(1, 0, 1, 0)
        BindText.Font = Enum.Font.Fantasy
        BindText.Text = "Bind:"
        BindText.TextColor3 = Color3.fromRGB(10, 213, 236)
        BindText.TextSize = 11.000
        BindText.TextXAlignment = Enum.TextXAlignment.Left

        BindTextPad.Name = "BindTextPad"
        BindTextPad.Parent = BindText
        BindTextPad.PaddingLeft = UDim.new(0, 10)

        TextButton.Parent = Bind
        TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextButton.BorderSizePixel = 0
        TextButton.Position = UDim2.new(0.329024225, 0, 0, 0)
        TextButton.Size = UDim2.new(0.7, 0, 1, 0)
        TextButton.Font = Enum.Font.Fantasy
        TextButton.Text = "NONE"
        TextButton.TextColor3 = Color3.fromRGB(255, 248, 34)
        TextButton.TextSize = 11.000
        TextButton.TextXAlignment = Enum.TextXAlignment.Left

            local function Uninject()
                repeat task.wait() until not Raven.Injected
                if Array:FindFirstChild(options.Name) then
                    Array:FindFirstChild(options.Name):Destroy()
                end
                options.Callback(false)
            end
            RavenArraylist = {
            Add = function(Name)
                local TextLabel = Instance.new("TextLabel",Array)
                local UIGradient = Instance.new("UIGradient",TextLabel)
        
                TextLabel.Name = Name
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
                TextLabel.BorderSizePixel = 0
                TextLabel.Position = UDim2.new(1, 0, 0, 0)
                TextLabel.BackgroundTransparency = 1
                TextLabel.Font = Enum.Font.GothamBold
                TextLabel.TextSize = 15
                TextLabel.Text = Name.." "
                TextLabel.TextColor3 = Color3.new(255,255,255)
                local size = game:GetService("TextService"):GetTextSize(Name, TextLabel.TextSize, Enum.Font.Gotham, Vector2.new(1000000, 1000000))
                TextLabel.TextXAlignment = "Right"
                TextLabel.LayoutOrder = -size.X

                UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 139, 174)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 212, 225)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}

            end,
            Remove = function(Name)
                if Array:FindFirstChild(Name) then
                    Array:FindFirstChild(Name):Destroy()
                end
            end,
        }

            local function toggle()
                toggled = not toggled
                if toggled then
                    MainButton.TextColor3 = Color3.fromRGB(44, 128, 255)
                    RavenArraylist.Remove(options.Name)
                    RavenArraylist.Add(options.Name)
                    if ModuleNotification and options.Name ~= "GUI" then
                        shared:createnotification(tostring(options.Name .. [[ has been <font color="#00ff00">enabled</font>]]),0.5,"Module Change",0.2)
                    end
                else
                    MainButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                    RavenArraylist.Remove(options.Name)
                    if ModuleNotification and options.Name ~= "GUI" then
                        shared:createnotification(tostring(options.Name .. [[ has been <font color="#ff0000">disabled</font>]]),0.5,"Module Change",0.2)
                    end
                end
                if FixedTable[options.Name] ~= nil then
                    FixedTable[options.Name].Value = toggled
                else
                    print("Toggle Save doesn't seem to function!")
                end
                options.Callback(toggled)
            end
            MainButton.MouseButton1Click:Connect(function ()
                toggle()
            end)
            MainButton.MouseButton2Click:Connect(function ()
                MiniHolderFrame.Visible = not MiniHolderFrame.Visible
                Bind.Visible = not Bind.Visible
            end)
            function Toggle:SetState(state)
                toggled = state
                if toggled then
                    MainButton.TextColor3 = Color3.fromRGB(44, 128, 255)
                    RavenArraylist.Remove(options.Name)
                    RavenArraylist.Add(options.Name)
                else
                    MainButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                    RavenArraylist.Remove(options.Name)
                end
                task.spawn(function() options.Callback(toggled) end)
            end
            if options.StartingState then Toggle:SetState(true) end

            local listening = false
            UIS.InputBegan:Connect(function(key)
                if listening and not UIS:GetFocusedTextBox() then
                    if key.UserInputType == Enum.UserInputType.Keyboard then
                        if key.KeyCode ~= Enum.KeyCode.Escape then
                            if key.KeyCode ~= Enum.KeyCode.Backspace then
                                options.Keybind = key.KeyCode
                            else
                                options.Keybind = nil
                            end
                            FixedTable[options.Name].Keybind = options.Keybind ~= nil and options.Keybind.Name or nil
                        end
                        TextButton.Text = options.Keybind and tostring("\""..tostring(options.Keybind.Name):upper().."\"") or "NONE"
                        listening = false
                    end
                else
                    if key.KeyCode == options.Keybind and not UIS:GetFocusedTextBox() then
                        toggle()
                    end
                end
            end)
            
            TextButton.MouseButton1Click:connect(function()
                if not listening then listening = true; TextButton.Text = "..." end
            end)
        end
        function Toggle:Set(keycode)
            TextButton.Text = keycode and tostring("\""..tostring(keycode.Name):upper().."\"") or "NONE"
        end
        if options.Keybind ~= nil then
        Toggle:Set(options.Keybind)
        end
        function Toggle:ravenb4(defaults, options)
            defaults = defaults or {}
            options = options or {}
            for option, value in next, options do
                defaults[option] = value
            end
            return defaults
        end
        --[[function Toggle:CreateDropDown(options)
            options = self:ravenb4({
                Name = "DropDown",
                Title = "",
                DefaultOption = "",
                Options = {},
                Callback = function() end
            }, options)

            local DropDownToggle = Instance.new("TextButton")
            local UICorner_4 = Instance.new("UICorner")
            local UIPadding_3 = Instance.new("UIPadding")
            local UIGradient_3 = Instance.new("UIGradient")
            local UIListLayout = Instance.new("UIListLayout")
            local ScrollingFrame = Instance.new("ScrollingFrame")
            local DropDownButton = Instance.new("TextButton")
            local UICorner_5 = Instance.new("UICorner")
            local UIPadding_4 = Instance.new("UIPadding")
            local UIGradient_4 = Instance.new("UIGradient")

            if table.find(options.Options,options.DefaultOption) == nil then
                options.DefaultOption = ""
                print("alr dropdown")
            end

            if GUILoadSettings[OptionsName()] ~= nil then
                if GUILoadSettings[OptionsName()][options.Name] ~= nil then
                    options.DefaultOption = tostring(GUILoadSettings[OptionsName()][options.Name])
                    DropDownToggle.Text = options.Title.." - "..options.DefaultOption
                end
            end
            table.insert(GUISaveSettings,{[OptionsName()] = {[options.Name] = options.DefaultOption}})


            local ButtonSize =  15
            local canvassize = 0

            DropDownToggle.Name = "DropDownToggle"
            DropDownToggle.Parent = ButtonHolder
            DropDownToggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            DropDownToggle.BackgroundTransparency = 0.900
            DropDownToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
            DropDownToggle.BorderSizePixel = 0
            DropDownToggle.Position = UDim2.new(0.421666652, 0, 0.250642687, 0)
            DropDownToggle.Size = UDim2.new(1, 0, 0, ButtonSize)
            DropDownToggle.Font = Enum.Font.SourceSans
            DropDownToggle.Text = options.Title.." - "..options.DefaultOption
            DropDownToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
            DropDownToggle.TextScaled = true
            DropDownToggle.TextSize = 15.000
            DropDownToggle.TextWrapped = true
            DropDownToggle.TextXAlignment = Enum.TextXAlignment.Left
            DropDownToggle.MouseButton1Down:Connect(function ()
                ScrollingFrame.Visible = not ScrollingFrame.Visible
            end)

            UICorner_4.CornerRadius = UDim.new(0, 7)
            UICorner_4.Parent = DropDownToggle

            UIPadding_3.Parent = DropDownToggle
            UIPadding_3.PaddingLeft = UDim.new(0, 10)

            UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(240, 158, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(179, 73, 255))}
            UIGradient_3.Parent = DropDownToggle

            ScrollingFrame.Parent = ButtonHolder
            ScrollingFrame.Active = true
            ScrollingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            ScrollingFrame.BackgroundTransparency = 0.900
            ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
            ScrollingFrame.BorderSizePixel = 0
            ScrollingFrame.Size = UDim2.new(1, 0, 0, 45)
            ScrollingFrame.CanvasPosition = Vector2.new(0, 30)
            ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 60)
            ScrollingFrame.HorizontalScrollBarInset = Enum.ScrollBarInset.Always
            ScrollingFrame.Visible = false
            
            UIListLayout.Parent = ScrollingFrame
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

            DropDownButton.Name = "DropDownButton"
            DropDownButton.Parent = ScrollingFrame
            DropDownButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            DropDownButton.BackgroundTransparency = 0.900
            DropDownButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
            DropDownButton.BorderSizePixel = 0
            DropDownButton.Position = UDim2.new(0, -35, 0, 0)
            DropDownButton.Size = UDim2.new(1, 0, 0, ButtonSize)
            DropDownButton.Font = Enum.Font.SourceSans
            DropDownButton.Text = ""
            DropDownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            DropDownButton.TextScaled = true
            DropDownButton.TextSize = 14.000
            DropDownButton.TextWrapped = true
            DropDownButton.TextXAlignment = Enum.TextXAlignment.Left
            DropDownButton.Visible = false

            UICorner_5.CornerRadius = UDim.new(0, 7)
            UICorner_5.Parent = DropDownButton

            UIPadding_4.Parent = DropDownButton
            UIPadding_4.PaddingLeft = UDim.new(0, 10)

            UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(240, 158, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(179, 73, 255))}
            UIGradient_4.Parent = DropDownButton

            for i,v in pairs(options.Options) do
                canvassize = canvassize + ButtonSize
                ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, canvassize)
                local cloneitem = DropDownButton:Clone()
                cloneitem.Name = v
                cloneitem.Text = v
                cloneitem.Parent = ScrollingFrame
                cloneitem.Visible = true
                cloneitem.MouseButton1Down:Connect(function ()
                    DropDownToggle.Text = options.Title ~= "" and tostring(options.Title.." - "..v) or tostring(v)
                    ScrollingFrame.Visible = false
                    options.Callback(v)
                    FixedTable[OptionsName()][options.Name] = tostring(v)
                end)
            end
            if options.DefaultOption ~= "" then options.Callback(options.DefaultOption) end
        end]] -- Original Raven B4 doesn't have this, will see what I'll do with this!

        function Toggle:CreateInfo(text)
            local Info = Instance.new("TextLabel")
            local InfoPad = Instance.new("UIPadding")

            Info.Name = "Info"
            Info.Parent = MiniHolderFrame
            Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Info.BackgroundTransparency = 1.000
            Info.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Info.BorderSizePixel = 0
            Info.Size = UDim2.new(1, 0, 0, 15)
            Info.Font = Enum.Font.SourceSansBold
            Info.Text = text
            Info.TextColor3 = Color3.fromRGB(255, 52, 34)
            Info.TextSize = 11.000
            Info.TextWrapped = true
            Info.TextXAlignment = Enum.TextXAlignment.Left

            InfoPad.Name = "InfoPad"
            InfoPad.Parent = Info
            InfoPad.PaddingLeft = UDim.new(0, 10)
        end
        function Toggle:CreateSlider(options)
            options = self:ravenb4({
                Name = "Slider",
                Default = 0,
                Min = 0,
                Max = 100,
                Callback = function() end
            }, options)

            if GUILoadSettings[OptionsName()] ~= nil then
                if GUILoadSettings[OptionsName()][options.Name] ~= nil then
                    options.Default = GUILoadSettings[OptionsName()][options.Name]
                end
            end
            table.insert(GUISaveSettings,{[OptionsName()] = {[options.Name] = options.Default}})

            --[[if options.Default == true or options.Default == false then
                options.Default = 15
            end]]
            
            local Slider = Instance.new("Frame")
            local SliderButton = Instance.new("TextButton")
            local SliderInner = Instance.new("Frame")
            local SliderName = Instance.new("TextLabel")
            local SliderNamePad = Instance.new("UIPadding")
            local SliderValue = Instance.new("TextLabel")
            local SliderValuePad = Instance.new("UIPadding")

            local Precent
            local Mouse = game.Players.LocalPlayer:GetMouse()
            local Parent = Slider
		    local down = false
            local raven = {}


            Slider.Name = "Slider"
            Slider.Parent = MiniHolderFrame
            Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Slider.BackgroundTransparency = 1.000
            Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Slider.BorderSizePixel = 0
            Slider.Size = UDim2.new(1, 0, 0, 25)
            
            SliderButton.Name = "SliderButton"
            SliderButton.Parent = Slider
            SliderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderButton.BackgroundTransparency = 0.500
            SliderButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
            SliderButton.BorderSizePixel = 0
            SliderButton.Position = UDim2.new(0.0500000007, 0, 0.600000024, 0)
            SliderButton.Size = UDim2.new(0.899999976, 0, 0.200000003, 0)
            SliderButton.Font = Enum.Font.SourceSans
            SliderButton.Text = ""
            SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            SliderButton.TextSize = 14.000
            
            SliderInner.Name = "SliderInner"
            SliderInner.Parent = SliderButton
            SliderInner.BackgroundColor3 = Color3.fromRGB(10, 213, 236)
            SliderInner.BackgroundTransparency = 0.100
            SliderInner.BorderColor3 = Color3.fromRGB(0, 0, 0)
            SliderInner.BorderSizePixel = 0
            SliderInner.Size = UDim2.fromScale(((options.Default - options.Min) / (options.Max - options.Min)), 1)
            
            SliderName.Name = "SliderName"
            SliderName.Parent = Slider
            SliderName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderName.BackgroundTransparency = 1.000
            SliderName.BorderColor3 = Color3.fromRGB(0, 0, 0)
            SliderName.BorderSizePixel = 0
            SliderName.Size = UDim2.new(0.486000001, 0, 0, 15)
            SliderName.Font = Enum.Font.Fantasy
            SliderName.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderName.TextSize = 11.000
            SliderName.TextWrapped = true
            SliderName.TextXAlignment = Enum.TextXAlignment.Left
            SliderName.Text = options.Name
            
            SliderNamePad.Name = "SliderNamePad"
            SliderNamePad.Parent = SliderName
            SliderNamePad.PaddingLeft = UDim.new(0, 10)
            
            SliderValue.Name = "SliderValue"
            SliderValue.Parent = Slider
            SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderValue.BackgroundTransparency = 1.000
            SliderValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
            SliderValue.BorderSizePixel = 0
            SliderValue.Position = UDim2.new(0.571428537, 0, 0, 0)
            SliderValue.Size = UDim2.new(0.42900002, 0, 0, 15)
            SliderValue.Font = Enum.Font.SourceSansBold
            SliderValue.Text = options.Default
            SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderValue.TextSize = 13.000
            SliderValue.TextWrapped = true
            SliderValue.TextXAlignment = Enum.TextXAlignment.Right
            SliderValue.TextYAlignment = Enum.TextYAlignment.Top
            
            SliderValuePad.Name = "SliderValuePad"
            SliderValuePad.Parent = SliderValue
            SliderValuePad.PaddingRight = UDim.new(0, 10)

            function raven:SetValue(v)
                if v == nil then
                    task.wait()
                    Precent = math.clamp((Mouse.X-Parent.AbsolutePosition.X)/Parent.AbsoluteSize.X,0,1) -- this should work, try and see lol
                    local value = math.floor(((options.Max - options.Min) * Precent) + options.Min)
                    SliderValue.Text = tostring(value)
                    SliderInner.Size = UDim2.fromScale(Precent,1)
                else
                    SliderValue.Text = tostring(v)
                    SliderInner.Size = UDim2.fromScale(((options.Default - options.Min) / (options.Max - options.Min)), 1)
                end
                options.Callback(raven:GetValue())
                if raven:GetValue() ~= nil then
                    FixedTable[OptionsName()][options.Name] = raven:GetValue()
                end
            end
            function raven:GetValue()
                return tonumber(SliderValue.Text)
            end

            SliderButton.MouseButton1Down:connect(function ()
                down = true
                while RunService.RenderStepped:wait() and down do
                    raven:SetValue()
                end
            end)

            UIS.InputEnded:connect(function(key)
                if key.UserInputType == Enum.UserInputType.MouseButton1 then
                    down = false
                end
            end)

            options.Callback(raven:GetValue())
        end
        --[[
        function Toggle:CreateAdaptiveInput(options)
            options = self:ravenb4({
                Name = "Input",
                StartingText = "",
                Callback = function() end
            }, options)

            if GUILoadSettings[OptionsName()] ~= nil then
                if GUILoadSettings[OptionsName()][options.Name] ~= nil then
                    options.StartingText = GUILoadSettings[OptionsName()][options.Name]
                end
            end
            table.insert(GUISaveSettings,{[OptionsName()] = {[options.Name] = options.StartingText}})

            local AdaptiveInput = Instance.new("TextBox")
            local UICornerAdaptive = Instance.new("UICorner")

            AdaptiveInput.Name = "Adaptive Input"
            AdaptiveInput.Parent = ButtonHolder
            AdaptiveInput.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
            AdaptiveInput.BackgroundTransparency = 0.800
            AdaptiveInput.BorderColor3 = Color3.fromRGB(0, 0, 0)
            AdaptiveInput.BorderSizePixel = 0
            AdaptiveInput.Size = UDim2.new(1, 0, 0, 20)
            AdaptiveInput.Font = Enum.Font.SourceSans
            AdaptiveInput.Text = options.StartingText
            AdaptiveInput.TextColor3 = Color3.fromRGB(187, 110, 255)
            AdaptiveInput.TextSize = 14.000
            
            UICornerAdaptive.Name = "UICornerAdaptive"
            UICornerAdaptive.Parent = AdaptiveInput

            AdaptiveInput.FocusLost:Connect(function ()
                options.Callback(AdaptiveInput.Text)
                FixedTable[OptionsName()][options.Name] = tostring(AdaptiveInput.Text)
            end)

            if options.StartingText ~= "" then options.Callback(options.StartingText) end
        end]]

        function Toggle:CreateToggle(options)
            options = self:ravenb4({
                Name = "Toggle",
                StartingState = false,
                Callback = function() end
            }, options)
            
            if GUILoadSettings[OptionsName()] ~= nil then
                if GUILoadSettings[OptionsName()][options.Name] ~= nil then
                    options.StartingState = GUILoadSettings[OptionsName()][options.Name]
                end
            end
            table.insert(GUISaveSettings,{[OptionsName()] = {[options.Name] = options.StartingState}})

            local MiniButton = Instance.new("TextButton")
            local MiniButtonPad = Instance.new("UIPadding")
            local MiniButtonText = Instance.new("TextLabel")
            local MIniButtonTextPad = Instance.new("UIPadding")
            local toggled = options.StartingState

            
            MiniButton.Name = "MiniButton"
            MiniButton.Parent = MiniHolderFrame
            MiniButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            MiniButton.BackgroundTransparency = 1.000
            MiniButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
            MiniButton.BorderSizePixel = 0
            MiniButton.Size = UDim2.new(1, 0, 0, 20)
            MiniButton.FontFace = Font.new("rbxasset://fonts/families/Michroma.json", Enum.FontWeight.Bold)
            MiniButton.Text = "[-]"
            MiniButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            MiniButton.TextSize = 11.000
            MiniButton.TextXAlignment = Enum.TextXAlignment.Left

            MiniButtonPad.Name = "MiniButtonPad"
            MiniButtonPad.Parent = MiniButton
            MiniButtonPad.PaddingBottom = UDim.new(0, 3)
            MiniButtonPad.PaddingLeft = UDim.new(0, 10)

            MiniButtonText.Name = "MiniButtonText"
            MiniButtonText.Parent = MiniButton
            MiniButtonText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            MiniButtonText.BackgroundTransparency = 1.000
            MiniButtonText.BorderColor3 = Color3.fromRGB(255, 255, 255)
            MiniButtonText.BorderSizePixel = 0
            MiniButtonText.Size = UDim2.new(1, 0, 1, 0)
            MiniButtonText.Font = Enum.Font.Fantasy
            MiniButtonText.FontFace = Font.new("rbxasset://fonts/families/Balthazar.json", Enum.FontWeight.Bold)
            MiniButtonText.TextColor3 = Color3.fromRGB(255, 255, 255)
            MiniButtonText.TextSize = 11.000
            MiniButtonText.TextXAlignment = Enum.TextXAlignment.Left
            MiniButtonText.Text = options.Name

            MIniButtonTextPad.Name = "MIniButtonTextPad"
            MIniButtonTextPad.Parent = MiniButtonText
            MIniButtonTextPad.PaddingLeft = UDim.new(0, 18)
            MIniButtonTextPad.PaddingTop = UDim.new(0, 4)

            local function toggle()
                toggled = not toggled
                if toggled then
                    MiniButton.Text = "[+]"
                    MiniButton.TextColor3 = Color3.fromRGB(48, 184, 21)
                    MiniButtonText.TextColor3 = Color3.fromRGB(48, 184, 21)
                else
                    MiniButton.Text = "[-]"
                    MiniButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                    MiniButtonText.TextColor3 = Color3.fromRGB(255, 255, 255)
                end
                options.Callback(toggled)
                if FixedTable[OptionsName()][options.Name] ~= nil then
                    FixedTable[OptionsName()][options.Name] = toggled
                else
                    print("Mini Toggle Save doesn't seem to function!")
                end
            end
    
            MiniButton.MouseButton1Click:Connect(function ()
                toggle()
            end)

            function Toggle:SetState(state)
                toggled = state
                if toggled then
                    MiniButton.Text = "[+]"
                    MiniButton.TextColor3 = Color3.fromRGB(48, 184, 21)
                else
                    MiniButton.Text = "[-]"
                    MiniButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                end
                task.spawn(function() options.Callback(toggled) end)
            end
    
            if options.StartingState then Toggle:SetState(true) end
        end
        return Toggle
    end
    return Toggles
end
--Raven WaterMark :)
local RavenB4WaterMark = Instance.new("Frame")
local TopRaven = Instance.new("Frame")
local BottomRaven = Instance.new("Frame")
local LeftSideRaven = Instance.new("Frame")
local RightSideRaven = Instance.new("Frame")
local RavenTextB4 = Instance.new("Frame")
local B4Letter = Instance.new("TextLabel")
local RavenText = Instance.new("Frame")
local RLetter = Instance.new("TextLabel")
local ALetter = Instance.new("TextLabel")
local VLetter = Instance.new("TextLabel")
local ELetter = Instance.new("TextLabel")
local NLetter = Instance.new("TextLabel")

RavenB4WaterMark.Name = "Raven B4 WaterMark"
RavenB4WaterMark.Parent = ScreenGUIFrame
RavenB4WaterMark.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RavenB4WaterMark.BackgroundTransparency = 1.000
RavenB4WaterMark.BorderColor3 = Color3.fromRGB(0, 0, 0)
RavenB4WaterMark.BorderSizePixel = 0
RavenB4WaterMark.Position = UDim2.new(0.5, 0, 0.10, 0)
RavenB4WaterMark.Size = UDim2.new(0.025, 0, 0.2, 0)

TopRaven.Name = "TopRaven"
TopRaven.Parent = RavenB4WaterMark
TopRaven.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TopRaven.BorderColor3 = Color3.fromRGB(0, 0, 0)
TopRaven.BorderSizePixel = 0
TopRaven.Size = UDim2.new(0, 0, 0, 2)
TopRaven.Position = UDim2.new(0, 0, 0, 0)

BottomRaven.Name = "BottomRaven"
BottomRaven.Parent = RavenB4WaterMark
BottomRaven.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BottomRaven.BorderColor3 = Color3.fromRGB(0, 0, 0)
BottomRaven.BorderSizePixel = 0
BottomRaven.Position = UDim2.new(0, 0, 1, 0)
BottomRaven.Size = UDim2.new(0, 0, 0, 2)
BottomRaven.Rotation = 180

LeftSideRaven.Name = "LeftSideRaven"
LeftSideRaven.Parent = RavenB4WaterMark
LeftSideRaven.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LeftSideRaven.BorderColor3 = Color3.fromRGB(0, 0, 0)
LeftSideRaven.BorderSizePixel = 0
LeftSideRaven.Size = UDim2.new(0,2, 1, 0)
LeftSideRaven.Position = UDim2.new(-1,0,0, 0)

RightSideRaven.Name = "RightSideRaven"
RightSideRaven.Parent = RavenB4WaterMark
RightSideRaven.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RightSideRaven.BorderColor3 = Color3.fromRGB(0, 0, 0)
RightSideRaven.BorderSizePixel = 0
RightSideRaven.Position = UDim2.new(2, 0, 0, 0)
RightSideRaven.Size = UDim2.new(0, 2, 1.015, 0)

RavenTextB4.Name = "RavenTextB4"
RavenTextB4.Parent = RavenB4WaterMark
RavenTextB4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RavenTextB4.BackgroundTransparency = 1.000
RavenTextB4.BorderColor3 = Color3.fromRGB(0, 0, 0)
RavenTextB4.BorderSizePixel = 0
RavenTextB4.Position = UDim2.new(1, 0, 0.75, 0)
RavenTextB4.Size = UDim2.new(1, 0, 0.25, 0)

B4Letter.Name = "B4 Letter"
B4Letter.Parent = RavenTextB4
B4Letter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
B4Letter.BackgroundTransparency = 1.000
B4Letter.BorderColor3 = Color3.fromRGB(0, 0, 0)
B4Letter.BorderSizePixel = 0
B4Letter.Size = UDim2.new(1, 0, 1, 0)
B4Letter.Font = Enum.Font.SourceSansBold
B4Letter.Text = "B4"
B4Letter.TextColor3 = Color3.fromRGB(255,255,255)
B4Letter.TextSize = 20.000

RavenText.Name = "RavenText"
RavenText.Parent = RavenB4WaterMark
RavenText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RavenText.BackgroundTransparency = 1.000
RavenText.BorderColor3 = Color3.fromRGB(0, 0, 0)
RavenText.BorderSizePixel = 0
RavenText.Size = UDim2.new(1, 0, 1, 1)
RavenText.Position = UDim2.new(-1, 0, 0, 0)

RLetter.Name = "R Letter"
RLetter.Parent = RavenText
RLetter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RLetter.BackgroundTransparency = 1.000
RLetter.BorderColor3 = Color3.fromRGB(0, 0, 0)
RLetter.BorderSizePixel = 0
RLetter.Size = UDim2.new(1, 0, 0.150000006, 0)
RLetter.Font = Enum.Font.SourceSansBold
RLetter.Text = "r"
RLetter.TextColor3 = Color3.fromRGB(255,255,255)
RLetter.TextSize = 20.000

ALetter.Name = "A Letter"
ALetter.Parent = RavenText
ALetter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ALetter.BackgroundTransparency = 1.000
ALetter.BorderColor3 = Color3.fromRGB(0, 0, 0)
ALetter.BorderSizePixel = 0
ALetter.Position = UDim2.new(0, 0, 0.150000006, 0)
ALetter.Size = UDim2.new(1, 0, 0.150000006, 0)
ALetter.Font = Enum.Font.SourceSansBold
ALetter.Text = "a"
ALetter.TextColor3 = Color3.fromRGB(255,255,255)
ALetter.TextSize = 20

VLetter.Name = "V Letter"
VLetter.Parent = RavenText
VLetter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VLetter.BackgroundTransparency = 1.000
VLetter.BorderColor3 = Color3.fromRGB(0, 0, 0)
VLetter.BorderSizePixel = 0
VLetter.Position = UDim2.new(0, 0, 0.300000012, 0)
VLetter.Size = UDim2.new(1, 0, 0.150000006, 0)
VLetter.Font = Enum.Font.SourceSansBold
VLetter.Text = "v"
VLetter.TextColor3 = Color3.fromRGB(255,255,255)
VLetter.TextSize = 20

ELetter.Name = "E Letter"
ELetter.Parent = RavenText
ELetter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ELetter.BackgroundTransparency = 1.000
ELetter.BorderColor3 = Color3.fromRGB(0, 0, 0)
ELetter.BorderSizePixel = 0
ELetter.Position = UDim2.new(0, 0, 0.449999988, 0)
ELetter.Size = UDim2.new(1, 0, 0.150000006, 0)
ELetter.Font = Enum.Font.SourceSansBold
ELetter.Text = "e"
ELetter.TextColor3 = Color3.fromRGB(255,255,255)
ELetter.TextSize = 20.000

NLetter.Name = "N Letter"
NLetter.Parent = RavenText
NLetter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NLetter.BackgroundTransparency = 1.000
NLetter.BorderColor3 = Color3.fromRGB(0, 0, 0)
NLetter.BorderSizePixel = 0
NLetter.Position = UDim2.new(0, 0, 0.600000024, 0)
NLetter.Size = UDim2.new(1, 0, 0.150000006, 0)
NLetter.Font = Enum.Font.SourceSansBold
NLetter.Text = "n"
NLetter.TextColor3 = Color3.fromRGB(255,255,255)
NLetter.TextSize = 20.000

local function CustomTween(Part,Info,Style,Time,DelayTime)
    TweenService:Create(Part, TweenInfo.new(Time,Style,Enum.EasingDirection.Out,0,false,DelayTime), Info):Play()
end
function RainbowGradient(Parent)
    task.spawn(function ()
        local UIGradient2 = Instance.new("UIGradient")
        UIGradient2.Parent = Parent
        
        local UIStroke = Instance.new("UIStroke")
        UIStroke.Parent = Parent
        UIStroke.Thickness = 1
        repeat task.wait(0.1)
            UIGradient2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromHSV(tick()%5/5,1,0.6)), ColorSequenceKeypoint.new(1.00, Color3.fromHSV(tick()%5/6,1,0.6))}
        until false
    end)
end
RainbowGradient(B4Letter)
RainbowGradient(RLetter)
RainbowGradient(ALetter)
RainbowGradient(VLetter)
RainbowGradient(ELetter)
RainbowGradient(NLetter)
function lib:ToggleLib()
    if not ScreenGui.Enabled then
        ScreenGui.Enabled = true
        Frame.Visible = true
        Blur.Enabled = true
        ScreenGUIFrame.Size = UDim2.new(1,0,0,0)
        ScreenGUIFrame.Position = UDim2.new(0,0,1,0)
        ScreenGUIFrame:TweenPosition(UDim2.new(0,0,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
        ScreenGUIFrame:TweenSize(UDim2.new(1,0,1,0), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.2)
        CustomTween(LeftSideRaven,{Position = UDim2.new(0, 0, 0, 0)},Enum.EasingStyle.Bounce,0.5,0)
        CustomTween(RavenText,{Position = UDim2.new(0, 0, 0, 0)},Enum.EasingStyle.Bounce,0.5,0)
        CustomTween(RightSideRaven,{Position = UDim2.new(1, 0, 0, 0)},Enum.EasingStyle.Bounce,0.5,0)
        CustomTween(RavenTextB4,{Position = UDim2.new(0, 0, 0.75, 0)},Enum.EasingStyle.Bounce,0.5,0)
        CustomTween(TopRaven,{Size = UDim2.new(1, 0, 0, 2)},Enum.EasingStyle.Linear,0.25,0.5)
        CustomTween(BottomRaven,{Size = UDim2.new(1.08, 0, 0, 2)},Enum.EasingStyle.Linear,0.25,0.5)
    else
        ScreenGui.Enabled = false
        Frame.Visible = false
        Blur.Enabled = false
        ScreenGUIFrame.Size = UDim2.new(1,0,0,0)
        ScreenGUIFrame.Position = UDim2.new(0,0,1,0)
        TopRaven.Size = UDim2.new(0, 0, 0, 2)
        BottomRaven.Size = UDim2.new(0, 0, 0, 2)
        LeftSideRaven.Position = UDim2.new(-1,0,0, 0)
        RightSideRaven.Position = UDim2.new(2, 0, 0, 0)
        RavenTextB4.Position = UDim2.new(1, 0, 0.75, 0)
        RavenText.Position = UDim2.new(-1, 0, 0, 0)
    end
end
local Credits = Instance.new("TextLabel")

Credits.Name = "Credits"
Credits.Parent = ScreenGui
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.BorderColor3 = Color3.fromRGB(0, 0, 0)
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0.76, 0, 0.95, 0)
Credits.Size = UDim2.new(0, 183, 0, 24)
Credits.Font = Enum.Font.Fantasy
Credits.Text = "\"Raven B4 took me a while to make, so please support me on discord and youtube!\" - Near"
Credits.TextColor3 = Color3.fromRGB(255, 255, 255)
Credits.TextSize = 14.000
Credits.TextXAlignment = Enum.TextXAlignment.Right

RavenLogoButton.MouseButton1Click:Connect(function ()
    lib:ToggleLib()
end)
--Tabs
shared:createnotification("Press \"V\" or the Raven Icon to open the GUI!",6)

shared.RavenB4TabName1 = shared.RavenB4TabName1 or "combat" -- litteraly only made this for the ps99 version, more will come sooner or later tbh
Combat = lib:CreateWindow(shared.RavenB4TabName1,UDim2.new(0.1, 0, 0.1, 0),"15047268885")
Blatant = lib:CreateWindow("blatant",UDim2.new(0.3, 0, 0.1, 0),"15090672783")
Render = lib:CreateWindow("render",UDim2.new(0.6, 0, 0.1, 0),"15090679835")
Utility = lib:CreateWindow("utility",UDim2.new(0.8, 0, 0.1, 0),"15090688384")
Client = lib:CreateWindow("client",UDim2.new(0.45, 0, 0.4, 0),"15090649788")
GUIToggle = Client:CreateToggle({
    Name = "GUI",
    Keybind = Enum.KeyCode.V,
    Callback = function() 
        lib:ToggleLib()
    end
})
GUIToggle:CreateInfo("All GUI modules in one place!")
GUIToggle:CreateToggle({
    Name = "Arraylist",
    Callback = function(Callback) 
        Array.Visible = Callback
end})
GUIToggle:CreateToggle({
    Name = "Notification",
    StartingState = true,
    Callback = function(Callback)
        ModuleNotification = Callback
end})
if shared.WaterMark ~= nil then
    local TextLabel = Instance.new("TextLabel")
    TextLabel.Parent = ScreenGui2
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0, 0, 0, -1)
    TextLabel.Size = UDim2.new(0, 200, 0, 50)
    TextLabel.Font = Enum.Font.GothamBold
    TextLabel.Text = shared.WaterMark
    if shared.WaterMarkColor ~= nil then
        TextLabel.TextColor3 = shared.WaterMarkColor
    else
        TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
    end
    TextLabel.TextSize = 30.000
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel.Visible = false
end
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local TextChatService = game:GetService("TextChatService")
Client:CreateToggle({
    Name = "RavenB4 Tag",
    Callback = function(Callback) 
        RavenTagEnabled = Callback
            TextChatService.OnIncomingMessage = function(message)
				local properties = Instance.new("TextChatMessageProperties")
				if message.TextSource then
					local getidplayer = Players:GetPlayerByUserId(message.TextSource.UserId)
					if getidplayer and getidplayer.UserId == LocalPlayer.UserId then
                        if RavenTagEnabled then
						    properties.PrefixText = "<font color='#692B97'>[RAVEN B4 USER]</font> " .. message.PrefixText
                        else
                            properties.PrefixText = message.PrefixText
                        end
					end
				end
			return properties
		end
end})
local bedwarsids = {6872265039,6872274481,8444591321,8560631822}
local inbedwars = false
if table.find(bedwarsids,game.PlaceId) then
    inbedwars = true
end
AutoToxic = Client:CreateToggle({
    Name = "AutoToxic",
    Callback = function(Callback) 
        EnabledAutoToxic = Callback
        if EnabledAutoToxic then
            spawn(function ()
            repeat
                local KillMessage = ""
                local ExtraMessage = "Raven b4"
                local Randomized = math.random(0, 6)
    
                if Randomized == 0 then
                    KillMessage = "Sub to NearB4 ;) | " .. ExtraMessage
                end
                if Randomized == 1 then
                    KillMessage = "Me when no Y Check: | " .. ExtraMessage
                end
                if Randomized == 2 then
                    KillMessage = "Instant Ramen B4 cooking up! | " .. ExtraMessage
                end
                if Randomized == 3 then
                    KillMessage = "More Updates than Bedwars :skull: | " .. ExtraMessage
                end
                if Randomized == 4 then
                    KillMessage = "Raven B4 > P2W | " .. ExtraMessage
                end
                if Randomized == 5 then
                    KillMessage = "How to bypass Anticheat 101 | " .. ExtraMessage
                end
                if Randomized == 6 then
                    KillMessage = "6 Months, still can't fix Raven? | " .. ExtraMessage
                end
                if inbedwars then
                    RepStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(KillMessage, "All")
                else
                    TextChatService.ChatInputBarConfiguration.TargetTextChannel:SendAsync(KillMessage)
                end
                task.wait(6)
            until not EnabledAutoToxic
        end)
        end
end})
local TweenService = game:GetService("TweenService")
function IsAlive(plr)
    plr = plr or LocalPlayer
        if not plr.Character then return false end        
        if not plr.Character:FindFirstChild("Head") then return false end
        if not plr.Character:FindFirstChild("Humanoid") then return false end
        if plr.Character:FindFirstChild("Humanoid").Health < 0.11 then return false end
    return true
 end
local RavenCape = false
local DecalId = "rbxassetid://15695670048"
local function CreateCape()
    local Cape = Instance.new("Part")

    Cape.Parent = LocalPlayer.Character
    Cape.Name = "RavenCape"
    Cape.Size = Vector3.new(0.2, 0.2, 0.08)
    Cape.Material = Enum.Material.Glass
    Cape.Color = Color3.fromRGB(28, 2, 22)
    Cape.CanCollide = false

    local BlockMesh = Instance.new("BlockMesh")

    BlockMesh.Parent = Cape
    BlockMesh.Name = "BlockMesh"
    BlockMesh.Scale = Vector3.new(9, 17.5, 0.5)
    BlockMesh.VertexColor = Vector3.new(1, 1, 1)

    local Motor = Instance.new("Motor")

    Motor.Parent = Cape
    Motor.Name = "Motor"
    Motor.C0 = CFrame.new(0, 2, 0, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
    Motor.C1 = CFrame.new(0, 1, 0.449999988, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
    Motor.Part1 = LocalPlayer.Character.UpperTorso
    Motor.Part0 = Cape
    Motor.CurrentAngle = -0.16208772361278534
    Motor.DesiredAngle = -0.1002269834280014

    local Decal = Instance.new("Decal")

    Decal.Parent = Cape
    Decal.Name = "Decal"
    Decal.Face = Enum.NormalId.Back
    Decal.Texture = DecalId
end
LocalPlayer.CharacterAdded:Connect(function()
    if LocalPlayer.Character:FindFirstChild("RavenCape") then LocalPlayer.Character:FindFirstChild("RavenCape"):Destroy() end
    task.wait(0.3)
    if IsAlive(LocalPlayer) and not LocalPlayer.Character:FindFirstChild("RavenCape") and RavenCape then
        CreateCape()
    end
end)
local CapeAngle = nil
Client:CreateToggle({
    Name = "Raven Cape",
    Callback = function(Callback) 
        RavenCape = Callback
        if RavenCape and IsAlive(LocalPlayer)then
            CreateCape()
        else
            if LocalPlayer.Character:FindFirstChild("RavenCape") then LocalPlayer.Character:FindFirstChild("RavenCape"):Destroy() end
        end
        repeat task.wait(0.5)
            if IsAlive(LocalPlayer) then
                if LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 and LocalPlayer.Character:FindFirstChild("RavenCape") and CapeAngle then
                    CapeAngle = (LocalPlayer.Character.HumanoidRootPart.Velocity.magnitude < 45 and (-1 *(LocalPlayer.Character.HumanoidRootPart.Velocity.magnitude / 30)) or -1.5)
                else
                    CapeAngle = -0.2
                end
                if LocalPlayer.Character:FindFirstChild("RavenCape") then
                    TweenService:Create(LocalPlayer.Character:FindFirstChild("RavenCape"):FindFirstChild("Motor"), TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {CurrentAngle = CapeAngle}):Play()
                end
            end
        until not RavenCape
end})
Client:CreateToggle({
    Name = "Raven B4 Discord",
    Callback = function(Callback) 
        setclipboard("https://discord.gg/4SpwqN979V")
        if Callback then
            shared:createnotification("Discord link copied to Clipboard!",1)
        end
    end
})
Client:CreateToggle({
    Name = "Raven B4 Youtube",
    Callback = function(Callback) 
        setclipboard("https://discord.gg/4SpwqN979V")
        if Callback then
            shared:createnotification("Youtube link copied to Clipboard!",1)
        end
    end
})
--[[Client:CreateToggle({
    Name = "Uninject",
    Callback = function(Callback) 
        if Callback then
            Raven.Injected = false
        end
end})]] --not finished
return lib
