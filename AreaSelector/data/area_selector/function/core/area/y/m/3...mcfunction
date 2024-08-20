scoreboard players operation $calc area_selector *= #-1 area_selector.const

scoreboard players add $calc area_selector 20

execute store result storage area_selector:_ temp.calc.int int 0.1 run scoreboard players get $calc area_selector
data modify storage area_selector:_ temp.calc.deci set value 975
function area_selector:core/area/macro/decimal with storage area_selector:_ temp.calc
