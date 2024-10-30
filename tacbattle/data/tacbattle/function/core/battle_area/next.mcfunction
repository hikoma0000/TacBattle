playsound minecraft:block.stone_button.click_on player @s ~ ~ ~ 1 2
# playsound minecraft:block.glass.place player @s ~ ~ ~ 1 1
function helperbar:api/next_phase

execute if entity @s[tag=battle_area_select_pend] run function tacbattle:core/battle_area/decision
execute if entity @s[tag=battle_area_select_end] run function tacbattle:core/battle_area/pend
execute if entity @s[tag=battle_area_select_start] run function tacbattle:core/battle_area/end
