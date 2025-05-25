function set_background_color()
    if mp.get_property("fullscreen") == "yes" then
        mp.set_property("background-color", "#000000")  -- Black when fullscreen
    else
        mp.set_property("background-color", "#282828")  -- Replace with your desired color
    end
end

mp.observe_property("fullscreen", "string", set_background_color)
