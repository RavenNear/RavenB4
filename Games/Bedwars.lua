--[[
██████╗  █████╗ ██╗   ██╗███████╗███╗   ██╗    ██████╗ ██╗  ██╗
██╔══██╗██╔══██╗██║   ██║██╔════╝████╗  ██║    ██╔══██╗██║  ██║
██████╔╝███████║██║   ██║█████╗  ██╔██╗ ██║    ██████╔╝███████║
██╔══██╗██╔══██║╚██╗ ██╔╝██╔══╝  ██║╚██╗██║    ██╔══██╗╚════██║
██║  ██║██║  ██║ ╚████╔╝ ███████╗██║ ╚████║    ██████╔╝     ██║
╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝  ╚══════╝╚═╝  ╚═══╝    ╚═════╝      ╚═╝
Author: Near (or nea.r)
Language: Lua
Category: Games (Bedwars)

*If you do use my code, give credits to me!*
]]

repeat task.wait() until game:IsLoaded()
local UIS = game:GetService("UserInputService")
local PCplaying = false
if UIS.KeyboardEnabled and UIS.MouseEnabled and not UIS.TouchEnabled then
    PCplaying = true
else
    PCplaying = false
end
local HttpService = game:service('HttpService')
local Lighting = game:GetService("Lighting")
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

LongjumpButton.Name = "LongjumpButton"
LongjumpButton.Parent = ScreenGui2
LongjumpButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LongjumpButton.BackgroundTransparency = 0.400
LongjumpButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
LongjumpButton.BorderSizePixel = 0
LongjumpButton.Position = UDim2.new(0.20210211, 0, 0.417482257, 0)
LongjumpButton.Size = UDim2.new(0, 50, 0, 49)
LongjumpButton.Font = Enum.Font.GothamBold
LongjumpButton.Text = "Scaffold"
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

local FlyCounter = Instance.new("Frame")
local FlyCounterInner = Instance.new("Frame")
local FlyStroke = Instance.new("UIStroke")
local FlyCounterText = Instance.new("TextLabel")
-- Fly Counter
if PCplaying then
    FlyCounter.Name = "FlyCounter"
    FlyCounter.Parent = ScreenGui2
    FlyCounter.BackgroundColor3 = Color3.fromRGB(150, 213, 236)
    FlyCounter.BackgroundTransparency = 0.700
    FlyCounter.BorderColor3 = Color3.fromRGB(0, 0, 0)
    FlyCounter.BorderSizePixel = 0
    FlyCounter.Position = UDim2.new(0.429146886, 0, 0.716593087, 0)
    FlyCounter.Size = UDim2.new(0.16667591, 0, 0.024887735, 0)
    FlyCounter.Visible = false

    FlyCounterInner.Name = "FlyCounterInner"
    FlyCounterInner.Parent = FlyCounter
    FlyCounterInner.BackgroundColor3 = Color3.fromRGB(10, 213, 236)
    FlyCounterInner.BorderColor3 = Color3.fromRGB(0, 0, 0)
    FlyCounterInner.BorderSizePixel = 0
    FlyCounterInner.Position = UDim2.new(-0.00188207824, 0, 0, 0)
    FlyCounterInner.Size = UDim2.new(0.856437743, 0, 1, 0)

    FlyCounterText.Name = "FlyCounterText"
    FlyCounterText.Parent = FlyCounter
    FlyCounterText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    FlyCounterText.BackgroundTransparency = 1.000
    FlyCounterText.BorderColor3 = Color3.fromRGB(0, 0, 0)
    FlyCounterText.BorderSizePixel = 0
    FlyCounterText.Position = UDim2.new(0, 0, -1.19083965, 0)
    FlyCounterText.Size = UDim2.new(1, 0, 1.19084013, 0)
    FlyCounterText.Font = Enum.Font.GothamBold
    FlyCounterText.Text = "2.5s"
    FlyCounterText.TextColor3 = Color3.fromRGB(255, 255, 255)
    FlyCounterText.TextSize = 25.000
    FlyCounterText.TextWrapped = true
else
    FlyCounter.Name = "FlyCounter"
    FlyCounter.Parent = ScreenGui2
    FlyCounter.BackgroundColor3 = Color3.fromRGB(150, 213, 236)
    FlyCounter.BackgroundTransparency = 0.700
    FlyCounter.BorderColor3 = Color3.fromRGB(0, 0, 0)
    FlyCounter.BorderSizePixel = 0
    FlyCounter.Position = UDim2.new(0.433879852, 0, 0.616842389, 0)
    FlyCounter.Size = UDim2.new(0.144879505, 0, 0.0261346232, 0)
    FlyCounter.Visible = false

    FlyCounterInner.Name = "FlyCounterInner"
    FlyCounterInner.Parent = FlyCounter
    FlyCounterInner.BackgroundColor3 = Color3.fromRGB(10, 213, 236)
    FlyCounterInner.BorderColor3 = Color3.fromRGB(0, 0, 0)
    FlyCounterInner.BorderSizePixel = 0
    FlyCounterInner.Position = UDim2.new(-0.00188207824, 0, 0, 0)
    FlyCounterInner.Size = UDim2.new(1, 0, 1, 0)


    FlyCounterText.Name = "FlyCounterText"
    FlyCounterText.Parent = FlyCounter
    FlyCounterText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    FlyCounterText.BackgroundTransparency = 1.000
    FlyCounterText.BorderColor3 = Color3.fromRGB(0, 0, 0)
    FlyCounterText.BorderSizePixel = 0
    FlyCounterText.Position = UDim2.new(0, 0, -1.19083965, 0)
    FlyCounterText.Size = UDim2.new(1, 0, 1.19084013, 0)
    FlyCounterText.Font = Enum.Font.GothamBold
    FlyCounterText.Text = "2.5s"
    FlyCounterText.TextColor3 = Color3.fromRGB(255, 255, 255)
    FlyCounterText.TextSize = 20.000
    FlyCounterText.TextWrapped = true
end
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
local function dumpRemote(tab)
    for i,v in next, (tab) do
        if v == 'Client' then
            return tab[i + 1]
        end
    end
    return ''
end
--Locals
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local KnitClient = debug.getupvalue(require(LocalPlayer.PlayerScripts.TS.knit).setup, 6)
local TweenService = game:GetService("TweenService")
local Camera = game:GetService("Workspace").CurrentCamera
local RunService = game:GetService("RunService")
local RepStorage = game:GetService("ReplicatedStorage")
local collectionService = game:GetService("CollectionService")
local RavenEquippedKit = "none"
local RavenLocalHand = {}
bedwars = {
["Shop"] = require(RepStorage.TS.games.bedwars.shop['bedwars-shop']).BedwarsShop,
["FovController"] = KnitClient.Controllers.FovController,
["SoundList"] = require(RepStorage.TS.sound['game-sound']).GameSound,
["StopwatchController"] = KnitClient.Controllers.StopwatchController,
["ClientSyncEvents"] = require(LocalPlayer.PlayerScripts.TS['client-sync-events']).ClientSyncEvents,
["HighlightController"] = KnitClient.Controllers.EntityHighlightController,
["KillEffectController"] = KnitClient.Controllers.KillEffectController,
["ProjectileMeta"] = require(RepStorage.TS.projectile['projectile-meta']).ProjectileMeta,
["ClientConstructor"] = require(RepStorage['rbxts_include']['node_modules']['@rbxts'].net.out.client),
["ProjectileRemote"] = dumpRemote(debug.getconstants(debug.getupvalue(KnitClient.Controllers.ProjectileController.launchProjectileWithValues, 2))),
["BowConstantsTable"] = debug.getupvalue(KnitClient.Controllers.ProjectileController.enableBeam, 6),
["ProjectileController"] = KnitClient.Controllers.ProjectileController,
["ZephyrController"] = KnitClient.Controllers.WindWalkerController,
["AnimationUtil"] = require(RepStorage["rbxts_include"]["node_modules"]["@easy-games"]["game-core"].out["shared"].util["animation-util"]).AnimationUtil,
--["ItemTable"] = debug.getupvalue(require(RepStorage.TS.item["item-meta"]).GetItemMeta, 1),
["ScytheController"] = KnitClient.Controllers.ScytheController,
["ShopItems"] = debug.getupvalue(debug.getupvalue(require(RepStorage.TS.games.bedwars.shop["bedwars-shop"]).BedwarsShop.getShopItem, 1), 3),
["QueryUtil"] = require(RepStorage['rbxts_include']['node_modules']['@easy-games']['game-core'].out).GameQueryUtil,
["ClientHandler"] = require(RepStorage.TS.remotes).default.Client,
["ClientHandlerStore"] = require(LocalPlayer.PlayerScripts.TS.ui.store).ClientStore, 
["SwordController"] = KnitClient.Controllers.SwordController,
["BlockPlacementController"] = KnitClient.Controllers.BlockPlacementController,
["BlockController"] = require(RepStorage["rbxts_include"]["node_modules"]["@easy-games"]["block-engine"].out).BlockEngine,
["BlockCpsController"] = KnitClient.Controllers.BlockCpsController,
["KatanaController"] = KnitClient.Controllers.DaoController,
["CombatConstant"] = require(game:GetService("ReplicatedStorage").TS.combat["combat-constant"]).CombatConstant,
["CombatController"] = KnitClient.Controllers.CombatController,
["KnockbackTable"] = debug.getupvalue(require(game:GetService("ReplicatedStorage").TS.damage["knockback-util"]).KnockbackUtil.calculateKnockbackVelocity, 1),
["SprintController"] = KnitClient.Controllers.SprintController,
["DamageIndicator"] = KnitClient.Controllers.DamageIndicatorController.spawnDamageIndicator,
["KnockbackUtil"] = require(RepStorage.TS.damage["knockback-util"]).KnockbackUtil,
["ViewmodelController"] = KnitClient.Controllers.ViewmodelController,
["AnimationType"] = require(RepStorage.TS.animation["animation-type"]).AnimationType,
["GrimReaperController"] = KnitClient.Controllers.GrimReaperController,
} -- "why put it in [""]?" Looks better imo, could also remove it, doesn't matter tbh

local function RavenGameInfo(Info, Info2)
    if Info.Bedwars ~= Info2.Bedwars then
        RavenEquippedKit = Info.Bedwars.kit ~= "none" and Info.Bedwars.kit or ""
    end
    --[[if Info.Inventory ~= Info2.Inventory then
        local newInventory = (Info.Inventory and Info.Inventory.observedInventory or {inventory = {}})
        local oldInventory = (Info2.Inventory and Info2.Inventory.observedInventory or {inventory = {}})
        if newInventory.inventory.hand ~= oldInventory.inventory.hand then 
            local currentHand = Info.Inventory.observedInventory.inventory.hand
            local handType = ''
            if currentHand then
                local handData = bedwars.ItemTable[currentHand.itemType]
                handType = handData.sword and 'sword' or handData.block and 'block' or currentHand.itemType:find('bow') and 'bow'
            end
            RavenLocalHand = {tool = currentHand and currentHand.tool, Type = handType, amount = currentHand and currentHand.amount or 0}
            print(RavenLocalHand)
        end
    end]]
end
bedwars["ClientHandlerStore"].changed:connect(RavenGameInfo)
RavenGameInfo(bedwars["ClientHandlerStore"]:getState(),{})
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
local function GetClosestTeamCheck(distance)
    distance = distance or math.huge
    if not IsAlive(LocalPlayer) then return end
    local HumanoidRootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not (LocalPlayer.Character or HumanoidRootPart) then return end

    local Target

    for i,v in ipairs(Players:GetPlayers()) do
        if v ~= LocalPlayer and v.Team ~= LocalPlayer.Team and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            local TargetHRP = v.Character.HumanoidRootPart
            local mag = (HumanoidRootPart.Position - TargetHRP.Position).magnitude
            if mag < distance then
                distance = mag
                Target = v
            end
        end
    end
    return Target
end 

function GetBeds()
    local beds = {}
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if string.lower(v.Name) == "bed" and v:FindFirstChild("Blanket").BrickColor ~= nil and v:FindFirstChild("Blanket").BrickColor ~= LocalPlayer.Team.TeamColor then
            table.insert(beds,v)
        end
    end
    return beds
end
function GetClosestBeds()
    local TargetDistance = math.huge
    local Target
    local HumanoidRootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if string.lower(v.Name) == "bed" and v:FindFirstChild("Blanket") ~= nil and v:FindFirstChild("Blanket").Color ~= LocalPlayer.Team.TeamColor then
            local mag = (HumanoidRootPart.Position - v.Position).magnitude
            if mag < TargetDistance then
                TargetDistance = mag
                Target = v
            end
        end
    end
    return Target
end
local function getPlacedBlock(pos)
	local roundedPosition = bedwars["BlockController"]:getBlockPosition(pos)
	return bedwars["BlockController"]:getStore():getBlockAt(roundedPosition), roundedPosition
end
function getserverpos(Position)
    local x = math.round(Position.X/3)
    local y = math.round(Position.Y/3)
    local z = math.round(Position.Z/3)
    return Vector3.new(x,y,z)
end
function GetMatchState()
    return bedwars["ClientHandlerStore"]:getState().Game.matchState
end
function GetQueueType()
    local state = bedwars["ClientHandlerStore"]:getState()
    return state.Game.queueType or "bedwars_test"
 end

local function GetInventory(plr)
   if not plr then 
       return {items = {}, armor = {}}
   end

   local suc, ret = pcall(function() 
       return require(game:GetService("ReplicatedStorage").TS.inventory["inventory-util"]).InventoryUtil.getInventory(plr)
   end)

   if not suc then 
       return {items = {}, armor = {}}
   end
   if plr.Character and plr.Character:FindFirstChild("InventoryFolder") then 
       local invFolder = plr.Character:FindFirstChild("InventoryFolder").Value
       if not invFolder then return ret end
       for i,v in next, ret do 
           for i2, v2 in next, v do 
               if typeof(v2) == 'table' and v2.itemType then
                   v2.instance = invFolder:FindFirstChild(v2.itemType)
               end
           end
           if typeof(v) == 'table' and v.itemType then
               v.instance = invFolder:FindFirstChild(v.itemType)
           end
       end
   end

   return ret
