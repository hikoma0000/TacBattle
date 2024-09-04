scoreboard players operation $calc area_selector /= #-2 area_selector.const
scoreboard players add $calc area_selector 10
execute store result entity @s[tag=area_selector.selecting_area.z.child] transformation.translation[2] float 0.1 run scoreboard players get $calc area_selector


execute as @s[tag=area_selector.selecting_area.-z] run function area_selector:core/area/z/m/mz

execute as @s[tag=area_selector.selecting_area.+z] run function area_selector:core/area/z/m/pz
