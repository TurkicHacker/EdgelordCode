local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")
screenGui.ResetOnSpawn = false
-- Modern Çerçeve (Hub)
local MainFrame = Instance.new("Frame")
MainFrame.Parent = screenGui
MainFrame.Size = UDim2.new(0, 400, 0, 350)
MainFrame.Position = UDim2.new(0.5, -200, 0.5, -175)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true

-- UI Köşeleri
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 16)
UICorner.Parent = MainFrame

-- Başlık
local Title = Instance.new("TextLabel")
Title.Parent = MainFrame
Title.Size = UDim2.new(1, 0, 0.15, 0)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Title.Text = "Modern Hub"
Title.TextScaled = true
Title.Font = Enum.Font.GothamBold
Title.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Separator (Çizgi)
local Separator = Instance.new("Frame")
Separator.Parent = MainFrame
Separator.Size = UDim2.new(1, 0, 0.01, 0)
Separator.Position = UDim2.new(0, 0, 0.15, 0)
Separator.BackgroundColor3 = Color3.fromRGB(60, 120, 200)

-- İlk TextBox (Kullanıcı Adı)
local TextBox1 = Instance.new("TextBox")
TextBox1.Parent = MainFrame
TextBox1.Size = UDim2.new(0.8, 0, 0.1, 0)
TextBox1.Position = UDim2.new(0.1, 0, 0.2, 0)
TextBox1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextBox1.PlaceholderText = "Enter Username"
TextBox1.Text = ""
TextBox1.TextScaled = true
TextBox1.Font = Enum.Font.Gotham
TextBox1.TextColor3 = Color3.fromRGB(255, 255, 255)

local TextBoxCorner1 = Instance.new("UICorner")
TextBoxCorner1.CornerRadius = UDim.new(0, 12)
TextBoxCorner1.Parent = TextBox1

-- İkinci TextBox (Hedef Oyuncu)
local TextBox2 = Instance.new("TextBox")
TextBox2.Parent = MainFrame
TextBox2.Size = UDim2.new(0.8, 0, 0.1, 0)
TextBox2.Position = UDim2.new(0.1, 0, 0.35, 0)
TextBox2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextBox2.PlaceholderText = "Enter Target Player"
TextBox2.Text = ""
TextBox2.TextScaled = true
TextBox2.Font = Enum.Font.Gotham
TextBox2.TextColor3 = Color3.fromRGB(255, 255, 255)

local TextBoxCorner2 = Instance.new("UICorner")
TextBoxCorner2.CornerRadius = UDim.new(0, 12)
TextBoxCorner2.Parent = TextBox2

-- İlk Buton (Fling İşlevi)
local Button1 = Instance.new("TextButton")
Button1.Parent = MainFrame
Button1.Size = UDim2.new(0.8, 0, 0.1, 0)
Button1.Position = UDim2.new(0.1, 0, 0.5, 0)
Button1.BackgroundColor3 = Color3.fromRGB(60, 120, 200)
Button1.Text = "Fling"
Button1.TextScaled = true
Button1.Font = Enum.Font.GothamBold
Button1.TextColor3 = Color3.fromRGB(255, 255, 255)

local Button1Corner = Instance.new("UICorner")
Button1Corner.CornerRadius = UDim.new(0, 12)
Button1Corner.Parent = Button1

-- İkinci Buton (Slapstick İşlevi)
local Button2 = Instance.new("TextButton")
Button2.Parent = MainFrame
Button2.Size = UDim2.new(0.8, 0, 0.1, 0)
Button2.Position = UDim2.new(0.1, 0, 0.65, 0)
Button2.BackgroundColor3 = Color3.fromRGB(200, 60, 60)
Button2.Text = "Edgelord(Admin Glove)"
Button2.TextScaled = true
Button2.Font = Enum.Font.GothamBold
Button2.TextColor3 = Color3.fromRGB(255, 255, 255)

local Button2Corner = Instance.new("UICorner")
Button2Corner.CornerRadius = UDim.new(0, 12)
Button2Corner.Parent = Button2