end
local BedwarsSwords = require(game:GetService("ReplicatedStorage").TS.games.bedwars["bedwars-swords"]).BedwarsMelees
function hashFunc(vec)
    return {value = vec}
end
local function getSword()
    local highest, returning = -9e9, nil
    for i,v in next, GetInventory(LocalPlayer).items do 
        local swords = table.find(BedwarsSwords, v.itemType)
        if not swords then continue end
        if swords > highest then 
            returning = v
            highest = swords
        end
    end
    return returning
 end
--[[local BedwarsPickaxe = require(game:GetService("ReplicatedStorage").TS.games.bedwars["bedwars-pickaxes"]).BedwarsPickaxes
local function getPickaxe()
    local highest, returning = -9e9, nil
    for i,v in next, GetInventory(LocalPlayer).items do 
        local pickaxe = table.find(BedwarsPickaxe, v.itemType)
        if not pickaxe then continue end
        if pickaxe > highest then 
            returning = v
            highest = pickaxe
        end
    end
    return returning
 end]]  -- Will be used later down the line
local function GetItemNear(itemName)
	for slot, item in next, GetInventory(LocalPlayer).items do
		if item.itemType == itemName or item.itemType:find(itemName) then
			return item, slot
		end
	end
	return nil
end
local cachedNormalSides = {}
for i,v in next, (Enum.NormalId:GetEnumItems()) do if v.Name ~= 'Bottom' then table.insert(cachedNormalSides, v) end end
local function isBlockCovered(pos)
	local coveredsides = 0
	for i, v in next, (cachedNormalSides) do
		local blockpos = (pos + (Vector3.FromNormalId(v) * 3))
		local block = getPlacedBlock(blockpos)
		if block then
			coveredsides = coveredsides + 1
		end
	end
	return coveredsides == #cachedNormalSides
end
local function switchItem(tool)
	if LocalPlayer.Character.HandInvItem.Value ~= tool then
        game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.SetInvItem:InvokeServer({
			hand = tool
		})
	end
end
local function isNotHoveringOverGui()
    local mousepos = UIS:GetMouseLocation() - Vector2.new(0, 36)
    for i,v in pairs(LocalPlayer.PlayerGui:GetGuiObjectsAtPosition(mousepos.X, mousepos.Y)) do 
        if v.Active then
            return false
        end
    end
    for i,v in pairs(game:GetService("CoreGui"):GetGuiObjectsAtPosition(mousepos.X, mousepos.Y)) do 
        if v.Parent:IsA("ScreenGui") and v.Parent.Enabled then
            if v.Active then
                return false
            end
        end
    end
    return true
end
local function getWool()
	local wool = GetItemNear("wool")
	return wool and wool.itemType, wool and wool.amount
end

local blockRaycast = RaycastParams.new()
blockRaycast.FilterType = Enum.RaycastFilterType.Include
local blocks = collectionService:GetTagged('block')
blockRaycast.FilterDescendantsInstances = {blocks}
collectionService:GetInstanceAddedSignal('block'):Connect(function(block)
    table.insert(blocks, block)
    blockRaycast.FilterDescendantsInstances = {blocks}
end)
collectionService:GetInstanceRemovedSignal('block'):Connect(function(block)
    block = table.find(blocks, block)
    if block then 
        table.remove(blocks, block)
        blockRaycast.FilterDescendantsInstances = {blocks}
    end
end)

    local TargetHud = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local UIStroke = Instance.new("UIStroke")
    local TargetName = Instance.new("TextLabel")
    local TargetColor = Instance.new("TextLabel")
    local TargetHealth = Instance.new("TextLabel")
    local TargetState = Instance.new("TextLabel")
    local SliderMain = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local SliderInner = Instance.new("Frame")
    local UICorner_3 = Instance.new("UICorner")
    local UIGradient = Instance.new("UIGradient")
    local UIGradient2 = Instance.new("UIGradient")


    TargetHud.Name = "TargetHud"
    TargetHud.Parent = ScreenGui2
    TargetHud.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    TargetHud.BackgroundTransparency = 0.500
    TargetHud.BorderColor3 = Color3.fromRGB(0,0,0)
    TargetHud.BorderSizePixel = 0
    TargetHud.Position = UDim2.new(0.334834844, 0, 0.643242478, 0)
    TargetHud.Size = UDim2.new(0, 198, 0, 63)
    TargetHud.Visible = false

    UICorner.CornerRadius = UDim.new(0, 10)
    UICorner.Parent = TargetHud

    UIStroke.Thickness = 3
    UIStroke.Parent = TargetHud
    UIStroke.Color = Color3.fromRGB(255,255,255)

    UIGradient.Name = "TargetHudGradient"
    UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 139, 174)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 212, 225)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
    UIGradient.Parent = UIStroke

    TargetName.Name = "TargetName"
    TargetName.Parent = TargetHud
    TargetName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TargetName.BackgroundTransparency = 1.000
    TargetName.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TargetName.BorderSizePixel = 0
    TargetName.Position = UDim2.new(0.165, 0, 0.0799998939, 0)
    TargetName.Size = UDim2.new(0.432998955, 0, 0.449999988, 0)
    TargetName.Font = Enum.Font.Highway
    TargetName.TextColor3 = Color3.fromRGB(255, 255, 255)
    TargetName.TextSize = 25.000
    TargetName.TextWrapped = true
    TargetName.TextXAlignment = Enum.TextXAlignment.Left

    TargetColor.Name = "TargetColor"
    TargetColor.Parent = TargetHud
    TargetColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TargetColor.BackgroundTransparency = 1.000
    TargetColor.BorderColor3 = Color3.fromRGB(255, 255, 255)
    TargetColor.BorderSizePixel = 0
    TargetColor.Position = UDim2.new(0.0432427935, 0, 0.0800000802, 0)
    TargetColor.Size = UDim2.new(0.083, 0, 0.449999988, 0)
    TargetColor.FontFace = Font.new("rbxasset://fonts/families/HighwayGothic.json", Enum.FontWeight.Bold)
    TargetColor.Text = "W"
    TargetColor.TextColor3 = Color3.fromRGB(255, 255, 255)
    TargetColor.TextSize = 25.000

    TargetHealth.TextWrapped = true
    TargetHealth.Name = "TargetHealth"
    TargetHealth.Parent = TargetHud
    TargetHealth.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TargetHealth.BackgroundTransparency = 1.000
    TargetHealth.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TargetHealth.BorderSizePixel = 0
    TargetHealth.Position = UDim2.new(0.660000026, 0, 0.0799999982, 0)
    TargetHealth.Size = UDim2.new(0.193000004, 0, 0.449999988, 0)
    TargetHealth.Font = Enum.Font.Highway
    TargetHealth.Text = "100"
    TargetHealth.TextColor3 = Color3.fromRGB(77, 255, 1)
    TargetHealth.TextSize = 25.000
    TargetHealth.TextWrapped = true

    TargetState.Name = "TargetState"
    TargetState.Parent = TargetHud
    TargetState.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TargetState.BackgroundTransparency = 1.000
    TargetState.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TargetState.BorderSizePixel = 0
    TargetState.Position = UDim2.new(0.839999974, 0, 0.0799999982, 0)
    TargetState.Size = UDim2.new(0.118000001, 0, 0.449999988, 0)
    TargetState.Font = Enum.Font.Highway
    TargetState.Text = "W"
    TargetState.TextColor3 = Color3.fromRGB(34, 255, 0)
    TargetState.TextSize = 25.000
    TargetState.TextWrapped = true

    SliderMain.Name = "SliderMain"
    SliderMain.Parent = TargetHud
    SliderMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SliderMain.BackgroundTransparency = 0.700
    SliderMain.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SliderMain.BorderSizePixel = 0
    SliderMain.Position = UDim2.new(0.0500000007, 0, 0.649999976, 0)
    SliderMain.Size = UDim2.new(0.899999976, 0, 0, 12)

    UICorner_2.CornerRadius = UDim.new(0, 4)
    UICorner_2.Parent = SliderMain

    SliderInner.Name = "SliderInner"
    SliderInner.Parent = SliderMain
    SliderInner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SliderInner.BorderColor3 = Color3.fromRGB(0, 0, 0)
    SliderInner.BorderSizePixel = 0
    SliderInner.Size = UDim2.new(1,0,1,0)

    UICorner_3.CornerRadius = UDim.new(0, 4)
    UICorner_3.Parent = SliderInner

    UIGradient.Name = "SliderGradient"
    UIGradient2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 139, 174)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 212, 225)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
    UIGradient2.Parent = SliderInner


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
if game.PlaceId ~= 6872265039 then
    task.spawn(function()
        local PingController = require(LocalPlayer.PlayerScripts.TS.controllers.game.ping['ping-controller']).PingController
        oldCreatePing = PingController.createIndicator
        PingController.createIndicator = function() end
        local pingConstants = debug.getupvalue(PingController.ping, 2)
        oldCooldown = pingConstants.PING_COOLDOWN
        pingConstants.PING_COOLDOWN = math.huge

        debug.setconstant(bedwars["SwordController"].swingSwordAtMouse, 23, 'raycast')
        debug.setupvalue(bedwars["SwordController"].swingSwordAtMouse, 4, bedwars["QueryUtil"])
    end)
end

local animationdelay = tick()
local SwordAnimations = { --had to rewrite the entire killaura since roblox is bad :<
['Remade'] = {
    {CFrame = CFrame.new(0.69, -0.7, 0.6) * CFrame.Angles(math.rad(295), math.rad(55), math.rad(290)), Time = 0.05},
    {CFrame = CFrame.new(0.69, -0.71, 0.6) * CFrame.Angles(math.rad(200), math.rad(60), math.rad(1)), Time = 0.05}
},
['New'] = {
    {CFrame = CFrame.new(0.69, -1.7, 0.6) * CFrame.Angles(math.rad(295), math.rad(55), math.rad(290)), Time = 0.069},
    {CFrame = CFrame.new(0.7, -1.8, 0.65) * CFrame.Angles(math.rad(200), math.rad(60), math.rad(1)), Time = 0.069}
},
["Old"] = {
    {CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(220), math.rad(100), math.rad(100)),Time = 0.25},
    {CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), Time = 0.25}
}
}
local viewmodel = workspace.CurrentCamera:WaitForChild('Viewmodel').RightHand.RightWrist
local viewmodelcopy = viewmodel.C0
local oldviewmodel = viewmodel.C0
local Anim = nil
local animcompleted = true
local KillauraViewAngle = 360
local KillauraWallCheck = false
local CustomAnimation = 'Remade'
local KillauraRange = 20
local AttackMobdsEnabled = true
local function ClosestEntity(distance)
	local returnedtarget = nil
    local getclosettablemonster = {}
    local TargetDistance = math.huge
    for i, v in next, (collectionService:GetTagged('Monster')) do
        if v.PrimaryPart then
            local mag = (v.PrimaryPart.Position - LocalPlayer.character.HumanoidRootPart.Position).magnitude
            if mag <= distance then
                table.insert(getclosettablemonster,v)
            end
        end
    end
    for i, v in next, (collectionService:GetTagged('DiamondGuardian')) do
        if v.PrimaryPart then
            local mag = (v.PrimaryPart.Position - LocalPlayer.character.HumanoidRootPart.Position).magnitude
            if mag <= distance then
                table.insert(getclosettablemonster,v)
            end
        end
    end
    for i,v in pairs(getclosettablemonster) do
        local MosterPOS = v.PrimaryPart.Position
        local mag = (MosterPOS - LocalPlayer.Character.HumanoidRootPart.Position).magnitude
        if mag < TargetDistance then
            TargetDistance = mag
            returnedtarget = v
        end
    end
	return returnedtarget
end
function ClosetEntityPlayerCheck(entity,distance,enitycheck)
    if ((enitycheck and entity.PrimaryPart.Position or entity.Character.HumanoidRootPart.Position) - LocalPlayer.Character.HumanoidRootPart.Position).magnitude < distance then
        return true
    else
        return false
    end
end
local function rotateTo(position)
    local x = position.X
    local z = position.Z
    local hroot = LocalPlayer.character.HumanoidRootPart
    local newcf = CFrame.lookAt(hroot.Position, (GetMatchState() ~= 0) and Vector3.new(x,hroot.Position.Y,z) or hroot.CFrame)
    if newcf == newcf then
        hroot.CFrame = newcf
    end
end
local root = nil
local function attackEntityAsync(plr, sword, swordname,entity)
    if not entity and not IsAlive(plr) then
         return
    end
    root = entity and plr.PrimaryPart or plr.Character.HumanoidRootPart
    local selfroot = LocalPlayer.character.HumanoidRootPart
    if KillauraViewAngle <= 360 then
        local localfacing = LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector
        local vec = ((root.Position) - (LocalPlayer.Character.HumanoidRootPart.Position)).unit
        local angle = math.acos(localfacing:Dot(vec))
        if angle >= (math.rad(KillauraViewAngle) / 2) then
            return
        end
    end 
    if KillauraWallCheck and not entity then
        if not bedwars["SwordController"]:canSee({player = plr, getInstance = function() return (entity and plr or plr.Character) end}) then
            return
        end
    end
    if animationdelay <= tick() then
        if CustomAnimation == 'Normal' then 
            animationdelay = tick() + 0.18
            bedwars.SwordController:playSwordEffect(swordname, false)
        end
    end
    local selfpos = selfroot.Position
    local rootpos = (root.Position)
        game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.SwordHit:FireServer({
            ["chargedAttack"] = {["chargeRatio"] = 0},
            ["entityInstance"] = entity and plr or plr.Character,
            ["validate"] = {
                ["targetPosition"] = hashFunc(rootpos),
                ["selfPosition"] = hashFunc(selfpos + ((selfpos - rootpos).Magnitude > 14 and (CFrame.lookAt(selfpos, rootpos).LookVector * 4) or Vector3.new(0, 0, 0))),
            }, 
            ["weapon"] = sword.tool,
        })
