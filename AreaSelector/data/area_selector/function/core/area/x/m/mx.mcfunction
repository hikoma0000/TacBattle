scoreboard players operation $calc area_selector = $x area_selector

execute if score $calc area_selector matches 20 run function area_selector:core/area/x/m/2
execute if score $calc area_selector matches 30.. run function area_selector:core/area/x/m/3..

data modify entity @s transformation.translation[0] set from storage area_selector:_ temp.union_decimal