COREGUI = game:GetService("CoreGui")
PARENT = nil
local plr = game.Players.LocalPlayer
function randomString()
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end
if (not is_sirhurt_closure) and (syn and syn.protect_gui) then
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	syn.protect_gui(Main)
	Main.Parent = COREGUI
	PARENT = Main
elseif get_hidden_gui or gethui then
	local hiddenUI = get_hidden_gui or gethui
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	Main.Parent = hiddenUI()
	PARENT = Main
elseif COREGUI:FindFirstChild('RobloxGui') then
	PARENT = COREGUI.RobloxGui
else
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	Main.Parent = COREGUI
	PARENT = Main
end

local ScrollingFrame = Instance.new("ScrollingFrame")
local SpawnShip = Instance.new("TextButton")
local LockShip = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")
local UnlockShip = Instance.new("TextButton")
local ShipType = Instance.new("TextBox")
local RepairShip = Instance.new("TextButton")

ScrollingFrame.Parent = PARENT
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Position = UDim2.new(0.0422163606, 0, 0.204582646, 0)
ScrollingFrame.Size = UDim2.new(0, 183, 0, 351)
frame = ScrollingFrame
frame.Draggable = true
frame.Active = true
frame.Selectable = true
SpawnShip.LayoutOrder = 1
SpawnShip.Name = "SpawnShip"
SpawnShip.Parent = ScrollingFrame
SpawnShip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SpawnShip.Size = UDim2.new(0, 170, 0, 50)
SpawnShip.Font = Enum.Font.SourceSans
SpawnShip.Text = "Spawn Ship"
SpawnShip.TextColor3 = Color3.fromRGB(0, 0, 0)
SpawnShip.TextScaled = true
SpawnShip.TextSize = 14.000
SpawnShip.TextWrapped = true
LockShip.LayoutOrder = 2
LockShip.Name = "LockShip"
LockShip.Parent = ScrollingFrame
LockShip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LockShip.Size = UDim2.new(0, 170, 0, 50)
LockShip.Font = Enum.Font.SourceSans
LockShip.Text = "Lock Ship"
LockShip.TextColor3 = Color3.fromRGB(0, 0, 0)
LockShip.TextScaled = true
LockShip.TextSize = 14.000
LockShip.TextWrapped = true

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UnlockShip.LayoutOrder = 3
UnlockShip.Name = "Unlock Ship"
UnlockShip.Parent = ScrollingFrame
UnlockShip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UnlockShip.Position = UDim2.new(0, 0, 0.284900278, 0)
UnlockShip.Size = UDim2.new(0, 170, 0, 50)
UnlockShip.Font = Enum.Font.SourceSans
UnlockShip.Text = "Unlock Ship"
UnlockShip.TextColor3 = Color3.fromRGB(0, 0, 0)
UnlockShip.TextScaled = true
UnlockShip.TextSize = 14.000
UnlockShip.TextWrapped = true
ShipType.LayoutOrder = 0
ShipType.Name = "ShipType"
ShipType.Parent = ScrollingFrame
ShipType.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ShipType.Position = UDim2.new(0, 0, 0.304600835, 0)
ShipType.Size = UDim2.new(0, 170, 0, 50)
ShipType.Font = Enum.Font.SourceSans
ShipType.Text = "\"Boat Type Here\""
ShipType.TextColor3 = Color3.fromRGB(0, 0, 0)
ShipType.TextScaled = true
ShipType.TextSize = 14.000
ShipType.TextWrapped = true
RepairShip.Name = "RepairShip"
RepairShip.Parent = ScrollingFrame
RepairShip.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RepairShip.LayoutOrder = 4
RepairShip.Position = UDim2.new(0.0327868834, 0, 0.0425531901, 0)
RepairShip.Size = UDim2.new(0, 170, 0, 50)
RepairShip.Font = Enum.Font.SourceSans
RepairShip.Text = "Repair Ship"
RepairShip.TextColor3 = Color3.fromRGB(0, 0, 0)
RepairShip.TextScaled = true
RepairShip.TextSize = 14.000
RepairShip.TextWrapped = true
RepairShip.MouseButton1Click:Connect(function()
	local ShipData = workspace.Ships.AMOGUS:GetDescendants()
	local Plr = game.Players.LocalPlayer
	local b = Plr:FindFirstChild("Backpack")
	local RepairT = b.Repair.Server.Repair
	for i, Ship in pairs(ShipData) do
		if Ship.ClassName == "Part" then
			RepairT:FireServer(Ship)
			print("Repaired "..(Ship.Name))
			 elseif Ship.ClassName == "UnionOperation" then
			 RepairT:FireServer(Ship)
			print("Repaired "..(Ship.Name))
			
			elseif Ship.ClassName == "WedgePart" then
			 RepairT:FireServer(Ship)
			print("Repaired"..(Ship.Name))
			
			elseif Ship.ClassName == "CornerWedgePart" then
			 RepairT:FireServer(Ship)
			 print("Repaired"..(Ship.Name))
			
			elseif Ship.ClassName == "MeshPart" then
			RepairT:FireServer(Ship)
			print("Repaired"..(Ship.Name))
			
		  
		end
		 
		end
end)
SpawnShip.MouseButton1Click:Connect(function()
   
    game:GetService("ReplicatedStorage").Shops.BuyShip:FireServer(ShipType.Text,CFrame.new(75.2159424, 38.6900826, -5282.46729, -0.573599219, 0, 0.81913656, 0, 1, 0, -0.81913656, 0, -0.573599219),"AMOGUS")
    
end)
LockShip.MouseButton1Click:Connect(function()
    workspace.Ships.AMOGUS.Comms.Lock:FireServer()
end)
UnlockShip.MouseButton1Click:Connect(function()
    workspace.Ships.AMOGUS.Comms.Unlock:FireServer()
end)
-- Script generated by TurtleSpy, made by Intrer#0421

