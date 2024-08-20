data modify storage area_selector: input.player_uuid set from entity @s UUID

execute if entity @s[tag=battle_area_select_end] run data modify storage area_selector: input.phase_id set value "end_position"
execute if entity @s[tag=battle_area_select_start] run data modify storage area_selector: input.phase_id set value "start_position"


execute if entity @s[tag=!battle_area_selecting] run function tacbattle:core/battle_area/area_marker/summon

function area_selector:api/select