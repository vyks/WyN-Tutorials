--[[EPISODE TWO WYN TUTORIAL]]--
--[[game = game = https://www.roblox.com/games/6859865958]]
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Globals--

getgenv().Autotap = true
getgenv().Autovideo = true

--Locals--

local Replicate = game:GetService("ReplicatedStorage")

--Script--

function doTap()
    spawn(function()
        while Autotap == true do
            Replicate.fileMade:FireServer()
            wait()
        end 
    end)
end

doTap()

function doVideo()
    spawn(function()
        while Autovideo == true do
            --local args = {[1] = videoamount}--
            Replicate.singleVideo:FireServer(workspace.Studios["Qnotic's Studio"].Items["Starter Laptop"])--(unpack(args))--
            wait() 
        end
    end)
end

doVideo()

function getCurrentPlayerPOS()
    local plyer = game.Players.LocalPlayer
    if plyr.Character then
        return plyer.Character.HumanoidRootPart.Position
    end
        return false
end

--Teleports--

function upgradeTele(placeCFrame)
    local plyer = game.Players.LocalPlayer
        plyer.Character.HumanoidRootPart.CFrame = placeCFrame
end

upgradeTele(game:GetService("Workspace").upgradeStore.Door.entrancePart.CFrame)

function itemTele(placeCFrame)
    local plyer = game.Players.LocalPlayer
        plyer.Character.HumanoidRootPart.CFrame = placeCFrame
end

itemTele(game:GetService("Workspace").SHOP.enterPart.CFrame)

function HouseTele(placeCFrame)
    local plyer = game.Players.LocalPlayer
        plyer.Character.HumanoidRootPart.CFrame = placeCFrame
end

HouseTele(game:GetService("Workspace").Studios["Qnotic's Studio"].Items.Cushion.chair.CFrame)
Replicate.unSit:FireServer()
Replicate.unSit:FireServer()

--LEARNING PURPOSE--
--[[
function teleportworld(world)
    if game:GetService("Workspace").Worlds:FindFirstChild(world)
        teleportTO(game:GetService("Workspace").Worlds.[world].Teleport.CFrame)
    end
end

teleportworold("Desert") ]]--
