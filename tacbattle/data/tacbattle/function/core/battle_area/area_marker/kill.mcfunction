data modify storage area_selector: input.player_uuid set from entity @s UUID

function tacbattle:core/battle_area/area_marker/name_reset/

tag @s remove battle_area_select_start
tag @s remove battle_area_select_end
tag @s remove battle_area_selecting
tag @s remove battle_area_select_pend


function area_selector:api/resume
function area_selector:api/kill