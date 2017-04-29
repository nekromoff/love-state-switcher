--[[ This example is a part of the State switcher class: stateswitcher.lua (MIT License)
Author: Daniel Duris, 2014+, dusoft[at]staznosti.sk ]]--

state=require("stateswitcher")

function love.draw()
   love.graphics.setBackgroundColor(0,0,50)
   love.graphics.setColor(255,30,30)
   love.graphics.printf("Credits (e.g. credits.lua)",50,50,love.window.getWidth()-100)
   love.graphics.setColor(255,255,255)
   love.graphics.printf("Press any key to switch back to the first state.",100,80,love.window.getWidth()-200)
   love.graphics.printf("Info: You can cycle through the states (reload them) as many times as you wish. We will now pass value to the next state, so it will display code examples.",100,150,love.window.getWidth()-200)
end

function love.keyreleased(key)
   state.switch("main;2")
end