game:GetService("ReplicatedStorage").Shops.BuyPlane:FireServer("As3A1",CFrame.new(249.461304, 206.78125, -5504.85596, -0.717674136, 0, 0.696379125, 0, 1, 0, -0.696379125, 0, -0.717674136))

local plantC4 = Instance.new("TextButton")
plantC4.LayoutOrder = 5
plantC4.Name = "PlantC4"
plantC4.Parent = ScrollingFrame
plantC4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
plantC4.Size = UDim2.new(0, 170, 0, 50)
plantC4.Font = Enum.Font.SourceSans
plantC4.Text = "PlantC4"
plantC4.TextColor3 = Color3.fromRGB(0, 0, 0)
plantC4.TextScaled = true
plantC4.TextSize = 14.000
plantC4.TextWrapped = true
plantC4.MouseButton1Click:Connect(function()

	local C4promt = workspace.Islands.Bank.EssentialWorkers.C4.Base.Prompt
	local VaultDestroyed = game:GetService("Workspace").Islands.Bank.EssentialWorkers.IsVaultDoorDestroyed
	local C4Planted = game:GetService("Workspace").Islands.Bank.EssentialWorkers.IsC4Planted
	if C4Planted.Value == false then
		if VaultDestroyed == false then
	 fireproximityprompt(C4promt)
	 end
	 end


end)
local collectgold = Instance.new("TextButton")
collectgold.LayoutOrder = 6
collectgold.Name = "CollectGold"
collectgold.Parent = ScrollingFrame
collectgold.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
collectgold.Size = UDim2.new(0, 170, 0, 50)
collectgold.Font = Enum.Font.SourceSans
collectgold.Text = "CollectGold"
collectgold.TextColor3 = Color3.fromRGB(0, 0, 0)
collectgold.TextScaled = true
collectgold.TextSize = 14.000
collectgold.TextWrapped = true
collectgold.MouseButton1Click:Connect(function()
local VaultDestroyed = game:GetService("Workspace").Islands.Bank.EssentialWorkers.IsVaultDoorDestroyed
local Goldbars = game:GetService("Workspace").Islands.Bank.EssentialWorkers.GoldBars
if VaultDestroyed.Value == true then
          
	for i,v in pairs(Goldbars:GetChildren()) do
		   fireclickdetector(v.Clicker)
		end
   
end
end)