-----------------------------------------------
-- Caffeine Menubar
-----------------------------------------------
caffeine = hs.menubar.new()
function setCaffeineDisplay(state)
    if state then
        caffeine:setIcon('img/Active@2x.png')
    else
        caffeine:setIcon('img/Inactive@2x.png')
    end
end

function caffeineClicked()
    setCaffeineDisplay(hs.caffeinate.toggle("displayIdle"))
end

if caffeine then
    caffeine:setClickCallback(caffeineClicked)
    setCaffeineDisplay(hs.caffeinate.get("displayIdle"))
end

-- Enable hammerspoon://caffeinate to toggle caffenie.
hs.urlevent.bind("caffeinate", function(eventName, params)
    setCaffeineDisplay(hs.caffeinate.toggle("displayIdle"))
end)