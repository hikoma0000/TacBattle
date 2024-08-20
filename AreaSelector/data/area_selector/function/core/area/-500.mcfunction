execute store result score $calc_500 area_selector run data get entity @s transformation.translation[1] 1000

scoreboard players remove $calc_500 area_selector 500000

execute store result entity @s transformation.translation[1] float 0.001 run scoreboard players get $calc_500 area_selector