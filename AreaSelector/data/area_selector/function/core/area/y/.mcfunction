scoreboard players operation $calc area_selector = $y area_selector

execute store result storage area_selector:_ temp.calc.int int 0.1 run scoreboard players get $calc area_selector
data modify storage area_selector:_ temp.calc.deci set value 05
function area_selector:core/area/macro/decimal with storage area_selector:_ temp.calc

data modify entity @s[tag=area_selector.selecting_area.y.child] transformation.scale[0] set from storage area_selector:_ temp.union_decimal


scoreboard players operation $calc area_selector = $y area_selector
execute if score $end_y area_selector >= $start_y area_selector run function area_selector:core/area/y/p/
execute unless score $end_y area_selector >= $start_y area_selector run function area_selector:core/area/y/m/