end
Killaura = Combat:CreateToggle({
    Name = "Killaura",
    Callback = function(Callback) 
        EnabledKillaura = Callback
        if EnabledKillaura then
            RunLoops:BindToHeartbeat("Killaura",function ()
                if IsAlive(LocalPlayer) then
                    local plr = GetClosestTeamCheck(KillauraRange)
                    local monster = ClosestEntity(KillauraRange)
                    local sword2 = getSword()
                    if sword2 ~= nil and ((plr ~= nil and IsAlive(plr) and not plr.Character:FindFirstChildOfClass("ForceField")) or (AttackMobdsEnabled and monster ~= nil)) and (GetMatchState() ~= 0) then
                            if not ToolCheckKillaura then
                                switchItem(sword2.tool)
                            end
                            if (plr ~= nil and IsAlive(plr)) then
                                task.spawn(attackEntityAsync, plr, sword2, sword2.tool.name,false)
                                if LockinKilaura then
                                    task.spawn(rotateTo, plr.Character.HumanoidRootPart.Position)
                                end
                            elseif AttackMobdsEnabled and monster ~= nil then
                                task.spawn(attackEntityAsync, monster, sword2, sword2.tool.name, true)
                                if LockinKilaura then
                                    task.spawn(rotateTo, monster.PrimaryPart.Position)
                                end
                            end
                            task.spawn(function ()
                                if animcompleted then
                                    for i,v in next, (SwordAnimations["Remade"]) do
                                        --if CustomAnimation ~= 'None' and CustomAnimation ~= 'Normal' then
                                            if workspace.CurrentCamera.Viewmodel and viewmodel ~= nil then
                                                animcompleted = false
                                                Anim = game:GetService("TweenService"):Create(viewmodel, TweenInfo.new(v.Time), {C0 = viewmodelcopy * v.CFrame})
                                                Anim:Play()
                                                Anim.Completed:Wait()
                                                task.wait(v.Time)
                                                Anim = game:GetService("TweenService"):Create(viewmodel, TweenInfo.new(v.Time), {C0 = oldviewmodel})
                                                Anim:Play()
                                                animcompleted = true
                                            end
                                        --end
                                    end
                                end
                                if animationdelay <= tick() then
                                    animationdelay = tick() + 0.26
                                    local anim = Instance.new("Animation")
                                    anim.AnimationId = "rbxassetid://4947108314"
                                    local loader = LocalPlayer.Character:FindFirstChild("Humanoid"):FindFirstChild("Animator")
                                    loader:LoadAnimation(anim):Play()
                                end
                            end)
                        end
                    end
            end)
        else
            RunLoops:UnbindFromHeartbeat("Killaura")
        end
end})
Killaura:CreateInfo("Hits Players Around you")
--[[Killaura:CreateDropDown({
    Name = "CustomAnimations",
    Title = "Animation",
    DefaultOption = 'Remade',
    Options = {'Remade','New','Old','None','Normal'},
    Callback = function(Callback)
        CustomAnimation = Callback
end})]]
Killaura:CreateSlider({
    Name = "Range",
    Default = 16,
    Min = 0,
    Max = 21,
    Callback = function(Callback) 
        KillauraRange = Callback
    end
})
Killaura:CreateSlider({
    Name = "Animation Time",
    Default = 15,
    Min = 10,
    Max = 100,
    Callback = function(Callback) 
        KillauraTime = Callback
    end
})
Killaura:CreateSlider({
    Name = "ViewAngle",
    Default = 360,
    Min = 15,
    Max = 360,
    Callback = function(Callback) 
        KillauraViewAngle = Callback
    end
})
Killaura:CreateToggle({
    Name = "Toolcheck",
    Callback = function(Callback) 
        ToolcheckKillaura = Callback
    end
})
Killaura:CreateToggle({
    Name = "Locked View",
    Callback = function(Callback) 
        LockinKilaura = Callback
    end
})
Killaura:CreateToggle({
    Name = "WallCheck",
    Callback = function(Callback) 
        KillauraWallCheck = Callback
    end
})
Killaura:CreateToggle({
    Name = "Attack Mobs",
    StartingState = true,
    Callback = function(Callback) 
        AttackMobdsEnabled = Callback
    end
})
TargetHudModule = Client:CreateToggle({
    Name = "Target Hud",
    Callback = function(Callback) 
        TargetHudEnabled = Callback
        if TargetHudEnabled then
            repeat task.wait()
            if GetMatchState() == 1 then
            GetClosestPlayer = GetClosest()
            if GetClosestPlayer ~= nil and GetClosestPlayer.Team ~= LocalPlayer.Team and IsAlive(GetClosestPlayer) and IsAlive(LocalPlayer) and not GetClosestPlayer.Character:FindFirstChildOfClass("ForceField") then
                local Magnitude = (GetClosestPlayer.Character:FindFirstChild("HumanoidRootPart").Position - LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude
                if Magnitude < TargetHudRange then
                        TargetHud.Visible = true
                        TargetName.Text = GetClosestPlayer.Name
                        TargetName.TextColor3 = GetClosestPlayer.TeamColor.Color
                        TargetState.Text = GetClosestPlayer.Character.Humanoid.Health <= LocalPlayer.Character.Humanoid.Health and "W" or "L"
                        TargetState.TextColor3 = GetClosestPlayer.Character.Humanoid.Health <= LocalPlayer.Character.Humanoid.Health and Color3.fromRGB(34, 255, 0) or Color3.fromRGB(255, 5, 22)
                        TargetColor.TextColor3 = GetClosestPlayer.TeamColor.Color 
                        TargetColor.Text = GetClosestPlayer.Team ~= nil and GetClosestPlayer.Team.Name ~= nil and tostring(string.sub(tostring(GetClosestPlayer.Team.Name),1,1)) or ""
                        TargetHealth.Text = tostring(math.round(GetClosestPlayer.Character.Humanoid.Health))
                        if GetClosestPlayer.Character.Humanoid.Health >= 90 then
                            TargetHealth.TextColor3 = Color3.fromRGB(34, 255, 0)
                        elseif GetClosestPlayer.Character.Humanoid.Health >= 50 then
                            TargetHealth.TextColor3 = Color3.fromRGB(255, 125, 11)
                        else
                            TargetHealth.TextColor3 = Color3.fromRGB(255, 5, 22)
                        end
                        game:GetService("TweenService"):Create(SliderInner, TweenInfo.new(0.3,Enum.EasingStyle.Back,Enum.EasingDirection.Out),{Size = UDim2.fromScale((GetClosestPlayer.Character.Humanoid.Health / GetClosestPlayer.Character.Humanoid.MaxHealth),1)}):Play()
                    else
                    TargetHud.Visible = false
                    end
                else
                    TargetHud.Visible = false
                end
            else
                TargetHud.Visible = false --so many checks since it breaks so many times
            end
        until not TargetHudEnabled
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
local AimbotSpeed = 1
local AimbotMouseDown = false
local AimbotClickHold = false
local AimbotRange = 30
local AimbotMag = 30
AimBot = Combat:CreateToggle({
    Name = "Aimbot",
    Callback = function(Callback) 
    AimBotEnabled = Callback
    if AimBotEnabled then 
        spawn(function ()
            UIS.InputBegan:Connect(function(input, gameProcessed)
                if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and not UIS:GetFocusedTextBox() then
                    AimbotMouseDown = true
                end
            end)
            UIS.InputEnded:Connect(function(input)
                if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and not UIS:GetFocusedTextBox() then
                    AimbotMouseDown = false
                end
            end)
        end)
        repeat task.wait()
            if not AimbotClickHold or (AimbotClickHold and AimbotMouseDown) then
                AimBotPlayer = GetClosestTeamCheck()
                if AimBotPlayer ~= nil then
                    if (AimBotPlayer.Character:FindFirstChild("HumanoidRootPart").Position - LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < AimbotRange then
                        Camera.CFrame = Camera.CFrame:lerp(CFrame.new(Camera.CFrame.p, AimBotPlayer.Character.HumanoidRootPart.Position), ((1 / AimbotSpeed)))
                    end
                end
            end
        until not AimBotEnabled
    end
end})
AimBot:CreateInfo("Aims at other Players")
AimBot:CreateToggle({
    Name = "ClickHold",
    StartingState = true,
    Callback = function(Callback) 
        AimbotClickHold = Callback
    end
})
AimBot:CreateSlider({
    Name = "Range",
    Default = 16,
    Min = 0,
    Max = 18,
    Callback = function(Callback) 
        AimbotRange = Callback
    end
})
AimBot:CreateSlider({
    Name = "Speed",
    Default = 5,
    Min = 0,
    Max = 50,
    Callback = function(Callback) 
        AimbotSpeed = Callback
    end
})
local autoclickermousedown = false
local AutoClickerCPS = 1
local firstClick = tick() + 0.1
Autoclicker = Combat:CreateToggle({
    Name = "AutoClicker",
    Callback = function(Callback) 
        AutoClicker = Callback
        if AutoClicker then
            spawn(function ()
                UIS.InputBegan:Connect(function(input, gameProcessed)
                    if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and not UIS:GetFocusedTextBox() then
                        autoclickermousedown = true
                    end
                end)
                UIS.InputEnded:Connect(function(input)
                    if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and not UIS:GetFocusedTextBox() then
                        autoclickermousedown = false
                    end
                end) 
            end)
            repeat task.wait(1 / AutoClickerCPS)
                if IsAlive(LocalPlayer) then
                        if ((bedwars["KatanaController"] == nil and true) or bedwars["KatanaController"].chargingMaid == nil) and isNotHoveringOverGui() and AutoClicker and autoclickermousedown then
                            if firstClick <= tick() then
                                bedwars["SwordController"]:swingSwordAtMouse(1)
                            else
                                firstClick = tick()
                            end
                        end
                        if Autoclicker and AutoClickerBlocks and autoclickermousedown and bedwars["BlockPlacementController"].blockPlacer and firstClick <= tick() then
                            if (workspace:GetServerTimeNow() - bedwars["BlockCpsController"].lastPlaceTimestamp) > (1 / 24) then
                                local mouseinfo = bedwars["BlockPlacementController"].blockPlacer.clientManager:getBlockSelector():getMouseInfo(0)
                                if mouseinfo then
                                    if mouseinfo.placementPosition == mouseinfo.placementPosition then
                                        bedwars["BlockPlacementController"].blockPlacer:placeBlock(mouseinfo.placementPosition)
                                    end
                                end
                            end
                        end
                    end
                until not AutoClicker
    end 
end})
Autoclicker:CreateInfo("Makes you click faster!")
Autoclicker:CreateSlider({
    Name = "CPS",
    Min = 1,
    Default = 16,
    Max = 40,
    Callback = function(Callback)
        AutoClickerCPS = Callback
    end
})
Autoclicker:CreateToggle({
    Name = "Blocks",
    StartingState = true,
    Callback = function(Callback) 
        AutoClickerBlocks = Callback
    end
})
local oldCalculateAim
local noveloproj = {
    'fireball',
    'telepearl'
}
local physicsUpdate = 1 / 60
local BowPrediction = false
local function Angle(v, g, d, h)
	local v2 = v * v
	local v4 = v2 * v2
	local root = -math.sqrt(v4 - g*(g*d*d + 2*h*v2))
	return math.atan((v2 + root) / (g * d))
end
local function ConvertToDirection(start, target, v, g)
	local horizontal = Vector3.new(target.X - start.X, 0, target.Z - start.Z)
	local h = target.Y - start.Y
	local d = horizontal.Magnitude
	local a = Angle(v, g, d, h)

	if a ~= a then 
		return g == 0 and (target - start).Unit * v
	end

	local vec = horizontal.Unit * v
	local rotAxis = Vector3.new(-horizontal.Z, 0, horizontal.X)
	return CFrame.fromAxisAngle(rotAxis, a) * vec
end
local function PlayerVelocityPOS2(playerPosition, vel, bulletTime)
	for i = 1, math.ceil(bulletTime / physicsUpdate) do 
        playerPosition = playerPosition + Vector3.new(0,-0.03,0)
        return playerPosition
    end
end
local function PlayerVelocityPOS(playerPosition, vel, bulletTime)
	for i = 1, math.ceil(bulletTime / physicsUpdate) do 
        if BowPrediction then
            playerPosition = playerPosition + Vector3.new(vel.X,-0.03,vel.Z)
        else
            playerPosition = playerPosition + Vector3.new(0,-0.03,0)
        end
        return playerPosition
    end
end
local function LaunchDirection(start, target, v, g)
	local horizontal = Vector3.new(target.X - start.X, 0, target.Z - start.Z)
	local h = target.Y - start.Y
	local d = horizontal.Magnitude
	local a = Angle(v, g, d, h)

	if a ~= a then 
		return g == 0 and (target - start).Unit * v
	end

	local vec = horizontal.Unit * v
	local rotAxis = Vector3.new(-horizontal.Z, 0, horizontal.X)
	return CFrame.fromAxisAngle(rotAxis, a) * vec
end
local BowRange = 5000
BowAimbot = Combat:CreateToggle({
    Name = "Bow Aimbot",
    Callback = function(Callback) 
        if Callback then
            oldCalculateAim = bedwars["ProjectileController"].calculateImportantLaunchValues
            bedwars["ProjectileController"].calculateImportantLaunchValues = function(self, projmeta, worldmeta, shootpospart, ...)
                local plr = GetClosestTeamCheck()
                if plr and ((plr.Character.HumanoidRootPart.Position).magnitude < BowRange) then
                    local startPos = self:getLaunchPosition(shootpospart)
                    if not startPos then
                        return oldCalculateAim(self, projmeta, worldmeta, shootpospart, ...)
                    end
                    if (not Callback) and projmeta.projectile:find('arrow') == nil then
                        return oldCalculateAim(self, projmeta, worldmeta, shootpospart, ...)
                    end

                    local projmetatab = projmeta:getProjectileMeta()
                    local projectilePrediction = (worldmeta and projmetatab.predictionLifetimeSec or projmetatab.lifetimeSec or 3)
                    local projectileSpeed = (projmeta.projectile:find('arrow') and 240 or projmetatab.launchVelocity or 100)
                    local gravity = (projmetatab.gravitationalAcceleration or 196.2)
                    local projectileGravity = gravity * projmeta.gravityMultiplier
                    local offsetStartPos = startPos + projmeta.fromPositionOffset

                    local shootpos = PlayerVelocityPOS(plr.Character.HumanoidRootPart.Position, plr.Character.HumanoidRootPart.Velocity, (plr.Character.HumanoidRootPart.Position - offsetStartPos).Magnitude / projectileSpeed)
                    if table.find(noveloproj, projmeta.projectile) then
                        shootpos = plr.Character.HumanoidRootPart.Position
                    end
                    
                    local newlook = CFrame.new(offsetStartPos, shootpos) * CFrame.new(Vector3.new(-bedwars["BowConstantsTable"].RelX, -bedwars["BowConstantsTable"].RelY, 0))
                    shootpos = newlook.p + (newlook.lookVector * (offsetStartPos - shootpos).magnitude)
                    local calculated = ConvertToDirection(offsetStartPos, shootpos, projectileSpeed, projectileGravity)
                    if calculated then
                        return {
                            initialVelocity = calculated,
                            positionFrom = offsetStartPos,
                            deltaT = projectilePrediction,
                            gravitationalAcceleration = projectileGravity,
                            drawDurationSeconds = 5
                        }
                    end
                end
                return oldCalculateAim(self, projmeta, worldmeta, shootpospart, ...)
            end
        else
            bedwars["ProjectileController"].calculateImportantLaunchValues = oldCalculateAim
        end
end})
BowAimbot:CreateInfo("Aimbot but for Bow!")
BowAimbot:CreateToggle({
    Name = "Prediction",
    Callback = function(Callback) 
        BowPrediction = Callback
end})
BowAimbot:CreateSlider({
    Name = "Range",
    Min = 1000,
    Default = 3000,
    Max = 5000,
    Callback = function(Callback)
        BowRange = Callback
    end
})
local oldrealremote
BowExploit = Combat:CreateToggle({
    Name = "BowExploit",
    Callback = function(Callback) 
    Something = Callback
    if Something then
        oldrealremote = bedwars["ClientConstructor"].Function.new
        bedwars["ClientConstructor"].Function.new = function(self, ind, ...)
            local res = oldrealremote(self, ind, ...)
            local oldRemote = res.instance
            if oldRemote and oldRemote.Name == bedwars["ProjectileRemote"] then 
                res.instance = {InvokeServer = function(self, shooting, proj, proj2, launchpos1, launchpos2, launchvelo, tag, tab1, ...) 
                    local plr = GetClosestTeamCheck()
                    if plr and ((plr.Character.HumanoidRootPart.Position).magnitude < BowExploitRange) then	
                        tab1.drawDurationSeconds = 3
                        tab1.shotId = game:GetService('HttpService'):GenerateGUID(false)
                        repeat
                            task.wait(0.03)
                            local offsetStartPos = plr.Character.HumanoidRootPart.CFrame.p - plr.Character.HumanoidRootPart.CFrame.lookVector
                            local pos = plr.Character.HumanoidRootPart.Position
                            local newLaunchVelo = bedwars["ProjectileMeta"][proj2].launchVelocity
                            local shootpos = PlayerVelocityPOS2(pos, plr.Character.HumanoidRootPart.Velocity, (pos - offsetStartPos).Magnitude / newLaunchVelo)
                            if table.find(noveloproj, proj2) then
                                shootpos = pos
                            end
                            local newlook = CFrame.new(offsetStartPos, shootpos) * CFrame.new(Vector3.new(-bedwars["BowConstantsTable"].RelX, -bedwars["BowConstantsTable"].RelY, -bedwars["BowConstantsTable"].RelZ))
                            shootpos = newlook.p + (newlook.lookVector * (offsetStartPos - shootpos).magnitude)
                            local calculated = LaunchDirection(offsetStartPos, shootpos, newLaunchVelo, workspace.Gravity)
                            if calculated then 
                                launchvelo = calculated
                                launchpos1 = offsetStartPos
                                launchpos2 = offsetStartPos
                            else
                                break
                            end
                            if oldRemote:InvokeServer(shooting, proj, proj2, launchpos1, launchpos2, launchvelo, tag, tab1, workspace:GetServerTimeNow() - 0.045) then break end
                        until false
                    else
                        return oldRemote:InvokeServer(shooting, proj, proj2, launchpos1, launchpos2, launchvelo, tag, tab1, ...)
                    end
                end}
            end
            return res
        end
    else
        bedwars["ClientConstructor"].Function.new = oldrealremote
        oldrealremote = nil
    end
end})
BowExploit:CreateInfo("Arrow Tp ;)")
BowExploit:CreateSlider({
    Name = "Range",
    Default = 100000,
    Min = 5000,
    Max = 100000,
    Callback = function(Callback) 
        BowExploitRange = Callback
    end
})
Reach = Combat:CreateToggle({
    Name = "Reach",
    Callback = function(Callback) 
    ReachEnabled = Callback
    if ReachEnabled then
        bedwars["CombatConstant"].RAYCAST_SWORD_CHARACTER_DISTANCE = ReachDistance
    else
        bedwars["CombatConstant"].RAYCAST_SWORD_CHARACTER_DISTANCE = 14.4
    end
    end})
Reach:CreateInfo("Gives you long arms")
Reach:CreateSlider({
    Name = "Range",
    Min = 0,
    Default = 20,
    Max = 20,
    Callback = function(Callback)
        ReachDistance = Callback + 4 --maybe this will make it hit farther?
    end
})
local oldSprintFunction
Combat:CreateToggle({
    Name = "AutoSprint",
    Callback = function(Callback) 
        EnabledSprint = Callback
        if EnabledSprint then
            oldSprintFunction = bedwars["SprintController"].stopSprinting
            bedwars["SprintController"].stopSprinting = function(...)
                local originalCall = oldSprintFunction(...)
                bedwars["SprintController"]:startSprinting()
                return originalCall
            end
            LocalPlayer.CharacterAdded:Connect(function(char)
                char:WaitForChild('Humanoid', 9e9)
                task.wait(0.5)
                bedwars.SprintController:stopSprinting()
            end)
            task.spawn(function()
                bedwars.SprintController:startSprinting()
            end)
        else
            bedwars["SprintController"].stopSprinting = oldSprintFunction
            bedwars["SprintController"]:stopSprinting()
        end
end})
local applyKnockback
Velocity = Combat:CreateToggle({
    Name = "Velocity",
    Callback = function(Callback) 
        if Callback then
            applyKnockback = bedwars["KnockbackUtil"].applyKnockback
            bedwars["KnockbackUtil"].applyKnockback = function(root, mass, dir, knockback, ...)
                knockback = knockback or {}
                if Hori == 0 and Verti == 0 then return end
                knockback.horizontal = (knockback.horizontal or 1) * (Hori / 100)
                knockback.vertical = (knockback.vertical or 1) * (Verti / 100)
                return applyKnockback(root, mass, dir, knockback, ...)
            end
		else
            bedwars["KnockbackUtil"].applyKnockback = applyKnockback
        end
end})
Velocity:CreateInfo("Gives you long arms")
Velocity:CreateSlider({
    Name = "Horizontal",
    Min = 0,
    Max = 100,
    Callback = function(Callback) 
        Hori = Callback
    end
})
Velocity:CreateSlider({
    Name = "Vertical",    
    Min = 0,
    Max = 100,
    Callback = function(Callback) 
        Verti = Callback
    end
})
Blatant:CreateToggle({
    Name = "AutoQueue",
    Callback = function(Callback) 
        AutoQueue = Callback
        if AutoQueue then
            repeat task.wait(3) until GetMatchState() == 2 or not AutoQueue
            if not AutoQueue then return end
            game:GetService("ReplicatedStorage"):FindFirstChild("events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events").joinQueue:FireServer({["queueType"] = GetQueueType()})     
        end
end})
local items = {"iron", "emerald", "diamond"}
local takeitems = function()
    local personal = game:GetService("ReplicatedStorage").Inventories:FindFirstChild(LocalPlayer.Name.."_personal")
    local inv = LocalPlayer.Character.InventoryFolder.Value
    for i, item in pairs(items) do
        if inv:FindFirstChild(item) then
            game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/SetObservedChest"):FireServer(personal)
            game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/ChestGiveItem"):InvokeServer(personal, inv[item])
            game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/SetObservedChest"):FireServer()
        end
    end
end
local GetItems = function()
    local personal = game:GetService("ReplicatedStorage").Inventories:FindFirstChild(LocalPlayer.Name.."_personal")
    for i, item in pairs(items) do
        if personal:FindFirstChild(item) then
            game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/SetObservedChest"):FireServer(personal)
            game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/ChestGetItem"):InvokeServer(personal, personal[item])
            game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/SetObservedChest"):FireServer()
        end
    end
end

local getshops = function()
    local shops = {}
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v.Name:find("item_shop") or v.Name:find("upgrade_shop") then
            table.insert(shops, v)
        end
    end
    return shops
end
local function getclosetestnearshop()
    local newshopmag = 20
    local shop = nil
    for i,v in next, (collectionService:GetTagged('BedwarsItemShop')) do
        local newshopmag2 = (v.Position - LocalPlayer.Character.HumanoidRootPart.Position).magnitude
        if newshopmag2 < newshopmag then
            newshopmag = newshopmag2
            shop = v
        end
    end
    return shop
end
local isnearshop = function()
    local shops = getshops()
    for i,v in pairs(shops) do
        local mag = (LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude
        if mag < 20 then
            return true
        end
    end
    return false
end
Blatant:CreateToggle({
    Name = "AutoBank",    
    Callback = function(Callback) 
        EnabledAutoBank = Callback        
        if EnabledAutoBank then
            repeat task.wait()
                if IsAlive(LocalPlayer) then
                    if isnearshop() then
                        GetItems()
                    else
                        takeitems()
                    end
                end
            until not EnabledAutoBank
        end
end})
local armors = {
    [1] = 'leather_chestplate',
    [2] = 'iron_chestplate',
    [3] = 'diamond_chestplate',
    [4] = 'emerald_chestplate'
}

local swords = {
    [1] = 'wood_sword',
    [2] = 'stone_sword',
    [3] = 'iron_sword',
    [4] = 'diamond_sword',
    [5] = 'emerald_sword'
}
if RavenEquippedKit ~= nil then
    if RavenEquippedKit == 'dasher' then 
        swords = {
            [1] = 'wood_dao',
            [2] = 'stone_dao',
            [3] = 'iron_dao',
            [4] = 'diamond_dao',
            [5] = 'emerald_dao'
        }
    elseif RavenEquippedKit == 'ice_queen' then 
        swords[5] = 'ice_sword'
    elseif RavenEquippedKit == 'ember' then 
        swords[5] = 'infernal_saber'
    elseif RavenEquippedKit == 'lumen' then 
        swords[5] = 'light_sword'
    end
end

local function getShopItem(itemType)
    for i,v in next, (bedwars["ShopItems"]) do 
        if v.itemType == itemType then return v end
    end
    return nil
end
local function buyremote(swordarmorname,shopid)
    if swordarmorname == nil or shopid == nil then return end
    local args = {
        [1] = {
            ["shopItem"] = {
                ["ignoredByKit"] = {},
                ["itemType"] = swordarmorname,
                ["price"] = 1,
                ["superiorItems"] = {
                    [1] = "ravenb4"
                },
                ["currency"] = "iron",
                ["amount"] = 1,
                ["lockAfterPurchase"] = true,
                ["category"] = "Combat",
                ["disabledInQueue"] = {}
            },
            ["shopId"] = shopid
        }
    }
    game:GetService("ReplicatedStorage").rbxts_include:WaitForChild("node_modules"):WaitForChild("@rbxts").net.out:WaitForChild("_NetManaged").BedwarsPurchaseItem:InvokeServer(unpack(args))
end
AutoBuy = Blatant:CreateToggle({
    Name = "Auto Buy",    
    Callback = function(Callback)
        EnabledAutoBuy = Callback 
        if EnabledAutoBuy then
            repeat task.wait()
                if IsAlive(LocalPlayer) then
                    local ravenshop = getclosetestnearshop()
                    if ravenshop ~= nil then
                        if EnabledSwordsBuy then
                            spawn(function ()
                                local sword2 = getSword()
                                for i = 5, 1, -1 do
                                    local item = getShopItem(swords[i])
                                    local currency = item ~= nil and GetItemNear(item.currency) or nil
                                    if (item ~= nil and currency ~= nil) and item.price <= currency.amount then
                                        buyremote(swords[i],ravenshop.Name)
                                        break
                                    end
                                    if sword2 ~= nil and swords[i] == sword2.tool.name then
                                        break
                                    end
                                end
                            end)
                        end
                        if EnabledArmorBuy then
                            spawn(function ()
                                for i = 1, 4, 1 do
                                    if i < 4 and GetItemNear(armors[i]) then
                                        local item = getShopItem(armors[i + 1])
                                        local currency = item ~= nil and GetItemNear(item.currency) or nil
                                        if (item ~= nil and currency ~= nil) and item.price <= currency.amount then
                                            buyremote(armors[i + 1],ravenshop.Name)
                                        end
                                    elseif i == 4 and not GetItemNear(armors[i]) then
                                        local item = getShopItem(armors[1])
                                        local currency = item ~= nil and GetItemNear(item.currency) or nil
                                        if (item ~= nil and currency ~= nil) and item.price <= currency.amount then
                                            buyremote(armors[1],ravenshop.Name)
                                        end
                                    end
                                end
                            end)
                        end
                    end
                end
            until not EnabledAutoBuy
        end
end})
AutoBuy:CreateInfo("Automaticly buys stuff for you!")
AutoBuy:CreateToggle({
    Name = "Buy Armor",
    StartingState = true,
    Callback = function(Callback)
        EnabledArmorBuy = Callback
end})
AutoBuy:CreateToggle({
    Name = "Buy Swords",
    StartingState = true,
    Callback = function(Callback)
        EnabledSwordsBuy = Callback
end})
local flyEnabled = false
local secondstimer = "2.6s"
local firsttime = tick() + 2.6
spawn(function ()
    repeat task.wait()
        if IsAlive(LocalPlayer) then
        local onground = getPlacedBlock(LocalPlayer.character.HumanoidRootPart.Position + Vector3.new(0, (LocalPlayer.character.Humanoid.HipHeight * -2) - 1, 0))
        if onground then
            firsttime = tick() + 2.6
            flyEnabled = true
        end
        secondstimer = tostring(math.round((firsttime - tick()) * 10)/10)
        if (firsttime - 0.6) < tick() then
            flyEnabled = false
        end
        if tonumber(secondstimer) <= 0 then
            secondstimer = "0" 
        end
        FlyCounterInner.Size = UDim2.fromScale((tonumber(secondstimer) / 2.6), 1)
        FlyCounterText.Text = (secondstimer .."s")
    end
    until not loop
end)
flydown = false
flyup = false
EnabledFly = false
EnabledFlyButton = false
FlyButtonEnabled = false
flyactived = false
FlyDown = false
FlyUp = false
function flyfunc()
    if (EnabledFly or (FlyButtonEnabled and EnabledFlyButton)) and IsAlive(LocalPlayer) and not flyactived then
        flyactived = true
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
                    repeat task.wait()
                        if FlyCounterEnabled then
                            FlyCounter.Visible = true
                        else
                            FlyCounter.Visible = false
                        end
                        if not ((EnabledFly or (FlyButtonEnabled and EnabledFlyButton)) and IsAlive(LocalPlayer)) then
                            flyactived = false
                        end 
                        if FlyongroundEnabled and not flyEnabled then
                            local ray = workspace:Raycast(LocalPlayer.character.HumanoidRootPart.Position, Vector3.new(0, -1000, 0), blockRaycast)
                            if ray then 
                                Flytppos = LocalPlayer.character.HumanoidRootPart.Position.Y
                                local args = {LocalPlayer.character.HumanoidRootPart.CFrame:GetComponents()}
                                args[2] = ray.Position.Y + (LocalPlayer.character.HumanoidRootPart.Size.Y / 2) + LocalPlayer.character.Humanoid.HipHeight
                                LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(unpack(args))
                                task.wait(0.12)
                                if not (EnabledFly or (FlyButtonEnabled and EnabledFlyButton) and IsAlive(LocalPlayer)) then break end
                                if Flytppos ~= -99999 and IsAlive(LocalPlayer) then 
                                    local args = {LocalPlayer.character.HumanoidRootPart.CFrame:GetComponents()}
                                    args[2] = Flytppos
                                    LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(unpack(args))
                                end
                            end
                        end
                        velo.Velocity = Vector3.new(0,((flyup or FlyUp) and UpValue or 0)+((flydown or FlyDown) and -DownValue or 0),0)
                    until not ((EnabledFly or (FlyButtonEnabled and EnabledFlyButton)) and IsAlive(LocalPlayer))
                    if not ((EnabledFly or (FlyButtonEnabled and EnabledFlyButton)) and IsAlive(LocalPlayer)) then
                        FlyCounter.Visible = false
                            LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity"):Destroy()
                            flyup = false
                            flydown = false
                            flyactived = false
                    end
            end)
        end)
    end
end
end
Fly = Blatant:CreateToggle({
    Name = "Fly",
    Callback = function(Callback) 
        EnabledFly = Callback
        if EnabledFly then
            flyfunc()
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
    Name = "TPDown",
    StartingState = true,
    Callback = function(Callback) 
        FlyongroundEnabled = Callback
end})
Fly:CreateToggle({
    Name = "FlyButton",
    Callback = function(Callback) 
        EnabledFlyButton = Callback
        if EnabledFlyButton then
            FlyButton.Visible = true
        else
            FlyButton.Visible = false
        end
end})
hoveringUpButton2 = false
hoveringDownButton2 = false
FlyButton.MouseButton1Click:Connect(function ()
    FlyButtonEnabled = not FlyButtonEnabled
    if FlyButtonEnabled and IsAlive(LocalPlayer) then
    task.spawn(function()
        UpButton.MouseEnter:Connect(function()
            hoveringUpButton2 = true
        end)
        UpButton.MouseLeave:Connect(function()
            hoveringUpButton2 = false
        end)
        DownButton.MouseEnter:Connect(function()
            hoveringDownButton2 = true
        end)
        DownButton.MouseLeave:Connect(function()
            hoveringDownButton2 = false
        end)
        UIS.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 and hoveringUpButton2 then
                FlyUp = true
            end
            if input.UserInputType == Enum.UserInputType.MouseButton1 and hoveringDownButton2 then
                FlyDown = true
            end
        end)
        UIS.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                FlyDown = false
                FlyUp = false
            end
        end)
        end)
    flyfunc()
    end
end)

SpoofedCamera = nil
StartLevel = nil
InfFlyUp = false
InfFlyDown = false
InfFlyDown2 = false
InfFlyUp2 = false
InfFlyButtonEnabled = false
InfFlyButtonEnabled2 = false
infflyactived = false
local function flysomething() --NEVER EVER DO WHAT I DID HERE, will rewrite the mini buttons later since I have to make a seperate function for EACH button which sucks (guess I never did that)
    if ((InfFlyButtonEnabled and InfFlyButtonEnabled2) or InfFlying) and IsAlive(LocalPlayer) and not infflyactived then
        infflyactived = true
		task.spawn(function()
			UIS.InputBegan:Connect(function(Input)
				if Input.KeyCode == Enum.KeyCode.Space then
					InfFlyUp = true
				end
				if Input.KeyCode == Enum.KeyCode.LeftShift then
					InfFlyDown = true
				end
				UIS.InputEnded:Connect(function(Input)
					if Input.KeyCode == Enum.KeyCode.Space then
						InfFlyUp = false
					end
					if Input.KeyCode == Enum.KeyCode.LeftShift then
						InfFlyDown = false
					end
				end)
			end)
		end)
		StartLevel = LocalPlayer.Character.Head.Position.Y
		SpoofedCamera = Instance.new("Part", workspace)
		SpoofedCamera.Anchored = true
		SpoofedCamera.Transparency = 1
		SpoofedCamera.CFrame = LocalPlayer.Character.Head.CFrame
		SetCamera(SpoofedCamera)
		LocalPlayer.Character.PrimaryPart.CFrame += Vector3.new(0, 100000, 0)
		repeat task.wait()
			SpoofedCamera.CFrame = LocalPlayer.Character.PrimaryPart.CFrame
			SpoofedCamera.CFrame = CFrame.new(SpoofedCamera.Position.X, StartLevel+((InfFlyUp or InfFlyUp2) and 0.5 or 0)+((InfFlyDown or InfFlyDown2) and -0.5 or 0), SpoofedCamera.Position.Z)
			StartLevel = SpoofedCamera.Position.Y
		until not ((InfFlyButtonEnabled and InfFlyButtonEnabled2) or InfFlying)
        infflyactived = false
        if not ((InfFlyButtonEnabled and InfFlyButtonEnabled2) or InfFlying) then
            InfFlyButton.BackgroundColor3 = Color3.new(0,0,0)
            velo2 = Instance.new("BodyVelocity")
            velo2.MaxForce = Vector3.new(0,9e9,0)
            velo2.Parent = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            LocalPlayer.Character.PrimaryPart.CFrame = SpoofedCamera.CFrame
            velo2.Velocity = Vector3.new(0,0,0)
            SetCamera(LocalPlayer.Character)
            SpoofedCamera:Remove()
            task.wait(0.07)
            LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity"):Destroy()
        end
	end
end
Fly2 = Blatant:CreateToggle({
    Name = "Inf Fly",
    Callback = function(Callback) 
    InfFlying = Callback	
    flysomething()
end})
Fly2:CreateInfo("Makes you a better raven ;)")
Fly2:CreateSlider({
    Name = "Up",
    Default = 50,
    Min = 0,
    Max = 100,
    Callback = function(Callback) 
        UpValue = Callback
    end
})
Fly2:CreateSlider({
    Name = "Down",
    Default = 50,
    Min = 0,
    Max = 100,
    Callback = function(Callback) 
        DownValue = Callback 
    end
})
Fly2:CreateToggle({
    Name = "InfFly Button",
    Callback = function(Callback) 	
        InfFlyButtonEnabled = Callback
        if InfFlyButtonEnabled then
            InfFlyButton.Visible = true
        else
            InfFlyButton.Visible = false
        end
end})
local hoveringUpButton = false
local hoveringDownButton = false
InfFlyButton.MouseButton1Click:Connect(function ()
    InfFlyButtonEnabled2 = not InfFlyButtonEnabled2
    if InfFlyButtonEnabled2 and IsAlive(LocalPlayer) then
    InfFlyButton.BackgroundColor3 = Color3.new(0,255,0)
    task.spawn(function()
        UpButton.MouseEnter:Connect(function()
            hoveringUpButton= true
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
                InfFlyUp2 = true
            end
            if input.UserInputType == Enum.UserInputType.MouseButton1 and hoveringDownButton then
                InfFlyDown2 = true
            end
        end)
        UIS.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                InfFlyDown2 = false
                InfFlyUp2 = false
            end
        end)
        end)
        flysomething()
    else
        InfFlyButton.BackgroundColor3 = Color3.new(0,0,0)
    end
end)
local function ShootProjectile(Item, Projectile,NearestPOS)
    local Args = {
        [1] = Item,
        [2] = Projectile,
        [3] = Projectile,
        [4] = NearestPOS,
        [5] = NearestPOS,
        [6] = Vector3.new(0, -25, 0),
        [7] = HttpService:GenerateGUID(true),
        [8] = {
            ["drawDurationSeconds"] = 0.96,
            ["shotId"] = HttpService:GenerateGUID(false)
        },
        [9] = (game.Workspace:GetServerTimeNow() - 0.11)
    }
    game:GetService("ReplicatedStorage").rbxts_include.node_modules:WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out")._NetManaged.ProjectileFire:InvokeServer(unpack(Args))
