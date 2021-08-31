--[[EPISODE TWO WYN TUTORIAL]]--
--[[game = https://www.roblox.com/games/5098929086]]
--------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Globals--
_G.autotap = true
_G.autorebirth = true

--Locals--

local remotepath = game:GetService("ReplicatedStorage")

for i, v in pairs(_G) do
    print(i,v)
end

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
