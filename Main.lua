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

SpawnShip.MouseButton1Click:Connect(function()
   
    game:GetService("ReplicatedStorage").Shops.BuyShip:FireServer(ShipType.Text,CFrame.new(75.2159424, 38.6900826, -5282.46729, -0.573599219, 0, 0.81913656, 0, 1, 0, -0.81913656, 0, -0.573599219),"AMOGUS")
    
end)
LockShip.MouseButton1Click:Connect(function()
    workspace.Ships.AMOGUS.Comms.Lock:FireServer()
end)
UnlockShip.MouseButton1Click:Connect(function()
    workspace.Ships.AMOGUS.Comms.Unlock:FireServer()
end)

