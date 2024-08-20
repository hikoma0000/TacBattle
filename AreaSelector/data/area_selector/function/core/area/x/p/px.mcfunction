scoreboard players operation $calc area_selector = $x area_selector
scoreboard players remove $calc area_selector 10

execute store result storage area_selector:_ temp.calc.int int 0.1 run scoreboard players get $calc area_selector
data modify storage area_selector:_ temp.calc.deci set value 975
function area_selector:core/area/macro/decimal with storage area_selector:_ temp.calc

data modify entity @s transformation.translation[0] set from storage area_selector:_ temp.union_decimal
