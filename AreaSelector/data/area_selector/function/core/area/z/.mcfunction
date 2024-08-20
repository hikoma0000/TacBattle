scoreboard players operation $calc area_selector = $z area_selector

execute store result storage area_selector:_ temp.calc.int int 0.1 run scoreboard players get $calc area_selector
data modify storage area_selector:_ temp.calc.deci set value 05
function area_selector:core/area/macro/decimal with storage area_selector:_ temp.calc

data modify entity @s[tag=area_selector.selecting_area.z.child] transformation.scale[0] set from storage area_selector:_ temp.union_decimal


execute if score $end_z area_selector >= $start_z area_selector run function area_selector:core/area/z/p/
execute unless score $end_z area_selector >= $start_z area_selector run function area_selector:core/area/z/m/