scoreboard players operation $calc area_selector /= #/-2 area_selector.const
scoreboard players add $calc area_selector 10
execute store result entity @s[tag=area_selector.selecting_area.x.child] transformation.translation[0] float 0.1 run scoreboard players get $calc area_selector



execute if score $x area_selector matches 10 as @s[tag=area_selector.selecting_area.-x] run function area_selector:core/area/x/m/mxinit
execute unless score $x area_selector matches 10 as @s[tag=area_selector.selecting_area.-x] run function area_selector:core/area/x/m/mx


execute as @s[tag=area_selector.selecting_area.+x] run function area_selector:core/area/x/m/px