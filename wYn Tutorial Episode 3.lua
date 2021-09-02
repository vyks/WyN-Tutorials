--Globals--
getgenv().autodrink = true
getgenv().autoburp = true
getgenv().autopoint = true
--Script--
if autopoint == true then
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("AutoStunt only works if you are jumping. Enjoy! - vykzs","All")
end

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
doPoint()
doDrink()
doBurp()

--[[
Game - 
https://www.roblox.com/games/2017976530/Jungle-Soda-Drinking-Simulator
]]--
print("script made by vykzs")
