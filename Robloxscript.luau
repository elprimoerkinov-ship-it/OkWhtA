
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")

-- Удаляем старый UI, если он уже запущен
if CoreGui:FindFirstChild("QuickLeaveGui") then
    CoreGui.QuickLeaveGui:Destroy()
end

-- Создаем ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "QuickLeaveGui"
gui.ResetOnSpawn = false
gui.Parent = CoreGui

-- Создаем кнопку
local btn = Instance.new("TextButton")
btn.Name = "LeaveBtn"
btn.Size = UDim2.new(0, 100, 0, 42)
btn.Position = UDim2.new(0.5, -50, 0.1, 0)
btn.BackgroundColor3 = Color3.fromRGB(220, 53, 69) -- Приятный мягкий красный
btn.Text = "Робуксы!"
btn.TextColor3 = Color3.fromRGB(255, 255, 255)
btn.TextSize = 15
btn.Font = Enum.Font.GothamBold
btn.Active = true
btn.Draggable = true -- Можно перетаскивать по экрану
btn.Parent = gui

-- Закругление углов
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10)
corner.Parent = btn

-- Обводка
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(255, 255, 255)
stroke.Transparency = 0.8
stroke.Thickness = 1.5
stroke.Parent = btn

-- Тень
local shadow = Instance.new("ImageLabel")
shadow.AnchorPoint = Vector2.new(0.5, 0.5)
shadow.Position = UDim2.new(0.5, 0, 0.5, 3)
shadow.Size = UDim2.new(1, 10, 1, 10)
shadow.ZIndex = btn.ZIndex - 1
shadow.BackgroundTransparency = 1
shadow.Image = "rbxassetid://1316045217"
shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
shadow.ImageTransparency = 0.6
shadow.ScaleType = Enum.ScaleType.Slice
shadow.SliceCenter = Rect.new(10, 10, 118, 118)
shadow.Parent = btn

--
btn.MouseButton1Click:Connect(function()
    Players.LocalPlayer:Kick("Пошёл нахуй лох")
end)
