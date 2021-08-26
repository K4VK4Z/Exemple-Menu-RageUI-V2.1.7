

MaFunction = function (--[[Mes Paramètres]])

    local main = RageUI.CreateMenu("Exemple Menu", "welcome");    
    local sub = RageUI.CreateSubMenu(main, "Exemple Sub Menu", "welcome 2")

    RageUI.Visible(main, not RageUI.Visible(main)) 
    
    while main do
        Citizen.Wait(0)

        RageUI.IsVisible(main, function()

            RageUI.Button('Button', description, {}, true, {}, sub);

        end)


        RageUI.IsVisible(sub, function()

            RageUI.Separator("SubMenu")

        end)


        --> Ajouter chaque menu & submenu
        if not RageUI.Visible(main) and not RageUI.Visible(sub) then 
            main = RMenu:DeleteType('main', true)   
            sub = RMenu:DeleteType('sub', true)
        end

    --
    end --end While
end --end Menu