end
local BowAuraRange = 500
local FireBallProjectile = false
local InfiniteRange= true
BowAura = Blatant:CreateToggle({
    Name = "BowAura",
    Callback = function(Callback) 
    EnabledBowAura = Callback
    if EnabledBowAura then
        repeat task.wait(0.1)
            local NearestPlayer = InfiniteRange and GetClosestTeamCheck(math.huge) or GetClosestTeamCheck(BowAuraRange)
            local NearestPlayerCheck = GetClosestTeamCheck(KillauraRange)
            local Monster = ClosestEntity(KillauraRange)
            if IsAlive(LocalPlayer) and IsAlive(NearestPlayer) and NearestPlayer ~= nil and NearestPlayer.Character.Humanoid.Health > 0 and not NearestPlayer.Character:FindFirstChildOfClass("ForceField") and GetMatchState() ~= 0 then
                if NearestPlayerCheck == nil and Monster == nil then
                    local bow = GetItemNear("crossbow") or GetItemNear("bow") or nil
                    local arrow = GetItemNear("arrow")
                    if bow ~= nil and arrow ~= nil then
                        switchItem(bow.tool)
                        ShootProjectile(bow.tool, arrow.tool.Name,NearestPlayer.Character.HumanoidRootPart.Position)
                    end
                end
                if OtherBowAura then
                    local Projectiles = GetItemNear("snowball") or (FireBallProjectile and GetItemNear("fireball")) or nil
                    if Projectiles ~= nil then
                        ShootProjectile(Projectiles.tool, Projectiles.tool.Name, NearestPlayer.Character.HumanoidRootPart.Position)
                    end
                end
            end
        until not EnabledBowAura
    end
end})
BowAura:CreateInfo("Killaura but for Projectiles")
BowAura:CreateSlider({
    Name = "Range",
    Default = 500,
    Min = 50,
    Max = 1500,
    Callback = function(Callback) 
        BowAuraRange = Callback
    end
})
BowAura:CreateToggle({
    Name = "Inf Range",
    StartingState = true,
    Callback = function(Callback)
    InfiniteRange = Callback
end})
BowAura:CreateToggle({
    Name = "Other Projectiles",
    StartingState = true,
    Callback = function(Callback)
    OtherBowAura = Callback
end})
BowAura:CreateToggle({
    Name = "Fireballs",
    Callback = function(Callback) 
    FireBallProjectile = Callback
end})
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
    Default = 50,
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
	        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
        end)
    else
        if CheckInfJump then
            ConnectionINFJUMP:Disconnect()
        end
    end
