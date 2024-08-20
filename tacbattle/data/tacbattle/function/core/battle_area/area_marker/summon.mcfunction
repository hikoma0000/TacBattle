function tacbattle:core/area_selector/nbt_data/start_position
function area_selector:api/summon

data modify storage tacb:var battle_area.phase set value 1
function tacbattle:core/battle_area/area_marker/name_set

tag @s add battle_area_selecting
tag @s add battle_area_select_start