scoreboard players operation $calc area_selector /= #2 area_selector.const
execute store result entity @s[tag=area_selector.selecting_area.x.child] transformation.translation[0] float 0.1 run scoreboard players get $calc area_selector

execute as @s[tag=area_selector.selecting_area.+x] run function area_selector:core/area/x/p/px

execute as @s[tag=area_selector.selecting_area.-x] run function area_selector:core/area/x/p/mx