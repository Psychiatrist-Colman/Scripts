local library = {}

local UI_options = {
    ui_size = Vector2.new(0.25, 0.3)
}

if game.CoreGui:FindFirstChild("UiLib") then
        game.CoreGui:FindFirstChild("UiLib"):Destroy()
end

function library:CreateMain()
    local UILib = Instance.new("ScreenGui")
    local Frame = Instance.new("ImageLabel")
    local Back = Instance.new("Frame")
    local ScrollingFrame = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local SideBar = Instance.new("Frame")
    local ScrollingBar = Instance.new("ScrollingFrame")
    local UIListLayout_2 = Instance.new("UIListLayout")
    UILib.Name = "UiLib"
    UILib.Parent = game.CoreGui
    script.Parent = UILib
    Frame.Name = "Frame"
    Frame.Parent = UILib
    Frame.AnchorPoint = Vector2.new(0.5, 0.5)
    Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame.BackgroundTransparency = 1.000
    Frame.Position = UDim2.new(0.530324996, 0, 0.518291414, 0)
    Frame.Size = UDim2.new(UI_options.ui_size.X, 0, UI_options.ui_size.Y, 0)
    Frame.Image = "rbxassetid://3570695787"
    Frame.ImageColor3 = Color3.fromRGB(95, 95, 96)
    Frame.ScaleType = Enum.ScaleType.Slice
    Frame.SliceCenter = Rect.new(100, 100, 100, 100)
    Frame.SliceScale = 0.120

    Back.Name = "Back"
    Back.Parent = Frame
    Back.BackgroundColor3 = Color3.fromRGB(125, 125, 125)
    Back.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Back.BorderSizePixel = 0
    Back.Position = UDim2.new(0.0180722848, 0, 0.0240385234, 0)
    Back.Size = UDim2.new(0.962889314, 0, 0.945513248, 0)

    ScrollingFrame.Parent = Back
    ScrollingFrame.Active = true
    ScrollingFrame.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
    ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ScrollingFrame.BorderSizePixel = 0
    ScrollingFrame.Position = UDim2.new(0.321682662, 0, -6.59775168e-08, 0)
    ScrollingFrame.Size = UDim2.new(0.678317726, 0, 1, 0)
    ScrollingFrame.ScrollBarThickness = 6


    SideBar.Name = "SideBar"
    SideBar.Parent = Frame
    SideBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SideBar.BackgroundTransparency = 0.900
    SideBar.Position = UDim2.new(0.0180722848, 0, 0.0240384005, 0)
    SideBar.Size = UDim2.new(0.309745044, 0, 0.945513666, 0)


    UIListLayout.Parent = ScrollingFrame
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0.00700000022, 0)


    ScrollingBar.Name = "ScrollingBar"
    ScrollingBar.Parent = SideBar
    ScrollingBar.Active = true
    ScrollingBar.BackgroundColor3 = Color3.fromRGB(125, 125, 125)
    ScrollingBar.BorderSizePixel = 0
    ScrollingBar.Position = UDim2.new(2.42075771e-07, 0, 0, 0)
    ScrollingBar.Size = UDim2.new(0.996790051, 0, 0.999999583, 0)
    ScrollingBar.ScrollBarThickness = 1
    ScrollingBar.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left


    UIListLayout_2.Parent = ScrollingBar
    UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_2.Padding = UDim.new(0.00600000005, 0)

    local secondLibrary = {}

    function secondLibrary:NewPanel(Name)
        local ButtonFrame = Instance.new("Frame")
        ButtonFrame.Name = "ButtonFrame"
        ButtonFrame.Parent = ScrollingBar
        ButtonFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ButtonFrame.BackgroundTransparency = 1.000
        ButtonFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        ButtonFrame.BorderSizePixel = 0
        ButtonFrame.Position = UDim2.new(-0.00795788318, 0, 0.0259434059, 0)
        ButtonFrame.Size = UDim2.new(0.980000019, 0, 0.0649999976, 0)
        
        local TextButton = Instance.new("TextButton")
        TextButton.Text = Name
        TextButton.Parent = ButtonFrame
        TextButton.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
        TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
        TextButton.Size = UDim2.new(1.00999999, 0, 1.00699997, 0)
        TextButton.Font = Enum.Font.SourceSansBold
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 16.000
    end

    function secondLibrary:CreateButton(Name, ButtonName)
    local ButtonPanel = Instance.new("Frame")
    ButtonPanel.Name = "ButtonPanel"
    ButtonPanel.Parent = ScrollingFrame
    ButtonPanel.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
    ButtonPanel.BorderSizePixel = 0
    ButtonPanel.Position = UDim2.new(-0.00376180327, 0, -1.24697508e-05, 0)
    ButtonPanel.Size = UDim2.new(0.969905257, 0, 0.0654834732, 0)
    local FunctionName = Instance.new("TextLabel")
    FunctionName.Text = Name
    FunctionName.Name = "FunctionName"
    FunctionName.Parent = ButtonPanel
    FunctionName.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
    FunctionName.BorderColor3 = Color3.fromRGB(255, 255, 255)
    FunctionName.BorderSizePixel = 0
    FunctionName.Position = UDim2.new(0.0527776964, 0, 0.16756624, 0)
    FunctionName.Size = UDim2.new(0.560780644, 0, 0.634498298, 0)
    FunctionName.Font = Enum.Font.SourceSansBold
    FunctionName.TextColor3 = Color3.fromRGB(255, 255, 255)
    FunctionName.TextSize = 16.000
    local FunctionButton = Instance.new("TextButton")
    FunctionButton.Text = ButtonName
    FunctionButton.Name = "FunctionButton"
    FunctionButton.Parent = FunctionName
    FunctionButton.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
    FunctionButton.BorderSizePixel = 0
    FunctionButton.Position = UDim2.new(1.09911084, 0, 0, 0)
    FunctionButton.Size = UDim2.new(0.526809573, 0, 1.00000048, 0)
    FunctionButton.Font = Enum.Font.SourceSansBold
    FunctionButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    FunctionButton.TextSize = 16.000
