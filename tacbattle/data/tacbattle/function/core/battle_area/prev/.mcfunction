playsound minecraft:block.stone_button.click_on player @s ~ ~ ~ 1 1.5

function helperbar:api/prev_phase

execute if entity @s[tag=battle_area_select_end] run function tacbattle:core/battle_area/prev/end
execute if entity @s[tag=battle_area_select_pend] run function tacbattle:core/battle_area/prev/pend

title @s actionbar {"translate":"tacbattle.ui.canceling","fallback":"Canceling...","color":"white"}

function area_selector:api/previous