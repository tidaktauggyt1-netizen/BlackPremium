-- BLACK PREMIUM GUI
-- Mobile Friendly

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "BlackPremium"
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 250, 0, 300)
frame.Position = UDim2.new(0.5, -125, 0.5, -150)
frame.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 45)
title.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
title.Text = "BLACK PREMIUM"
title.TextColor3 = Color3.new(1,1,1)
title.TextSize = 20
title.Font = Enum.Font.GothamBold
title.Parent = frame

local function createButton(name, position, callback)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 210, 0, 38)
    button.Position = UDim2.new(0, 20, 0, position)
    button.BackgroundColor3 = Color3.fromRGB(35,35,35)
    button.TextColor3 = Color3.new(1,1,1)
    button.Text = name
    button.TextSize = 15
    button.Font = Enum.Font.GothamBold
    button.Parent = frame

    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0,8)
    c.Parent = button

    button.MouseButton1Click:Connect(callback)
end

createButton("SPEED", 60, function()
    print("Speed menu")
end)

createButton("FLY", 105, function()
    print("Fly menu")
end)

createButton("NOCLIP", 150, function()
    print("Noclip menu")
end)

createButton("WEAPON MENU", 195, function()
    print("Weapon menu")
end)

createButton("CLOSE GUI", 240, function()
    gui:Destroy()
end)
