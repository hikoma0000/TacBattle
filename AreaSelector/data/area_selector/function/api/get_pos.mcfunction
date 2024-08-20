data modify storage pte_link: output set value ""

function area_selector:core/conv/player_uuid_convert
data modify storage pte_link: input.player_uuid set from storage area_selector:_ var.conved_player_uuid
data modify storage pte_link: input.id set value "area_selector"

function entity_link:api/pte_link/get_uuid

function area_selector:core/get_pos/macro with storage pte_link: output


data remove storage area_selector:_ var