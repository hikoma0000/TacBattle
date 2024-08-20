scoreboard players operation $calc area_selector = $z area_selector

execute if score $calc area_selector matches 20 run function area_selector:core/area/z/m/2
execute if score $calc area_selector matches 30.. run function area_selector:core/area/z/m/3..

data modify entity @s transformation.translation[2] set from storage area_selector:_ temp.union_decimal