end
function secondLibrary:CreateToggle(Name, ToggleName, toggle)
    local TogglePanel = Instance.new("Frame")
    TogglePanel.Name = "TogglePanel"
    TogglePanel.Parent = ScrollingFrame
    TogglePanel.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
    TogglePanel.BorderSizePixel = 0
    TogglePanel.Position = UDim2.new(-0.00376180327, 0, -1.24697508e-05, 0)
    TogglePanel.Size = UDim2.new(0.969905257, 0, 0.0654834732, 0)
    local FunctionName_2 = Instance.new("TextLabel")
    FunctionName_2.Text = Name
    FunctionName_2.Name = "FunctionName"
    FunctionName_2.Parent = TogglePanel
    FunctionName_2.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
    FunctionName_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
    FunctionName_2.BorderSizePixel = 0
    FunctionName_2.Position = UDim2.new(0.0527776964, 0, 0.16756624, 0)
    FunctionName_2.Size = UDim2.new(0.560780644, 0, 0.634498298, 0)
    FunctionName_2.Font = Enum.Font.SourceSansBold
    FunctionName_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    FunctionName_2.TextSize = 16.000
    local FunctionToggle = Instance.new("TextButton")
    FunctionToggle.Name = "FunctionToggle"
    FunctionToggle.Parent = FunctionName_2
    FunctionToggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    FunctionToggle.BorderSizePixel = 0
    FunctionToggle.Position = UDim2.new(1.18902254, 0, -0.160026133, 0)
    FunctionToggle.Size = UDim2.new(0.340069532, 0, 1.26409245, 0)
    FunctionToggle.ZIndex = 2
    FunctionToggle.Font = Enum.Font.SourceSansBold
    FunctionToggle.TextColor3 = Color3.fromRGB(0, 0, 0)
    FunctionToggle.TextScaled = true
    FunctionToggle.TextSize = 16.000
    FunctionToggle.TextTransparency = 1.000
    FunctionToggle.TextWrapped = true
end
    return secondLibrary;
end

return library;



