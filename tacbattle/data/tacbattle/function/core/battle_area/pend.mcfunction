data modify storage area_selector: input.player_uuid set from entity @s UUID

title @s actionbar {"translate":"tacbattle.ui.pending","fallback":"Pending...","color":"white"}

data modify storage tacb:var battle_area.phase set value 3


function area_selector:api/suspend

tag @s remove battle_area_select_end
tag @s add battle_area_select_pend