end})
Blatant:CreateToggle({
    Name = "LongJump",
    Callback = function(Callback)
        LongJump = Callback
        if LongJump then
            local HRootPos = LocalPlayer.Character.HumanoidRootPart.Position
            local Pos2 = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,2,0)
                if GetItemNear("tnt") then
                    game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@easy-games"):FindFirstChild("block-engine").node_modules:FindFirstChild("@rbxts").net.out._NetManaged.PlaceBlock:InvokeServer({
                        ["blockType"] = "tnt",
                        ["blockData"] = 0,
                        ["position"] = getserverpos(HRootPos)
                    })
                    task.wait(3)
                    LongJumpItem = true
                    task.wait(1.5)
                    LongJumpItem = false
                end
                if GetItemNear("fireball") then
                    local inv = LocalPlayer.Character.InventoryFolder.Value
                    game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.SetInvItem:InvokeServer({
                        ["hand"] = inv["fireball"]
                    })
                    game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.ProjectileFire:InvokeServer(
                        inv["fireball"],"fireball", "fireball",Pos2,HRootPos,Vector3.new(0, -60, 0),game:GetService("HttpService"):GenerateGUID(true), {drawDurationSeconds = 1},workspace:GetServerTimeNow() - 0.045
                    )
                    LongJumpItem = true
                    task.wait(1.5)
                    LongJumpItem = false
                end
            end
end})
Blatant:CreateToggle({
    Name = "NoFall",
    Callback = function(Callback) 
    NofallEnabled = Callback
    if NofallEnabled then
        game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.GroundHit:FireServer()
    end
end})
local RavenzephyrOrb = 0
local DmgBoostTick = tick()
local DamageBoostEnabled = true
if game.PlaceId ~= 6872265039 then
    local oldZephyrUpdate = bedwars["ZephyrController"].updateJump
    bedwars["ZephyrController"].updateJump = function(self, orb, ...)
        RavenzephyrOrb = LocalPlayer.Character and LocalPlayer.Character:GetAttribute("Health") > 0 and orb or 0
        return oldZephyrUpdate(self, orb, ...)
    end