-- Üçüncü Buton (Ekstra Özellik)
local Button3 = Instance.new("TextButton")
Button3.Parent = MainFrame
Button3.Size = UDim2.new(0.8, 0, 0.1, 0)
Button3.Position = UDim2.new(0.1, 0, 0.8, 0)
Button3.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
Button3.Text = "Extra Feature"
Button3.TextScaled = true
Button3.Font = Enum.Font.GothamBold
Button3.TextColor3 = Color3.fromRGB(255, 255, 255)

local Button3Corner = Instance.new("UICorner")
Button3Corner.CornerRadius = UDim.new(0, 12)
Button3Corner.Parent = Button3

-- Buton İşlevleri (Örnek)
Button1.MouseButton1Click:Connect(function()
  local userInput = TextBox.Text
    if userInput == "" then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Hata",
            Text = "Lütfen bir kullanıcı adı girin.",
            Duration = 5
        })
        return
    end
    
    -- Kullanıcı adını hedef alarak Fling fonksiyonlarını çağırma
    local function FlingTarget(targetName)
        local Players = game:GetService("Players")
        local TargetPlayer = Players:FindFirstChild(targetName)
        
        if TargetPlayer and TargetPlayer ~= player then
local Targets = {targetName}

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local AllBool = false

local GetPlayer = function(Name)
    Name = Name:lower()
    if Name == "all" or Name == "others" then
        AllBool = true
        return
    elseif Name == "random" then
        local GetPlayers = Players:GetPlayers()
        if table.find(GetPlayers,Player) then table.remove(GetPlayers,table.find(GetPlayers,Player)) end
        return GetPlayers[math.random(#GetPlayers)]
    elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
        for _,x in next, Players:GetPlayers() do
            if x ~= Player then
                if x.Name:lower():match("^"..Name) then
                    return x;
                elseif x.DisplayName:lower():match("^"..Name) then
                    return x;
                end
            end
        end
    else
        return
    end
end

local Message = function(_Title, _Text, Time)
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = _Title, Text = _Text, Duration = Time})
end

local SkidFling = function(TargetPlayer)
    local Character = Player.Character
    local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
    local RootPart = Humanoid and Humanoid.RootPart

    local TCharacter = TargetPlayer.Character
    local THumanoid
    local TRootPart
    local THead
    local Accessory
    local Handle

    if TCharacter:FindFirstChildOfClass("Humanoid") then
        THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
    end
    if THumanoid and THumanoid.RootPart then
        TRootPart = THumanoid.RootPart
    end
    if TCharacter:FindFirstChild("Head") then
        THead = TCharacter.Head
    end
    if TCharacter:FindFirstChildOfClass("Accessory") then
        Accessory = TCharacter:FindFirstChildOfClass("Accessory")
    end
    if Accessoy and Accessory:FindFirstChild("Handle") then
        Handle = Accessory.Handle
    end

    if Character and Humanoid and RootPart then
        if RootPart.Velocity.Magnitude < 50 then
            getgenv().OldPos = RootPart.CFrame
        end
        if THumanoid and THumanoid.Sit and not AllBool then
            return Message("Error Occurred", "Targeting is sitting", 5) -- u can remove dis part if u want lol
        end
        if THead then
            workspace.CurrentCamera.CameraSubject = THead
        elseif not THead and Handle then
            workspace.CurrentCamera.CameraSubject = Handle
        elseif THumanoid and TRootPart then
            workspace.CurrentCamera.CameraSubject = THumanoid
        end
        if not TCharacter:FindFirstChildWhichIsA("BasePart") then
            return
        end
        
        local FPos = function(BasePart, Pos, Ang)
            RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
            Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
            RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
            RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
        end
        
        local SFBasePart = function(BasePart)
            local TimeToWait = 2
            local Time = tick()
            local Angle = 0

            repeat
                if RootPart and THumanoid then
                    if BasePart.Velocity.Magnitude < 50 then
                        Angle = Angle + 100

                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle),0 ,0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()
                    else
                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()
                        
                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5 ,0), CFrame.Angles(math.rad(-90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()
                    end
                else
                    break
                end
            until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait
        end
        
        workspace.FallenPartsDestroyHeight = 0/0
        
        local BV = Instance.new("BodyVelocity")
        BV.Name = "EpixVel"
        BV.Parent = RootPart
        BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
        BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)
        
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
        
        if TRootPart and THead then
            if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
                SFBasePart(THead)
            else
                SFBasePart(TRootPart)
            end
        elseif TRootPart and not THead then
            SFBasePart(TRootPart)
        elseif not TRootPart and THead then
            SFBasePart(THead)
        elseif not TRootPart and not THead and Accessory and Handle then
            SFBasePart(Handle)
        else
            return Message("Error Occurred", "Target is missing everything", 5)
        end
        
        BV:Destroy()
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
        workspace.CurrentCamera.CameraSubject = Humanoid
        
        repeat
            RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
            Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
            Humanoid:ChangeState("GettingUp")
            table.foreach(Character:GetChildren(), function(_, x)
                if x:IsA("BasePart") then
                    x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
                end
            end)
            task.wait()
        until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25
        workspace.FallenPartsDestroyHeight = getgenv().FPDH
    else
        return Message("Error Occurred", "Random error", 5)
    end
end

if not Welcome then Message("Script by AnthonyIsntHere", "Enjoy!", 5) end
getgenv().Welcome = true
if Targets[1] then for _,x in next, Targets do GetPlayer(x) end else return end

if AllBool then
    for _,x in next, Players:GetPlayers() do
        SkidFling(x)
    end
end

for _,x in next, Targets do
    if GetPlayer(x) and GetPlayer(x) ~= Player then
        if GetPlayer(x).UserId ~= 1414978355 then
            local TPlayer = GetPlayer(x)
            if TPlayer then
                SkidFling(TPlayer)
            end
        else
            Message("Error Occurred", "This user is whitelisted! (Owner)", 5)
        end
    elseif not GetPlayer(x) and not AllBool then
        Message("Error Occurred", "Username Invalid", 5)
    end
end
        else
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Hata!",
                Text = "Geçersiz hedef veya kendi oyuncunuz!",
                Duration = 5
            })
        end
    end

    FlingTarget(userInput)
