execute if entity @s[tag=battle_area_select_end] run function tacbattle:core/battle_area/prev/end
execute if entity @s[tag=battle_area_select_pend] run function tacbattle:core/battle_area/prev/pend

title @s actionbar {"translate":"tacbattle.ui.canceling","fallback":"Canceling...","color":"white"}

function area_selector:api/previous