end
task.spawn(function ()
    bedwars["ClientHandler"]:WaitFor("EntityDamageEvent"):andThen(function(v)
        v:Connect(function(plr) 
            if plr.entityInstance == LocalPlayer.Character and IsAlive(LocalPlayer) and DamageBoostEnabled then 
                task.spawn(function()					
                    DmgBoostTick = tick() + 0.9
                end) 
            end 
        end)    
    end)
end)
local function GetSpeed()
	local speed = 0
	if LocalPlayer.Character then 
		local SpeedDamageBoost = LocalPlayer.Character:GetAttribute("SpeedBoost")
		if SpeedDamageBoost and SpeedDamageBoost > 1 then 
			speed = speed + (8 * (SpeedDamageBoost - 1))
            speed = speed - 4
		end
		if LocalPlayer.Character:GetAttribute("GrimReaperChannel") then 
			speed = speed + 7
		end
		if RavenzephyrOrb ~= 0 then 
			speed = speed + 16
		end
        if LongJumpItem then --and not (ScytheDisablerEnabled and GetItemNear("scythe"))
            speed = speed + 30
        end
        if DmgBoostTick >= tick() then
            speed = speed + 22.5
        end
        --[[
        if ScytheDisablerEnabled and GetItemNear("scythe") then
			Speed = Speed + 12
        end
        if ScytheDisablerEnabled and GetItemNear("scythe") and LagbackReplacerEnabled then
            Speed = Speed + 19
        end
        if (damagetick >= tick()) and DamageBoost then
            Speed = Speed + 20
        end
        ]]
	end
	return speed
