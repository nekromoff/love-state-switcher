--[[ This example is a part of the State switcher class: stateswitcher.lua (MIT License)
Author: Daniel Duris, 2014+, dusoft[at]staznosti.sk ]]--

state=require("stateswitcher")

step=tonumber(passvar[1])
state.clear()

function love.draw()
   love.graphics.setBackgroundColor(0,0,0)
   love.graphics.setColor(255,30,30)
   if (step~=2) then
      love.graphics.printf("First state (e.g. main.lua)",50,50,love.window.getWidth()-100)
   else
      love.graphics.printf("First state (e.g. main.lua) reloaded!",50,50,love.window.getWidth()-100)
   end
   love.graphics.setColor(255,255,255)
   love.graphics.printf("Press any key to switch to new state.",100,80,love.window.getWidth()-200)
   if (step==2) then
      love.graphics.printf("Info: And we can easily pass values to the state switcher, so we can retrieve them after it switches.",100,150,love.window.getWidth()-200)
      love.graphics.setColor(255,255,255)
      love.graphics.rectangle("fill",50,200,love.window.getWidth()-100,230)
      love.graphics.setColor(0,0,0)
      love.graphics.printf("Code example:\nstate=require(\"stateswitcher\")\nstate.switch(\"credits\") -- switching to credits.lua",100,220,love.window.getWidth()-200)
      love.graphics.printf("Code example with passing a value:\nstate=require(\"stateswitcher\")\nstate.switch(\"credits;2;hello\") -- passing 2 as the first value, \"hello\" as the second value",100,280,love.window.getWidth()-200)
      love.graphics.printf("Code example to retrieve the values passed after switch:\nstate=require(\"stateswitcher\")\nstep=passvar[1] -- gets the first value (2)\ngreeting=passvar[2] -- \"hello\"\nstate.clear() -- clearing the values passed, so no zombie values hang around",100,340,love.window.getWidth()-200)
      love.graphics.setColor(0,0,50)
      love.graphics.rectangle("fill",50,450,love.window.getWidth()-100,120)
      love.graphics.setColor(255,255,255)
      love.graphics.printf("Other advantages:\n- edit your code & save to see changes immediately after state switch (without leaving your program)\n- reuse the functions from the previous states (to keep same behaviour) or redeclare the functions (to change behaviour)",100,470,love.window.getWidth()-200)
   end
end

function love.keyreleased(key)
   state.switch("mainmenu")
end

function love.update(dt)
   if love.keyboard.isDown("escape") then
      love.event.push("quit")
   end
end