data modify storage area_selector: input.player_uuid set from entity @s UUID
function tacbattle:core/area_selector/nbt_data/end_position
function area_selector:api/summon

data modify storage tacb:var battle_area.phase set value 2
function tacbattle:core/battle_area/area_marker/name_set


data modify storage area_selector: input.selecting_area.player_uuid set from entity @s UUID
function tacbattle:core/area_selector/nbt_data/selecting_area
function area_selector:api/area


tag @s remove battle_area_select_start
tag @s add battle_area_select_end