local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()


local Window = Library.CreateLib("Tower", "RJTheme8")

local Main = Window:NewTab("Main")
local Movement = Window:NewTab("Movement")
local Tp = Window:NewTab("Tp")
local Scripts = Window:NewTab("Scripts")
local Gui = Window:NewTab("Gui")
local Creator = Window:NewTab("Creator")

local MainSection = Main:NewSection("Main")
local MovementSection = Movement:NewSection("Movement")
local TpSection = Tp:NewSection("Tp")
local ScriptsSection = Scripts:NewSection("Scripts")
local GuiSection = Gui:NewSection("Gui")
local CreatorSection = Creator:NewSection("Creator: Bemplia/aleksey312")

MainSection:NewButton("Rejoin", "Rejoin", function()
    local ts = game:GetService("TeleportService")

local p = game:GetService("Players").LocalPlayer

 

ts:Teleport(game.PlaceId, p)
end)

MainSection:NewButton("AntiKill", "AntiKill", function()
    workspace.tower.walls:Destroy()
end)

MainSection:NewButton("AutoFarm", "AutoFarm", function(state)
    while wait(5) do
        game.Players.LocalPlayer.Character.Head.CanCollide = false
        game.Players.LocalPlayer.Character.Torso.CanCollide = false

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").tower.finishes.Finish.CFrame
    end
end)

MovementSection:NewTextBox("WalkSpeed", "WalkSpeed", function(a)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = a
end)

MovementSection:NewTextBox("JumpPower", "JumpPower", function(a)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = a
end)

MovementSection:NewButton("Infinity Jump", "Infinity Jump", function()
local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';
 
_G.JumpHeight = 50;
 
function Action(Object, Function) if Object ~= nil then Function(Object); end end
 
UIS.InputBegan:connect(function(UserInput)
if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
Action(Player.Character.Humanoid, function(self)
if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
Action(self.Parent.HumanoidRootPart, function(self)
self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
end)
end
end)
end
end)
end)

MovementSection:NewToggle("Sit", "Sit", function(state)
    if state then
        game.Players.LocalPlayer.Character.Head.CanCollide = true
        game.Players.LocalPlayer.Character.Torso.CanCollide = true
        game.Players.LocalPlayer.Character.Humanoid.Sit = true
    else
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
    end
end)

MovementSection:NewToggle("Noclip", "Noclip", function(state)
    if state then
        while wait() do
            game.Players.LocalPlayer.Character.Head.CanCollide = false
            game.Players.LocalPlayer.Character.Torso.CanCollide = false
        end
    else
        game.Players.LocalPlayer.Character.Head.CanCollide = true
        game.Players.LocalPlayer.Character.Torso.CanCollide = true
    end
end)

TpSection:NewButton("End", "End", function(a)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").tower.finishes.Finish.CFrame
end)

TpSection:NewButton("Start", "Start", function(a)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(46.3154068, 18.9999409, -0.0579327792, -0.00512652565, 2.54143124e-08, 0.999986887, -4.22384044e-10, 1, -2.54168118e-08, -0.999986887, -5.52678459e-10, -0.00512652565)
end)

ScriptsSection:NewButton("Dark Dex", "Dark Dex", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
end)

ScriptsSection:NewButton("Infinite Yield", "Infinite Yield", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)

ScriptsSection:NewButton("Remote Spy", "Remote Spy", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/bCghX33W", true))()
end)

GuiSection:NewKeybind("Toggle GUI", "", Enum.KeyCode.L, function()
	Library:ToggleUI()
end)
