#> area_selector:api/summon
#
# @api


execute if data storage area_selector: {input:{phase_id:"start_position"}} run data modify storage area_selector:_ var set from storage area_selector: input.start_position
execute if data storage area_selector: {input:{phase_id:"end_position"}} run data modify storage area_selector:_ var set from storage area_selector: input.end_position
function area_selector:core/conv/player_uuid_convert
data modify storage area_selector:_ var.phase_id set from storage area_selector: input.phase_id

function area_selector:core/summon/macro with storage area_selector:_ var


data remove storage area_selector:_ var
data remove storage area_selector:_ temp