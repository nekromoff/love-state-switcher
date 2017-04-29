--[[ This example is a part of the State switcher class: stateswitcher.lua (MIT License)
Author: Daniel Duris, 2014+, dusoft[at]staznosti.sk ]]--

state=require("stateswitcher")

function love.draw()
   love.graphics.setBackgroundColor(200,200,200)
   love.graphics.setColor(255,30,30)
   love.graphics.printf("Main menu (e.g. mainmenu.lua)",50,50,love.window.getWidth()-100)
   love.graphics.setColor(0,0,0)
   love.graphics.printf("Press any key to switch to new state.",100,80,love.window.getWidth()-200)
   love.graphics.printf("Info: This state switcher class is based on files (one state = one file).",100,150,love.window.getWidth()-200)
end

function love.keyreleased(key)
   state.switch("credits")
end