end
Speed = Blatant:CreateToggle({
    Name = "Speed",
    Callback = function(Callback) 
        EnabledSpeed = Callback
        if EnabledSpeed then
            RunLoops:BindToHeartbeat("Speed", function(delta)
                if IsAlive(LocalPlayer) then
                    local SpeedCFrame = LocalPlayer.Character.Humanoid.MoveDirection * ((GetSpeed() + NewSpeed) - 20) * delta
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
    Max = 23,
    Callback = function(Callback) 
        NewSpeed = Callback - 0.01
    end
})
Speed:CreateToggle({
    Name = "DamageBoost",
    StartingState = true,
    Callback = function(Callback)
        DamageBoostEnabled = Callback
end})
Spider = Blatant:CreateToggle({
    Name = "Spider",
    Callback = function(Callback) 
        SpiderEnabled = Callback
        if SpiderEnabled then
            RunLoops:BindToHeartbeat("Spider", function()
                    local vec = LocalPlayer.character.Humanoid.MoveDirection * 2
                    local newray = getPlacedBlock(LocalPlayer.character.HumanoidRootPart.Position + (vec + Vector3.new(0, 0.1, 0)))
                    local newray2 = getPlacedBlock(LocalPlayer.character.HumanoidRootPart.Position + (vec - Vector3.new(0, LocalPlayer.character.Humanoid.HipHeight, 0)))
                    if newray and (not newray.CanCollide) then newray = nil end 
                    if newray2 and (not newray2.CanCollide) then newray2 = nil end 
                    if SpiderActive and (not newray) and (not newray2) then
                        LocalPlayer.character.HumanoidRootPart.Velocity = Vector3.new(LocalPlayer.character.HumanoidRootPart.Velocity.X, 0, LocalPlayer.character.HumanoidRootPart.Velocity.Z)
                    end
                    SpiderActive = ((newray or newray2) and true or false)
                    if (newray or newray2) then
                        LocalPlayer.character.HumanoidRootPart.Velocity = Vector3.new(newray2 and newray == nil and LocalPlayer.character.HumanoidRootPart.Velocity.X or 0, SpiderSpeed or 50, newray2 and newray == nil and LocalPlayer.character.HumanoidRootPart.Velocity.Z or 0)
                    end
                end)
            else
            RunLoops:UnbindFromHeartbeat("Spider")
        end
end})
Spider:CreateInfo("Spiderman!")
Spider:CreateSlider({
    Name = "Speed",
    Default = 50,
    Min = 0,
    Max = 150,
    Callback = function(Callback) 
        SpiderSpeed = Callback
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
        AtmoEnabled = Callback
        if AtmoEnabled then
            Atmosphere = Instance.new("ColorCorrectionEffect")
            Atmosphere.TintColor = Color3.fromHSV(0.7,0.05,0.7)
            Atmosphere.Parent = Lighting
        else
            if Atmosphere then Atmosphere:Destroy() end
        end
end})
local oldfov
local oldfov2
FOV = Render:CreateToggle({
    Name = "FOV",
    Callback = function(Callback) 
    FOVEnabled = Callback
    if FOVEnabled then
        task.wait(1)
        if not FOVEnabled then return end
        oldfov = bedwars["FovController"].setFOV
        oldfov2 = bedwars["FovController"].getFOV
        bedwars["FovController"].setFOV = function(self, fov) return oldfov(self, FOVValue) end
        bedwars["FovController"].getFOV = function(self, fov) return FOVValue end
    else
        bedwars["FovController"].setFOV = oldfov
        bedwars["FovController"].getFOV = oldfov2
    end
    bedwars["FovController"]:setFOV(bedwars["ClientHandlerStore"]:getState().Settings.fov)
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
ViewModelChanger = Render:CreateToggle({
    Name = "ViewModelChanger",
    Callback = function(Callback) 
        ViewModelChanger = Callback
        local viewmodel = Camera:FindFirstChild("Viewmodel")
        if viewmodel and ViewModelChanger then
            bedwars.ViewmodelController:setHeldItem(LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HandInvItem") and LocalPlayer.Character.HandInvItem.Value and LocalPlayer.Character.HandInvItem.Value:Clone())
            LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_DEPTH_OFFSET", -(8 / 10))
            LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_HORIZONTAL_OFFSET", (8 / 10))
            LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_VERTICAL_OFFSET", (0 / 10))
        else
            LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_DEPTH_OFFSET", 0)
            LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_HORIZONTAL_OFFSET",0)
            LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_VERTICAL_OFFSET", 0)
        end
end})
ViewModelChanger:CreateInfo("Change the Sword Position!")
ViewModelChanger:CreateSlider({
    Name = "Foward",
    Default = 10,
    Min = 0,
    Max = 50,
    Callback = function(Callback) 
        if ViewModelChanger then
            LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_DEPTH_OFFSET", -(Callback / 10))
        end
    end
})
ViewModelChanger:CreateSlider({
    Name = "Side",
    Default = 10,
    Min = 0,
    Max = 50,
    Callback = function(Callback) 
        if ViewModelChanger then
            LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_HORIZONTAL_OFFSET", (Callback / 10))
        end
    end
})
ViewModelChanger:CreateSlider({
    Name = "Up",
    Default = 10,
    Min = 0,
    Max = 50,
    Callback = function(Callback) 
        if ViewModelChanger then
            LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_VERTICAL_OFFSET", (Callback / 10))
        end
    end
})
local round = function(...) 
    local a = {} 
    for i,v in next, table.pack(...) do 
        a[i] = math.round(v) 
    end 
    return unpack(a) 
end
local wtvp = function(...) 
    local a, b = Camera.WorldToViewportPoint(Camera, ...) 
    return Vector2.new(a.X, a.Y), b, a.Z 
end

local Esptable = {}
local function createEsp(plr)
    local drawings = {}
    
    drawings.box = Drawing.new("Square")
    drawings.box.Thickness = 1
    drawings.box.Filled = false
    drawings.box.Color = Color3.new(255,255,255)
    drawings.box.Visible = false
    drawings.box.ZIndex = 2

    Esptable[plr] = drawings
end
 
local function removeEsp(plr)
    if rawget(Esptable, plr) then
        for _, drawing in next, Esptable[plr] do
            drawing:Remove()
        end
        Esptable[plr] = nil
    end
end
 
local function updateEsp(plr, esp)
    local character = plr and plr.Character
    if character then
        local cframe = character:GetModelCFrame()
        local position, visible, depth = wtvp(cframe.Position)
        esp.box.Visible = visible
 
        if cframe and visible then
            local scaleFactor = 1 / (depth * math.tan(math.rad(Camera.FieldOfView / 2)) * 2) * 1000
            local width, height = round(4 * scaleFactor, 5 * scaleFactor)
            local x, y = round(position.X, position.Y)
 
            esp.box.Size = Vector2.new(width, height)
            esp.box.Position = Vector2.new(round(x - width / 2, y - height / 2))
            esp.box.Color = ESPTeamCheck and plr.TeamColor.Color or Color3.fromRGB(255,255,255)
        end
    else
        esp.box.Visible = false
    end
end
Players.PlayerAdded:Connect(function(player)
    if EnabledESP then
        createEsp(player)
    end
end)
Players.PlayerRemoving:Connect(function(player)
    if EnabledESP then
        removeEsp(player)
    end
end)
ESP = Render:CreateToggle({
    Name = "ESP",
    Callback = function(Callback) 
    EnabledESP = Callback
    if EnabledESP then
        for i,v in next, Players:GetPlayers() do
            if v ~= LocalPlayer then
                createEsp(v)
            end
        end
        repeat task.wait()
            for i,v in next, Esptable do
                if v and i ~= LocalPlayer then
                    updateEsp(i, v)
                end
            end
        until not EnabledESP
    else
        for i, v in next, Players:GetPlayers() do
            if v ~= LocalPlayer then
                removeEsp(v)
            end
        end
    end
end})
ESP:CreateInfo("Makes you see people through walls O-O")
ESP:CreateToggle({
    Name = "TeamCheck",
    StartingState = true,
    Callback = function(Callback) 
        ESPTeamCheck = Callback
    end
})
Render:CreateToggle({
    Name = "FPS Unlocker",
    Callback = function(Callback) 
        EnabledFPS = Callback
        if EnabledFPS then
            setfpscap((120))
        end
end})
local old2
local old
basetextures = {}
local function fpsboosttextures()
    task.spawn(function()
        repeat task.wait() until GetMatchState() ~= 0
        for i,v in next, (collectionService:GetTagged('block')) do
            if v:GetAttribute('PlacedByUserId') == 0 then
                v.Material = FPSBoostEnabled and FPSBoostTextureEnabled and Enum.Material.SmoothPlastic
                basetextures[v] = basetextures[v] or v.MaterialVariant
                v.MaterialVariant = FPSBoostEnabled and FPSBoostTextureEnabled and '' or basetextures[v]
                for i2,v2 in next, (v:GetChildren()) do 
                    pcall(function() 
                        v2.Material = FPSBoostEnabled and FPSBoostTextureEnabled and Enum.Material.SmoothPlastic
                        basetextures[v2] = basetextures[v2] or v2.MaterialVariant
                        v2.MaterialVariant = FPSBoostEnabled and FPSBoostTextureEnabled and '' or basetextures[v2]
                    end)
                end
            end
        end
    end)
end
FPSBoost = Render:CreateToggle({
    Name = "FPS Boost",
    Callback = function(Callback)
        FPSBoostEnabled = Callback
        if FPSBoostEnabled then
            fpsboosttextures()
            for i,v in next, (bedwars["KillEffectController"].killEffects) do 
                basetextures[i] = v
                bedwars["KillEffectController"].killEffects[i] = {new = function(char) return {onKill = function() end, isPlayDefaultKillEffect = function() return char == LocalPlayer.Character end} end}
            end
            old = bedwars["HighlightController"].highlight
            old2 = getmetatable(bedwars["StopwatchController"]).tweenOutGhost
            getmetatable(bedwars["StopwatchController"]).tweenOutGhost = function(p17, p18)
                p18:Destroy()
            end
            bedwars["HighlightController"].highlight = function() end
        else
            for i,v in next, (basetextures) do 
                bedwars["KillEffectController"].killEffects[i] = v
            end
            fpsboosttextures()
            debug.setupvalue(bedwars["KillEffectController"].KnitStart, 2, bedwars["ClientSyncEvents"])
            bedwars["HighlightController"].highlight = old
            getmetatable(bedwars["StopwatchController"]).tweenOutGhost = old2
            old = nil
            old2 = nil
        end
end})
FPSBoost:CreateToggle({
    Name = "Remove Textures",
    StartingState = true,
    Callback = function(Callback) 
        FPSBoostTextureEnabled = Callback
    end
})
local Messages = {"RavenB4onTop","Ez","Ramen","Devs?","Near ;)","Inf Dmg","1# Client"}
local old69
Render:CreateToggle({
    Name = "Raven Dmg Indicator ",
    Callback = function(Callback) 
        EnabledIndicator = Callback
        if EnabledIndicator then
            old69 = debug.getupvalue(bedwars["DamageIndicator"],10,{Create})
            debug.setupvalue(bedwars["DamageIndicator"],10,{
                Create = function(self,obj,...)
                    spawn(function()
                        pcall(function()
                            obj.Parent.Text = Messages[math.random(1,#Messages)]
                            obj.Parent.TextColor3 =  Color3.fromRGB(154, 55, 212)
                        end)
                    end)
                    return game:GetService("TweenService"):Create(obj,...)
                end
            })
        else
            debug.setupvalue(bedwars["DamageIndicator"],10,{
                Create = old69
            })
            old69 = nil
        end
end})
Render:CreateToggle({
    Name = "Custom Sounds",
    Callback = function(Callback) 
        CustomSounds = Callback
        if CustomSounds then
            local oldbedwarssoundtable = { --never doing this again, took me a whole fucking day just getting this shit with a shitty mobile executor
            ['QUEUE_JOIN'] = 'rbxassetid://6691735519',
            ['QUEUE_MATCH_FOUND'] = 'rbxassetid://6768247187',
            ['UI_CLICK'] = 'rbxassetid://6732690176',
            ['UI_OPEN'] = 'rbxassetid://6732607930',
            ['BEDWARS_UPGRADE_SUCCESS'] = 'rbxassetid://6760677364',
            ['BEDWARS_PURCHASE_ITEM'] = 'rbxassetid://6760677364',
            ['SWORD_SWING_1'] = 'rbxassetid://6760544639',
            ['SWORD_SWING_2'] = 'rbxassetid://6760544595',
            ['DAMAGE_1'] = 'rbxassetid://6765457325',
            ['DAMAGE_2'] = 'rbxassetid://6765470975',
            ['DAMAGE_3'] = 'rbxassetid://6765470941',
            ['PICKUP_ITEM_DROP'] = 'rbxassetid://6768578304',
            ['ARROW_HIT'] = 'rbxassetid://6866062188',
            ['ARROW_IMPACT'] = 'rbxassetid://6866062148',
            ['KILL'] = 'rbxassetid://7013482008',
            }
            for i,v in next, (bedwars["CombatController"].killSounds) do 
                bedwars["CombatController"].killSounds[i] = oldbedwarssoundtable.KILL
            end
            for i,v in next, (oldbedwarssoundtable) do 
                local item = bedwars["SoundList"][i]
                if item then
                    bedwars["SoundList"][i] = v
                end
            end
        end 
end})
local tiered = {}
local nexttier = {}
for i,v in pairs(bedwars["ShopItems"]) do
    if type(v) == "table" then
        if v.tiered then
            tiered[v.itemType] = v.tiered
        end
        if v.nextTier then
            nexttier[v.itemType] = v.nextTier
        end
    end
end
Utility:CreateToggle({
    Name = "ShoptierBypass",
    Callback = function(Callback) 
    ShoptierBypassEnabled = Callback
    if ShoptierBypassEnabled then
        for i,v in pairs(bedwars["ShopItems"]) do
            if type(v) == "table" then 
                v.tiered = nil
                v.nextTier = nil
            end
        end
    else
        for i,v in pairs(bedwars["ShopItems"]) do
            if type(v) == "table" then 
                if tiered[v.itemType] then
                    v.tiered = tiered[v.itemType]
                end
                if nexttier[v.itemType] then
                    v.nextTier = nexttier[v.itemType]
                end
            end
        end
    end
end})
AntiVoid = Utility:CreateToggle({
    Name = "AntiVoid",
    Callback = function(Callback) 
    AntiVoidEnabled = Callback
    if AntiVoidEnabled then
        lowestypos = 99999
        for i,v in pairs(game:GetService("CollectionService"):GetTagged("block")) do 
            local newray = workspace:Raycast(v.Position + Vector3.new(0, 800, 0), Vector3.new(0, -1000, 0), RaycastParams.new())
            if newray and newray.Position.Y <= lowestypos then
                lowestypos = newray.Position.Y
            end
        end
        AntiVoidPart = Instance.new("Part")
        AntiVoidPart.Size = Vector3.new(10000, 1, 10000)
        AntiVoidPart.Anchored = true
        AntiVoidPart.Material = Enum.Material.Neon
        AntiVoidPart.Parent = workspace
        AntiVoidPart.Position = Vector3.new(0, (lowestypos - 8), 0)
        AntiVoidPart.Color = Color3.fromHSV(0,100,50)
        AntiVoidPart.Transparency = 1 - (0 / 100)
        spawn(function ()
            while task.wait() do
                AntiVoidPart.Color = Color3.fromHSV(AntiVoidColor,100,50)
                AntiVoidPart.Transparency = 1 - (AntiVoidTransparency / 100)
            end
        end)
        AntiVoidConnection = AntiVoidPart.Touched:Connect(function(touchedpart)
            if touchedpart.Parent == LocalPlayer.Character and IsAlive(LocalPlayer) and LocalPlayer.Character.Humanoid.Health > 0 then
                LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(LocalPlayer.Character.HumanoidRootPart.Velocity.X, AntiVoidHeight, LocalPlayer.Character.HumanoidRootPart.Velocity.Z)
            end
        end)
    else
        if AntiVoidConnection then AntiVoidConnection:Disconnect() end
		if AntiVoidPart then AntiVoidPart:Destroy() end
    end
end})
AntiVoid:CreateInfo("Makes the void useless!")
AntiVoid:CreateSlider({
    Name = "Height",
    Default = 100,
    Min = 50,
    Max = 250,
    Callback = function(Callback) 
        AntiVoidHeight = Callback
    end
})
AntiVoid:CreateSlider({
    Name = "Color",
    Default = 89,
    Min = 0,
    Max = 100,
    Callback = function(Callback) 
        AntiVoidColor = (Callback / 100)
    end
})
AntiVoid:CreateSlider({
    Name = "Transparency",
    Default = 50,
    Min = 0,
    Max = 100,
    Callback = function(Callback) 
        AntiVoidTransparency = Callback
    end
})
function FindNearestBed()
    local nearestBed = nil
    local minDistance = math.huge
    for _,v in pairs(game.Workspace:GetDescendants()) do
        if v.Name:lower() == "bed" and v:FindFirstChild("Blanket") ~= nil and v:FindFirstChild("Blanket").BrickColor ~= LocalPlayer.Team.TeamColor then
            local distance = (v.Position - LocalPlayer.Character.HumanoidRootPart.Position).magnitude
            if distance < minDistance then
                nearestBed = v
                minDistance = distance
            end
        end
    end
    return nearestBed
end
hasTeleported = true
playertpactive = true
function TweenToNearestBed()
    if FindNearestBed() ~= nil and not hasTeleported and IsAlive(LocalPlayer) then
        hasTeleported = true

        local targetCFrame = FindNearestBed().Position + Vector3.new(0, 20, 0)
        local tween = TweenService:Create(LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0.75,Enum.EasingStyle.Sine, Enum.EasingDirection.In), {CFrame = CFrame.new(targetCFrame)})
        tween:Play()
    end
end--(targetCFrame - nowPOS).magnitude,BedTPSpeed)
function TweenToNearestPerson()
    if GetClosestTeamCheck() ~= nil and not playertpactive and IsAlive(LocalPlayer) then
        playertpactive = true

        local targetCFrame2 = GetClosestTeamCheck().Character.HumanoidRootPart.Position
        local tween = TweenService:Create(LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0.75,Enum.EasingStyle.Sine, Enum.EasingDirection.In), {CFrame = CFrame.new(targetCFrame2)})
        tween:Play()
    end
end  
local function Invisfunc()
    if IsAlive(LocalPlayer) then
        LocalPlayer.Character.LowerTorso.CollisionGroup = "Participants"
        LocalPlayer.Character.UpperTorso.CollisionGroup = "Participants"
        local Animation = Instance.new("Animation")
        Animation.AnimationId = "rbxassetid://11335949902"
        local PlayerAnimation = LocalPlayer.Character.Humanoid.Animator:LoadAnimation(Animation)
        if PlayerAnimation then
            LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 3 / -2, 0)
            LocalPlayer.Character.HumanoidRootPart.Size = Vector3.new(2, 3, 1.1)

            PlayerAnimation.Priority = Enum.AnimationPriority.Action4
            PlayerAnimation.Looped = true
            PlayerAnimation:Play()
            PlayerAnimation:AdjustSpeed(0 / 10)
        end
    end
end
LocalPlayer.CharacterAdded:Connect(function()
    wait(0.31)
    TweenToNearestPerson()
    TweenToNearestBed()
    if EnabledGodMode then
        Invisfunc()
    end
end)
BedTP = Utility:CreateToggle({
    Name = "BedTP",
    Callback = function(Callback)
        if Callback and GetMatchState() == 1 and LocalPlayer.leaderstats.Bed.Value == "✅" and IsAlive(LocalPlayer) then
            hasTeleported = false
            LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
            LocalPlayer.Character.Humanoid.Health = 0
            game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.ResetCharacter:FireServer()
    end
end})
PlayerTP = Utility:CreateToggle({
    Name = "PlayerTP",
    Callback = function(Callback)
        if Callback and GetMatchState() == 1 and LocalPlayer.leaderstats.Bed.Value == "✅" and IsAlive(LocalPlayer) then
            playertpactive = false 
            LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
            LocalPlayer.Character.Humanoid.Health = 0
            game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.ResetCharacter:FireServer()
        end
end})
RecallTP = Utility:CreateToggle({
    Name = "RecallTP [BETA]",
    Callback = function(Callback)
        RecallTpEnabled = Callback
        if RecallTpEnabled and IsAlive(LocalPlayer) then
            beddistance = math.huge
            tpbed = nil
            for i,v in pairs (GetBeds()) do
                local bedmag = (v.Position - LocalPlayer.Character.HumanoidRootPart.Position).magnitude
                if bedmag < beddistance and bedwars["BlockController"]:isBlockBreakable({blockPosition = v.Position / 3}, LocalPlayer) then
                    tpbed = v
                    beddistance = bedmag
                end
            end
            if tpbed == nil then return end
            if (tpbed.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 600 then
                tpbed = (tpbed.Position + Vector3.new(0,25,0))
            end
            game:GetService("ReplicatedStorage"):WaitForChild("events-@easy-games/game-core:shared/game-core-networking@getEvents.Events"):WaitForChild("useAbility"):FireServer("recall")
            task.wait(6.29)
            if tpbed == nil then return end
            TweenService:Create(LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0.55,Enum.EasingStyle.Sine, Enum.EasingDirection.In), {CFrame = CFrame.new(tpbed)}):Play()
        end
end})
Blatant:CreateToggle({
    Name = "Invisible",
    Callback = function(Callback) 
        EnabledGodMode = Callback
        if EnabledGodMode then
            Invisfunc()
        end
end})

AnimationDelay = tick()
BedNuker = Utility:CreateToggle({
    Name = "Bed Nuker",
    Callback = function(Callback)
        EnabledNuker = Callback
        if EnabledNuker then
           repeat task.wait()
            if IsAlive(LocalPlayer) and LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0.1 then
                local beds = GetBeds()
                for i,v in pairs(beds) do
                    local mag = (v.Position - LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude
                    if mag < BedDistance and bedwars["BlockController"]:isBlockBreakable({blockPosition = v.Position / 3}, LocalPlayer) and not v:GetAttribute("BedShieldEndTime") then
                            i = 0
                            repetloop = true
                            if not isBlockCovered(v.Position) then
                                repetloop = false
                            end
                            while repetloop do
                                if getPlacedBlock(v.Position + Vector3.new(0,i,0)) then
                                    if not isBlockCovered(v.Position + Vector3.new(0,i,0)) then
                                        repetloop = false
                                    else
                                        i = i + 1
                                    end
                                else
                                    i = i - 1
                                    repetloop = false
                                end
                            end
                            game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@easy-games"):FindFirstChild("block-engine").node_modules:FindFirstChild("@rbxts").net.out._NetManaged.DamageBlock:InvokeServer({
                                ["blockRef"] = {
                                    ["blockPosition"] = getserverpos(v.Position + Vector3.new(0,(i),0))
                                },
                                ["hitPosition"] = getserverpos(v.Position + Vector3.new(0,(i),0)),
                                ["hitNormal"] = getserverpos(v.Position + Vector3.new(0,(i),0))
                            })
                            spawn(function ()
                                if BedNukerAnimation and AnimationDelay <= tick() and not v:GetAttribute("BedShieldEndTime") then
                                    Animation = bedwars["AnimationUtil"]:playAnimation(LocalPlayer, bedwars["BlockController"]:getAnimationController():getAssetId(1))
                                    bedwars["ViewmodelController"]:playAnimation(15)
                                    AnimationDelay = tick() + 0.3
                                end
                                task.wait(0.3)
                                if Animation ~= nil then
                                    Animation:Stop()
                                    Animation:Destroy()
                                end
                            end)
                            end
                        end
                    end
                until not EnabledNuker
        end
end})
BedNuker:CreateInfo("Killaura but for Beds")
BedNuker:CreateToggle({
    Name = "Animation",
    Callback = function(Callback) 
        BedNukerAnimation = Callback
end})
BedNuker:CreateSlider({
    Name = "Range",
    Default = 20,
    Min = 0,
    Max = 30,
    Callback = function(Callback) 
        BedDistance = Callback
    end
})
ChestStealer = Utility:CreateToggle({
    Name = "ChestStealer",
    Callback = function(Callback)
        EnabledChestStealer = Callback
        if EnabledChestStealer then
            if GetQueueType():find("skywars") and GetQueueType() ~= "bedwars_test" then
                repeat task.wait()
                    if IsAlive(LocalPlayer) then
                        for i,v in pairs(game:GetService("CollectionService"):GetTagged("chest")) do
                            if (LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude < 18 and v:FindFirstChild("ChestFolderValue") then
                                local chest = v:FindFirstChild("ChestFolderValue")
                                chest = chest and chest.Value or nil
                                local chestitems = chest and chest:GetChildren() or {}
                                if #chestitems > 0 then
                                game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/SetObservedChest"):FireServer(chest)
                                    for i3, v3 in pairs(chestitems) do
                                        if v3:IsA("Accessory") then
                                            spawn(function()
                                                pcall(function()
                                                    game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/ChestGetItem"):InvokeServer(v.ChestFolderValue.Value, v3)
                                                end)
                                            end)
                                        end
                                    end
                                    game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/SetObservedChest"):FireServer(nil)
                                end
                            end
                        end
                    end
                until not EnabledChestStealer
            end
        end
end})
ChestStealer:CreateInfo("Steals items from beds")
Utility:CreateToggle({
    Name = "AutoKit",
    Callback = function(Callback) 
        AutoKitEnabled = Callback
        if AutoKitEnabled then
            repeat task.wait(0.1)
            if IsAlive(LocalPlayer) then
                infernal = GetItemNear("infernal_saber") -- not gona put a Kit Equipt check, since this is basically universal :) (with the sword ofc)
                if infernal then
                    switchItem(infernal.tool)
                    game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.HellBladeRelease:FireServer({
                        ["chargeTime"] = 0.5,
                        ["player"] = LocalPlayer,
                        ["weapon"] = infernal.tool
                    })
                end
                if RavenEquippedKit == "hannah" then
                    for i, v in pairs(game:GetService("Players"):GetChildren()) do
                        if v.Team ~= LocalPlayer.Team and IsAlive(v) and IsAlive(LocalPlayer) and not v.Character:FindFirstChildOfClass("ForceField") then
                            game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.HannahPromptTrigger:InvokeServer({
                                ["victimEntity"] = v.Character,
                                ["user"] = LocalPlayer
                            })
                        end
                    end
                elseif RavenEquippedKit == "metal_detector" then
                    local itemdrops = collectionService:GetTagged("hidden-metal")
                    for i,v in pairs(itemdrops) do
                        if IsAlive(LocalPlayer) and v.PrimaryPart and (LocalPlayer.character.HumanoidRootPart.Position - v.PrimaryPart.Position).magnitude <= 20 then
                            game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.PickupMetalRemote:InvokeServer({
                                id = v:GetAttribute("Id")
                            }) 
                        end
                    end
                elseif RavenEquippedKit == "bigman" then
                    local itemdrops = collectionService:GetTagged("treeOrb") --this
                    for i,v in pairs(itemdrops) do
                        if v:FindFirstChild("Spirit") and (LocalPlayer.character.HumanoidRootPart.Position - v.Spirit.Position).magnitude <= 20 then
                            if game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.ConsumeTreeOrb:InvokeServer({
                                treeOrbSecret = v:GetAttribute("TreeOrbSecret")
                            }) then
                                v:Destroy()
                                collectionService:RemoveTag(v, "treeOrb")
                            end
                        end
                    end
                elseif RavenEquippedKit == "grim_reaper" then
                    local itemdrops = bedwars["GrimReaperController"].soulsByPosition --this
                    for i,v in pairs(itemdrops) do
                        if IsAlive(LocalPlayer) and LocalPlayer.Character:GetAttribute("Health") <= (LocalPlayer.Character:GetAttribute("MaxHealth") / 4) and v.PrimaryPart and (LocalPlayer.character.HumanoidRootPart.Position - v.PrimaryPart.Position).magnitude <= 120 and (not LocalPlayer.Character:GetAttribute("GrimReaperChannel")) then
                            game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.ConsumeSoulRemote:InvokeServer({
                                secret = v:GetAttribute("GrimReaperSoulSecret")
                            })
                            v:Destroy()
                        end
                    end
                elseif RavenEquippedKit == "miner" then
                    if IsAlive(LocalPlayer) then
                        for i,v in pairs(collectionService:GetTagged("petrified-player")) do 
                            game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.MinerRemote:InvokeServer({
                                petrifyId = v:GetAttribute("PetrifyId")
                            })
                        end
                    end
                end
            end
        until not AutoKitEnabled
    end
end})
local alreadyscaffoleded = false
function Scaffoldfunc()
    if (ScaffoldEnabled or (ScaffoldButtonEnabled2 and ScaffoldButtonEnabled)) and not alreadyscaffoleded then
        alreadyscaffoleded = true
        RunLoops:BindToHeartbeat("Scaffold",function ()
            for i = 1,2 do
                if IsAlive(LocalPlayer) and GetItemNear("wool") then
                    UIS.InputBegan:Connect(function(input)
                        if input.UserInputType == Enum.KeyCode.Space then
                            TowerScaffold = true
                        end
                        if input.UserInputType == Enum.KeyCode.LeftControl then
                            ShiftingScaffold = true
                        end
                    end)
                    UIS.InputEnded:Connect(function(input)
                        if input.UserInputType == Enum.KeyCode.Space then
                            TowerScaffold = false
                        end
                        if input.UserInputType == Enum.KeyCode.LeftControl then
                            ShiftingScaffold = false
                        end
                    end)
                    local HumanoidScaffoldPos = (LocalPlayer.character.HumanoidRootPart.Position + ((LocalPlayer.character.Humanoid.MoveDirection) * (i * 3.5)) + Vector3.new(0, -((LocalPlayer.character.HumanoidRootPart.Size.Y / 2) + LocalPlayer.character.Humanoid.HipHeight + (ShiftingScaffold and 4.5 or 1.5)), 0))
                    HumanoidScaffoldPos = Vector3.new(HumanoidScaffoldPos.X, HumanoidScaffoldPos.Y - (TowerScaffold and 4 or 0), HumanoidScaffoldPos.Z)
                    local wool, woolamount = getWool()
                    if BuildAnimation then
                        if not getPlacedBlock(HumanoidScaffoldPos) then
                            bedwars["ViewmodelController"]:playAnimation(bedwars["AnimationType"].FP_USE_ITEM)
                        end
                    end
                    game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@easy-games"):FindFirstChild("block-engine").node_modules:FindFirstChild("@rbxts").net.out._NetManaged.PlaceBlock:InvokeServer({
                        ["blockType"] = wool,
                        ["blockData"] = 0,
                        ["position"] = getserverpos(HumanoidScaffoldPos)
                    })
                end
            end
            if not ((ScaffoldEnabled or (ScaffoldButtonEnabled2 and ScaffoldButtonEnabled)) and IsAlive(LocalPlayer)) then
                alreadyscaffoleded = false
                RunLoops:UnbindFromHeartbeat("Scaffold")
            end
        end)
    end
