function tacbattle:core/area_selector/nbt_data/start_position
data modify storage tacb:var battle_area.phase set value 1
function tacbattle:core/battle_area/area_marker/name_set

tag @s add battle_area_select_start
tag @s remove battle_area_select_end