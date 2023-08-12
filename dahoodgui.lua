local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt%22)()

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


win:Server("Main", "http://www.roblox.com/asset/?id=6031075938%22)
