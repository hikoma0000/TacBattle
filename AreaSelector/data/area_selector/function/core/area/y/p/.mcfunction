scoreboard players operation $calc area_selector /= #2 area_selector.const
# scoreboard players operation $calc area_selector -= #5000 area_selector.const
execute store result entity @s[tag=area_selector.selecting_area.y.child] transformation.translation[1] float 0.1 run scoreboard players get $calc area_selector

execute as @s[tag=area_selector.selecting_area.+y] run function area_selector:core/area/y/p/py

execute as @s[tag=area_selector.selecting_area.-y] run function area_selector:core/area/y/p/my