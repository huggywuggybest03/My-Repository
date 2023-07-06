local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/huggywuggylogi03/My-Repository/main/main"))()

local GUI = Mercury:Create{
    Name = "Test",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}

GUI:Notification{
	Title = "GUI",
	Text = "Loaded GUI! Thanks for using this hub!",
	Duration = 3,
	Callback = function() end
}

GUI:Credit{
	Name = "user",
	Description = "desc",
	Discord = "user here"
}

local HomeTab = GUI:Tab{
	Name = "🏠 | Home",
	Icon = "rbxassetid://8569322835"
}

HomeTab:Button{
	Name = "Button",
	Description = nil,
	Callback = function() 
        --code
    end
}

HomeTab:Toggle{
	Name = "Toggle",
	StartingState = false,
	Description = nil,
	Callback = function(state) 
        if state then
            --code
        elseif not state then
            --code
        end
    end
}

HomeTab:Textbox{
	Name = "Textbox",
	Callback = function(text) 
        print(text)
    end
}
