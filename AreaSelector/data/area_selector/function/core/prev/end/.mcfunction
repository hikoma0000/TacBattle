function area_selector:api/kill

data modify storage area_selector:_ var set from storage area_selector: input.start_position
function area_selector:core/conv/player_uuid_convert
data modify storage area_selector:_ var.phase_id set value "start_position"

function area_selector:core/summon/macro with storage area_selector:_ var