function area_selector:core/area/x/
function area_selector:core/area/y/
function area_selector:core/area/z/

# execute unless entity @s[tag=area_selector.selecting_area.y] run function area_selector:core/area/-500
function area_selector:core/area/-500

data merge entity @s {interpolation_duration:1,start_interpolation:0}