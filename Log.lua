task.spawn(function()

    print("Start LOG!!!!!!!")

    -- print("LOG TIME : ",Log_Timee)
    if _G.Team == nil then
        _G.Team = "Pirates"
    end
    _G.Team = "Pirates"
    if (_G.Team == "Pirates" or _G.Team == "Marines") and not join then
        repeat wait()
            pcall(function()
                join = game.Players.localPlayer.Neutral == false
                if _G.Team == "Pirates" then
                    for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
                        for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton[v])) do
                            v.Function()
                        end
                    end
                elseif _G.Team == "Marines" then
                    for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
                        for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton[v])) do
                            v.Function()
                        end
                    end
                else
                    for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
                        for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton[v])) do
                            v.Function()
                        end
                    end
                end
            end)
        until join == true
    end
    
    function Log_Log()
        local RAMAccount = loadstring(game:HttpGet'https://raw.githubusercontent.com/ic3w0lf22/Roblox-Account-Manager/master/RAMAccount.lua')()
        MyAccount = RAMAccount.new(game:GetService'Players'.LocalPlayer.Name)
        local Username = game:GetService("Players").LocalPlayer.Name
        local Level = game:GetService("Players").LocalPlayer.Data.Level.Value
        local Beli = game:GetService("Players").LocalPlayer.Data.Beli.Value
        local Fragment = game:GetService("Players").LocalPlayer.Data.Fragments.Value
        local Fruit = game:GetService("Players").LocalPlayer.Data.DevilFruit.Value
        local Race = game:GetService("Players").LocalPlayer.Data.Race.Value
        local currency_Beli = ''
        local currency_Fragment = ''
        local Beli_Beli = 0
        local World = ''
        local Username = game:GetService("Players").LocalPlayer.Name
        -------------------------------------------------------------------------------------------------------------------------
        local Punch_Sup = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true)
        local Punch_Dragon = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
        local Punch_Ele = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true)
        local Punch_Shark = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
        local Punch_Death = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true)
        local Punch_God = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true)
        -------------------------------------------------------------------------------------------------------------------------

        -- เช็คหมัด ดาบ
        local Check = game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetChildren()

        list = {}
        Item_Punch = {}
        for i, v in pairs(Check) do
            for i1,v1 in pairs(v:GetChildren()) do
                if v1.Name == "ItemName" then
                    for i2,v2 in pairs(_G.Item) do
                        if v1.Text == v2 then
                            -- print(v1.Text)
                            table.insert(list, v1.Text)
                        end
                    end
                end
            end
        end

        if Punch_Sup == 1 then
            table.insert(Item_Punch,"Superhuman")
        end
        if Punch_God == 1 then
            table.insert(Item_Punch,"Godhuman")
        end
        if Punch_Shark == 1 then
            table.insert(Item_Punch,"SharkMan")
        end
        if Punch_Death == 1 then
            table.insert(Item_Punch,"DeathStepV2")
        end
        if Punch_Ele == 1 then
            table.insert(Item_Punch,"ElectricV2")
        end
        if Punch_Dragon == 1 then
            table.insert(Item_Punch,"DragonV2")
        end

        -- print(table.concat(list, ", "))
        -- print(table.concat(Item_Punch, ", "))
        if unpack(list) == nil then
            table.insert(list, "None")
        end

        -------------------------------------------------------------------------------------------------------------------------
        -- เช็คโลก
        if game.PlaceId == 2753915549 then -- sea1
            World = '1'
        elseif game.PlaceId == 4442272183 then -- sea2
            World = '2'
        else
            World = '3' 
        end

        -- เช็คเงิน
        if Beli >= 100000 and Beli <= 999999 then
            currency_Beli = 'K'
            Beli_Beli = math.floor(Beli / 1000)
        else
            currency_Beli = 'M'
            Beli_Beli = math.floor(Beli / 1000000)
        end

        if  Fragment >= 1000  and Fragment <= 100000 then
            currency_Fragment = 'K'
            Fragment = math.floor(Fragment / 1000)
        elseif Fragment >= 1000000 then
            currency_Fragment = 'M'
            Fragment = math.floor(Fragment / 1000000)
        elseif Fragment <= 1000 then
            currency_Fragment = ''
            Fragment = 0
        end

        -------------------------------------------------------------------------------------------------------------------------
        -- เช็คตื่น
        local Awake = game:GetService("Players").LocalPlayer.Backpack
        
        local Awake_Val = 0
        for i3,v3 in pairs(Awake:GetChildren()) do
            if v3.ToolTip == "Blox Fruit" then
                for i8,v8 in pairs(v3:GetChildren()) do
                for i9,v9 in pairs(v8:GetChildren()) do
                    if v9.Name == 'Z' then
                        Awake_Val = Awake_Val + 1
                    end
                    if v9.Name == 'X' then
                        Awake_Val = Awake_Val + 1
                    end
                    if v9.Name == 'C' then
                        Awake_Val = Awake_Val + 1
                    end
                    if v9.Name == 'V' then
                        Awake_Val = Awake_Val + 1
                    end
                    if v9.Name == 'F' then
                        Awake_Val = Awake_Val + 1
                    end
                    if v9.Name == 'TAP' then
                        Awake_Val = Awake_Val + 1
                    end
                end
                end
            end
            
        end

        if Awake_Val == 0 then
            Awake_Val = 'None'
        end
        
        -------------------------------------------------------------------------------------------------------------------------
        local Fruit_s = { 'Kilo', 'Spin', 'Chop', 'Spring', 'Bomb', 'Smoke', 'Spike', 'Flame', 'Bird: Falcon', 'Ice', 'Sand', 'Dark', 'Revive', 'Diamond', 'Light', 'Love', 'Rubber', 'Barrier', 'Magma', 'Door', 'Quake', 'Human: Buddha', 'String', 'Bird: Phoenix', 'Rumble', 'Paw', 'Gravity', 'Dough', 'Shadow', 'Venom', 'Control', 'Soul', 'Dragon', 'Leopard' }

        local Check_fruit = game:GetService("Players").LocalPlayer.Backpack
        local Mastery_fruit = 0
        for i4,v4 in pairs(Check_fruit:GetChildren()) do 
            for i5,v5 in pairs(Fruit_s) do
                if v4.ToolTip == "Blox Fruit" then
                    Mastery_fruit = v4.Level.Value
                end
            end
        end

        -------------------------------------------------------------------------------------------------------------------------
        -- เช็คผลในกล่อง
        local List_Demon_Fruits = {}
        local args = {
            [1] = "getInventoryFruits"
        }
        
        remote = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        for i6, v6 in pairs(remote) do 
            if v6.Price >= 1000000 then
                table.insert(List_Demon_Fruits,v6.Name)
                -- print(v6.Name)    
            end
        end
        if unpack(List_Demon_Fruits) == nil then
            table.insert(List_Demon_Fruits, "None")
        end
        -- print(Beli_Beli..currency_Beli)
        -- print(unpack(list))
        -- print(unpack(List_Demon_Fruits))
        if unpack(list) == "Cursed Dual Katana" and (unpack(List_Demon_Fruits) == "Dough-Dough") then
            MyAccount:SetAlias('|Beli:'..Beli_Beli..currency_Beli..'|ดาบคู่'..'|โมจิกล่อง')
        elseif unpack(list) == "Cursed Dual Katana" and (unpack(List_Demon_Fruits) == "Leopard-Leopard") then
            MyAccount:SetAlias('|Beli:'..Beli_Beli..currency_Beli..'|ดาบคู่'..'|เสือกล่อง')
        elseif unpack(list) == "Cursed Dual Katana" then
            MyAccount:SetAlias('|Beli:'..Beli_Beli..currency_Beli..'|ดาบคู่')
        else
            MyAccount:SetAlias('|Beli:'..Beli_Beli..currency_Beli)
        end
        -- Log
        if _G.Show_FPSS == true then
            MyAccount:SetDescription('Level : ' ..Level..'\n'
                ..'FPS : '..show_fps..'\n'
                ..'World : '..World..'\n'
                ..'Inventory : '..table.concat(list, ", ")..'\n'
                ..'Meelee : '..table.concat(Item_Punch, ", ")..'\n'
                ..'Rare Fruits : '..table.concat(List_Demon_Fruits, ", ")..'\n'
                ..'Fruit : '..Fruit..' '..'( '..'A : '..Awake_Val..' | '..'M : '..Mastery_fruit..')'..'\n'
                ..'Money : '..Beli_Beli..' '..currency_Beli..' '..'Fragments : '
                ..Fragment..currency_Fragment..'\n'
                ..'Race '..Race)
        else
            MyAccount:SetDescription('Level : ' ..Level..'\n'
                ..'Inventory : '..table.concat(list, ", ")..'\n'
                ..'World : '..World..'\n'
                ..'Meelee : '..table.concat(Item_Punch, ", ")..'\n'
                ..'Rare Fruits : '..table.concat(List_Demon_Fruits, ", ")..'\n'
                ..'Fruit : '..Fruit..' '..'( '..'A : '..Awake_Val..' | '..'M : '..Mastery_fruit..')'..'\n'
                ..'Money : '..Beli_Beli..' '
                ..currency_Beli..' '
                ..'Fragments : '
                ..Fragment..currency_Fragment..'\n'
                ..'Race '..Race)
        end
        local HttpService = game:GetService("HttpService")
        Detail = {
            ['Account'] = Username,
            ['Level'] = Level,
            ['Inventory'] = table.concat(list, ", "),
            ['RareFruit'] = table.concat(List_Demon_Fruits, ", "),
            ['Melee'] = table.concat(Item_Punch, ", "),
            ['Fruit'] = Fruit..' ( '..'A : '..Awake_Val..' | '..'M : '..Mastery_fruit..' )',
            ['Money'] = Beli_Beli..currency_Beli,
            ['Fragment'] = Fragment..currency_Fragment,
            ['World'] = World,
            ['Race'] = Race
        }  
    end

    -------------------------------------------------------------------------------------------------------------------------
    
    local i_loop = 0
    local AFK_Time = 0
    check_log = 0
    while true do wait()
        
        if check_log == 0 then
            i_loop =  i_loop + 1
            -- AFK_CHECK-----------------------------------------------------------------------
            if _G.AFK == true then
                local AFK_Current = game.Players.LocalPlayer.Character.HumanoidRootPart
                local AFK_OLD = AFK_Current.Position
                wait(1)
                -- print("AFK TIME : ",AFK_Time)
                if AFK_OLD ~= AFK_Current.Position then
                    AFK_Time = 0
                end
                if AFK_OLD == AFK_Current.Position then
                    AFK_Time = AFK_Time + 1
                end
                if AFK_Time >= 300 then
                    print("Kick")
                    pcall(function()
                            for count = math.random(1, math.random(40, 75)), 100 do
                            remote = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(count)
                                for _i ,v in pairs(remote) do
                                    if tonumber(v['Count']) < 12 then
                                        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, _i)
                                    end
                                end    
                            end
                    end)
                end
            end
            ----------------------------------------------------------------------------------------------------------------------
            -- FPS_CHECK----------------------------------------------------------------------------------------------------------
            if _G.Show_FPSS == true then
                ping = string.split(string.split(game.Stats.Network.ServerStatsItem["Data Ping"]:GetValueString(), " ")[1], ".")
                fps = string.split(game.Stats.Workspace.Heartbeat:GetValueString(), ".")
                show_pint = tonumber(ping[1])
                show_fps = tonumber(fps[1])
                -- print(show_fps)
            end
            ----------------------------------------------------------------------------------------------------------------------
            if i_loop >= _G.Log_Time then
                if check_log == 0 then
                    -- Nexus:Log('I : ',i_loop)
                    Log_Log()
                    i_loop = 0
                end
            end
            spawn(function()
                Nexus:CreateButton('SendLOG', 'Log Sheet ตึงๆ', { 100, 20 }, { 10, 10, 10, 10 })
                Nexus:OnButtonClick('SendLOG', function() 
                    if check_log == 0 then
                        Log_Log()
                        local Response = syn.request({
                        Url = _G.Url,
                        Method = "POST",
                        Headers = {
                                ["Content-Type"] = "application/json" 
                        },
                        Body = game:service'HttpService':JSONEncode(Detail)
                        })
                        print('SendButton was pressed!')
                        print(Response.Body)
                        MyAccount:SetAlias("true")
                        check_log = 1
                    else
                        MyAccount:SetAlias("true")
                        print("Log Pai Leaw")
                    end
                end)
            end)
            spawn(function()
                Nexus:CreateButton('SendHOP', 'Hop ตึงๆ', { 100, 20 }, { 10, 10, 10, 10 })
                Nexus:OnButtonClick('SendHOP', function() 
                    pcall(function()
                        for count = math.random(1, math.random(40, 75)), 100 do
                        remote = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(count)
                            for _i ,v in pairs(remote) do
                                if tonumber(v['Count']) < 12 then
                                    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, _i)
                                end
                            end    
                        end
                    end)
                end)
            end)
        end
    end
end)

