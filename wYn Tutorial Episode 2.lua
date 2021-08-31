--[[EPISODE ONE WYN TUTORIAL]]--
--[[game = https://www.roblox.com/games/5098929086]]
--Globals--
_G.autotap = true
_G.autorebirth = true

--Locals--

local remotepath = game:GetService("ReplicatedStorage")

spawn(function()
    while _G.autotap == true do
        remotepath.PlayerClick:FireServer(false)
        wait()
    end
end)

spawn(function()
    while _G.autorebirth == true do
        remotepath.PlayerRebirth:FireServer(1)
        wait()
    end
end)
print ('hello') 

--[[
ON MY OWN

_G.autotap2 = true

spawn(function()
    while _G.autotap2 == true do
        game:GetService("ReplicatedStorage").fileMade:FireServer()
        wait()
    end 
end)
game = https://www.roblox.com/games/6859865958
]]--
