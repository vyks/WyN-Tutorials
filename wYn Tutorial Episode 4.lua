--Globals--
getgenv().autodrink = false
getgenv().autoburp = false
getgenv().autopoint = false

--Locals--

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Soda.S - vykzs")

local a = w:CreateFolder("Functions")

local c = w:CreateFolder("Teleports")

local b = w:CreateFolder("Misc")

--Script--

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("AutoStunt only works if you are jumping. Enjoy! - vykzs","All")

function doDrink()
    spawn(function()
        while autodrink == true do
            game:GetService("Players").LocalPlayer.Backpack.Soda.Drink:FireServer()
            wait()
        end
    end)
end

function doBurp()
    spawn(function()
        while autoburp == true do
            game:GetService("Players").LocalPlayer.Backpack.Soda.Burp:FireServer()
            wait()
        end
    end)
end

function doPoint()
    spawn(function()
        while autopoint == true do
            game:GetService("ReplicatedStorage").PerformStunt:FireServer(71507.875)
            wait()
        end
    end)
end

function teleportTO(placeCFrame)
    local plyr = game.Players.LocalPlayer
        plyr.Character.HumanoidRootPart.CFrame = placeCFrame
end

--Functions--

a:Toggle("Super Drink",function(bool)
    getgenv().autodrink = bool
    print("Auto Tap is: ", bool)
    if bool then
        doDrink()
    end
end)

a:Toggle("Super Burp",function(bool)
    getgenv().autoburp = bool
    print("Auto Burp is: ", bool)
    if bool then
        doBurp()
    end
end)

a:Toggle("Auto Stunt",function(bool)
    getgenv().autopoint = bool
    print("Auto Stunt is: ", bool)
    if bool then
        doPoint()
    end
end)

--Teleports--

c:Button("Normal",function ()
    teleportTO(game:GetService("Workspace")["Main Area"].Spawns.SpawnLocation.CFrame)
end)

c:Button("Moke",function ()
    teleportTO(game:GetService("Workspace")["Moke Area"].Spawns.SpawnLocation.CFrame)
end)

c:Button("Cyber",function ()
    teleportTO(game:GetService("Workspace")["Cyber Area"].Spawns.SpawnLocation.CFrame)
end)

c:Button("Disco",function ()
    teleportTO(game:GetService("Workspace")["Disco Party"].Spawns.SpawnLocation.CFrame)
end)

c:Button("Candy",function ()
    teleportTO(game:GetService("Workspace")["Candy Land"].Spawns.SpawnLocation.CFrame)
end)

c:Button("Jungle",function ()
    teleportTO(game:GetService("Workspace").Jungle.Spawns.SpawnLocation.CFrame)
end)

c:Button("July",function ()
    teleportTO(game:GetService("Workspace")["Fourth of July Area"].Spawns.SpawnLocation.CFrame)
end)

--Miscellanious--

b:Slider("Character Speed",{
    min = 16; 
    max = 200; 
    precise = true; 
},function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (value)
end)

b:DestroyGui()

--[[
Game - 
https://www.roblox.com/games/2017976530/Jungle-Soda-Drinking-Simulator
]]--
--[[
Current loadstring - 
loadstring(game:HttpGet("https://i-love.cute-cats.online/u/i0YULJ3s", true))()
]]--
