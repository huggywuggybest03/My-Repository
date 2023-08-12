local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = false, SaveConfig = true, IntroEnabled = false})

OrionLib:MakeNotification({
    Name = "Logged in",
    Content = "You are logged in as "..Player.DisplayName..".",
    Image = "rbxassetid://4483345998",
    Time = 5
})

_G.Key = "woke1"
_G.KeyInput = "string"

function MakeScriptHub()
    local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("🦕 woKES hub beta")

local serv = win:Server("whf 5.0 by woke", "")

local btns = serv:Channel("misc scripts")

btns:Button("Kill all", function()
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
 
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
local Head = Character:WaitForChild("Head")
local DuelAccepted = ReplicatedStorage:WaitForChild("DuelAccepted")
 
while true do
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            Head.Anchored = true
            DuelAccepted:FireServer(player)
            Head.Anchored = false
        end
    end
    wait()
end

end)

btns:Seperator()

btns:Button("inf yield", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

btns:Seperator()

btns:Button("q tool", function()
getgenv().keytoclick = "Q"
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = keytoclick
tool.Activated:connect(function()
    local vim = game:service("VirtualInputManager")
vim:SendKeyEvent(true, keytoclick, false, game)
end)
tool.Parent = game.Players.LocalPlayer.Backpack

game.StarterGui:SetCore("SendNotification", {
    Title = "made by tecy and wick";
    Text = "dumbass lame nigga";

})

local player = game.Players.LocalPlayer

local function connectCharacterAdded()
    player.CharacterAdded:Connect(onCharacterAdded)
end

connectCharacterAdded()

player.CharacterRemoving:Connect(function()
    tool.Parent = game.Players.LocalPlayer.Backpack
end)
  end)

btns:Seperator()

btns:Button("nameless admin", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source'))()
  end)



serv:Channel("credits")


win:Server("Main", "http://www.roblox.com/asset/?id=6031075938")
end

function CorrectKeyNotification()
OrionLib:MakeNotification({
    Name = "Correct Key",
    Content = "You Have Entered The Correct Key! "..Player.DisplayName..".",
    Image = "rbxassetid://4483345998",
    Time = 5
})
end
function IncorrectKeyNotification()
OrionLib:MakeNotification({
    Name = "Incorrect Key",
    Content = "You Have Entered The Incorrect Key! "..Player.DisplayName..".",
    Image = "rbxassetid://4483345998",
    Time = 5
})

end

local Tab = Window:MakeTab({
    Name = "Key",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})


Tab:AddTextbox({
    Name = "Enter Key",
    Default = "Enter Key",
    TextDisappear = true,
    Callback = function(Value)
        _G.KeyInput = Value
    end
})

Tab:AddButton({
    Name = "Check Key",
    Callback = function()
          if _G.KeyInput == _G.Key then
      MakeScriptHub()
      CorrectKeyNotification()
      else
          IncorrectKeyNotification()
         end
      end
})