end)

Button2.MouseButton1Click:Connect(function()
    local playerName = player.Name
    local success, err = pcall(function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/TurkicHacker/EdgelordCode/refs/heads/main/EdgelordSlapstick.lua'))()
    end)
    if success then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Başarılı!",
            Text = playerName .. " için kod çalıştırıldı.",
            Duration = 5
	    wait(120)
	    game.ReplicatedStorage.Ban:FireServer()
        })
    else
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Hata!",
            Text = "Kod yüklenemedi: " .. err,
            Duration = 5
        })
    end
end)

Button3.MouseButton1Click:Connect(function()
_G.PunishPlayer = TextBox2.Text
if game.Players.LocalPlayer.Character:FindFirstChild("Swapper") or game.Players.LocalPlayer.Backpack:FindFirstChild("Swapper") then
OGL = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Workspace.VoidPart.VoidPart1.CanCollide = true
Timer = 0
repeat
if Cancel == true then
break
end
if game.Players[_G.PunishPlayer].Character:FindFirstChild("HumanoidRootPart") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players[_G.PunishPlayer].Character.HumanoidRootPart.Position.X, -49999, game.Players[_G.PunishPlayer].Character.HumanoidRootPart.Position.Z)
end
task.wait(0.01)
if Timer < 1 then
Timer = Timer + 0.01
end
until game.Players[_G.PunishPlayer].Character and workspace[_G.PunishPlayer]:FindFirstChild("HumanoidRootPart") and workspace[_G.PunishPlayer]:FindFirstChild("entered") and workspace[_G.PunishPlayer].Ragdolled.Value == false and Timer >= 1
if Cancel == false then
game:GetService("ReplicatedStorage").SLOC:FireServer()
end
wait(.25)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OGL
game.Workspace.VoidPart.VoidPart1.CanCollide = false
if game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Part",true) == nil then
game:GetService("ReplicatedStorage"):WaitForChild("HumanoidDied"):FireServer(game.Players.LocalPlayer.Character,false)
end
else
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Successfully Punished",
    Text = "Successfully Punished that player.",
    Duration = 5
})
end
end)
