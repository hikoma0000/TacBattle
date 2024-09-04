#> area_selector:api/kill
#
# @api


function area_selector:core/conv/player_uuid_convert
data modify storage pte_link: input.player_uuid set from storage area_selector:_ var
data modify storage pte_link: input.id set value "area_selector"

function entity_link:api/pte_link/unlink

function area_selector:core/kill/macro with storage area_selector:_ var


data remove storage area_selector:_ var