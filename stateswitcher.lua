--[[
State switcher class: stateswitcher.lua
Author: Daniel Duris, 2014+
dusoft[at]staznosti.sk
http://www.ambience.sk

License: MIT
]]--

passvar={}
state={}

function state.switch(state)
   passvar={}
   local matches={}
   for match in string.gmatch(state,"[^;]+") do
      matches[#matches+1]=match
   end
   state=matches[1]
   matches[1]=nil
   if (matches[2]~=nil) then
      for i,match in pairs(matches) do
         passvar[#passvar+1]=match
      end
   end
   -- remove info from metatable about state loaded to allow for new require of the state
   package.loaded[state]=false
   require(state)
end

function state.clear()
   passvar=nil
end

return state