end
Scaffold = Utility:CreateToggle({
    Name = "Scaffold",
    Callback = function(Callback) 
        ScaffoldEnabled = Callback
        if ScaffoldEnabled then
            Scaffoldfunc()
        end
end})
Scaffold:CreateInfo("Builds a bridge for you!")
Scaffold:CreateToggle({
    Name = "Build Animation",
    StartingState = true,
    Callback = function(Callback) 
        BuildAnimation = Callback
    end
})
Scaffold:CreateToggle({
    Name = "Scaffold Button",
    Callback = function(Callback)
        ScaffoldButtonEnabled = Callback
        if ScaffoldButtonEnabled then
            LongjumpButton.Visible = true
        else
            LongjumpButton.Visible = false
        end
end})
LongjumpButton.MouseButton1Click:Connect(function()
    ScaffoldButtonEnabled2 = not ScaffoldButtonEnabled2
    if ScaffoldButtonEnabled2 then
        LongjumpButton.BackgroundColor3 = Color3.new(0,255,0)
        Scaffoldfunc()
    else
        LongjumpButton.BackgroundColor3 = Color3.new(0,0,0)
    end
end)


local setAttribute = game.SetAttribute
Utility:CreateToggle({
    Name = "NameHider",
    Callback = function(Callback) 
        NameHiderEnabled = Callback
        if NameHiderEnabled then
            if hideNametagConnection then
                hideNametagConnection:Disconnect()
            end
            hideNametagConnection = LocalPlayer.CharacterAdded:Connect(function(character)
                setAttribute(character, 'NoNametag', true)
            end)
            if LocalPlayer.Character then
                setAttribute(LocalPlayer.Character, 'NoNametag', true)
            end
        else
            if hideNametagConnection then
                hideNametagConnection:Disconnect()
                hideNametagConnection = nil
            end
            if LocalPlayer.Character then
                setAttribute(LocalPlayer.Character, 'NoNametag', false)
            end
        end
end})

Utility:CreateToggle({
    Name = "NoSlowdown",
    Callback = function(Callback) 
        if Callback then
            OldSetSpeedFunc = bedwars["SprintController"].setSpeed
            bedwars["SprintController"].setSpeed = function(v, i)
                if LocalPlayer.character.Humanoid then
                    LocalPlayer.character.Humanoid.WalkSpeed = math.max(20 * v.moveSpeedMultiplier, 20)
                end
            end
            bedwars["SprintController"]:setSpeed(20)
        else
            bedwars["SprintController"].setSpeed = OldSetSpeedFunc
            bedwars["SprintController"]:setSpeed(20)
            OldSetSpeedFunc = nil
        end
end})
repotedplayer = {}
Utility:CreateToggle({
    Name = "AutoReport",
    Callback = function(Callback) 
        AutoReport = Callback
        if AutoReport then
            for i,v in pairs(Players:GetPlayers()) do
                if v ~= LocalPlayer and repotedplayer[v] ~= true then
                    task.wait(1)
                    game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@easy-games"):FindFirstChild("block-engine").node_modules:FindFirstChild("@rbxts").net.out._NetManaged.ReportPlayer:InvokeServer(v.UserId)
                    repotedplayer[v] = true
                end
            end
        end
end})
PickUp = Utility:CreateToggle({ -- we do some trolling sometimes :troll:
    Name = "Pickup Range",
    Callback = function(Callback) 
end})
PickUp:CreateInfo("Picks up things farther!")
PickUp:CreateSlider({
    Name = "Range",
    Default = 12,
    Min = 1,
    Max = 12,
    Callback = function(Callback) 
        PickUpRangeRange = Callback
    end
})
Utility:CreateToggle({
    Name = "Anit AFK",
    Callback = function(Callback) 
        AntiAFKEnabled = Callback
        if AntiAFKEnabled then 
            repeat task.wait(10) 
                bedwars["ClientHandler"]:Get('AfkInfo'):SendToServer({
                    afk = false
                })
            until not AntiAFKEnabled
        end
end})
--[[local NameHiderName = "Raven User"

local function plrthing(obj, property)
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v == LocalPlayer then
            obj[property] = obj[property]:gsub(v.Name,NameHiderName)
            obj[property] = obj[property]:gsub(v.DisplayName, NameHiderName)
        end
    end
end

local function newobj(v)
    if v:IsA("TextLabel") or v:IsA("TextButton") then
        plrthing(v, "Text")
        v:GetPropertyChangedSignal("Text"):connect(function()
            plrthing(v, "Text")
        end)
    end
    if v:IsA("ImageLabel") then
        plrthing(v, "Image")
        v:GetPropertyChangedSignal("Image"):connect(function()
            plrthing(v, "Image")
        end)
    end
end

NickHider = Utility:CreateToggle({
    Name = "Name Hider",
    Callback = function(Callback)
        NickEnabled = Callback
        if NickEnabled then
            for i,v in pairs(game:GetDescendants()) do
                newobj(v)
            end
        end
end})]]


    DisguiseEnabled = false
	DisguiseId = LocalPlayer.UserId
	
	local function Disguisechar(char)
		task.spawn(function()
			if not char then return end
			local hum = char:WaitForChild("Humanoid", 9e9)
			char:WaitForChild("Head", 9e9)
			local DisguiseDescription
			if DisguiseDescription == nil then
				local suc = false
				repeat
					suc = pcall(function()
						DisguiseDescription = Players:GetHumanoidDescriptionFromUserId(DisguiseId == "" and 1 or tonumber(DisguiseId))
					end)
					if suc then break end
					task.wait(1)
				until suc or not DisguiseEnabled
			end
			if not DisguiseEnabled then return end
			local desc = hum:WaitForChild("HumanoidDescription", 2) or {HeightScale = 1, SetEmotes = function() end, SetEquippedEmotes = function() end}
			DisguiseDescription.HeightScale = desc.HeightScale
			char.Archivable = true
			local Disguiseclone = char:Clone()
			Disguiseclone.Name = "Disguisechar"
			Disguiseclone.Parent = workspace
			for i,v in pairs(Disguiseclone:GetChildren()) do 
				if v:IsA("Accessory") or v:IsA("ShirtGraphic") or v:IsA("Shirt") or v:IsA("Pants") then  
					v:Destroy()
				end
			end
			if not Disguiseclone:FindFirstChildWhichIsA("Humanoid") then 
				Disguiseclone:Destroy()
				return 
			end
			Disguiseclone.Humanoid:ApplyDescriptionClientServer(DisguiseDescription)
			for i,v in pairs(char:GetChildren()) do 
				if (v:IsA("Accessory") and v:GetAttribute("InvItem") == nil and v:GetAttribute("ArmorSlot") == nil) or v:IsA("ShirtGraphic") or v:IsA("Shirt") or v:IsA("Pants") or v:IsA("BodyColors") or v:IsA("Folder") or v:IsA("Model") then 
					v.Parent = game
				end
			end
			char.ChildAdded:Connect(function(v)
				if ((v:IsA("Accessory") and v:GetAttribute("InvItem") == nil and v:GetAttribute("ArmorSlot") == nil) or v:IsA("ShirtGraphic") or v:IsA("Shirt") or v:IsA("Pants") or v:IsA("BodyColors")) and v:GetAttribute("Disguise") == nil then 
					repeat task.wait() v.Parent = game until v.Parent == game
				end
			end)
			for i,v in pairs(Disguiseclone:WaitForChild("Animate"):GetChildren()) do 
				v:SetAttribute("Disguise", true)
				if not char:FindFirstChild("Animate") then return end
				local real = char.Animate:FindFirstChild(v.Name)
				if v:IsA("StringValue") and real then 
					real.Parent = game
					v.Parent = char.Animate
				end
			end
			for i,v in pairs(Disguiseclone:GetChildren()) do 
				v:SetAttribute("Disguise", true)
				if v:IsA("Accessory") then  
					for i2,v2 in pairs(v:GetDescendants()) do 
						if v2:IsA("Weld") and v2.Part1 then 
							v2.Part1 = char[v2.Part1.Name]
						end
					end
					v.Parent = char
				elseif v:IsA("ShirtGraphic") or v:IsA("Shirt") or v:IsA("Pants") or v:IsA("BodyColors") then  
					v.Parent = char
				elseif v.Name == "Head" and char.Head:IsA("MeshPart") then 
					char.Head.MeshId = v.MeshId
				end
			end
			local localface = char:FindFirstChild("face", true)
			local cloneface = Disguiseclone:FindFirstChild("face", true)
			if localface and cloneface then localface.Parent = game cloneface.Parent = char.Head end
			desc:SetEmotes(DisguiseDescription:GetEmotes())
			desc:SetEquippedEmotes(DisguiseDescription:GetEquippedEmotes())
			Disguiseclone:Destroy()
		end)
	end
Disguise = Utility:CreateToggle({
    Name = "Disguise",
    Callback = function(Callback)
        DisguiseEnabled = Callback
        if DisguiseEnabled then
            DisguiseConnection = LocalPlayer.CharacterAdded:Connect(Disguisechar)
			Disguisechar(LocalPlayer.Character)
        else
            if DisguiseConnection then DisguiseConnection:Disconnect() end
        end
end})
--[[Disguise:CreateAdaptiveInput({
    Name = "DisguesInput",
    StartingText = "",
    Callback = function(Callback)
        DisguiseId = Callback
end})]]
if shared.RavenB4Started == nil then
    shared.RavenB4Completed = true
end
