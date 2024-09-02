$tag @s add area_selector.$(conved_player_uuid)
$execute on passengers run tag @s add area_selector.$(conved_player_uuid)
$execute on passengers on passengers run tag @s add area_selector.$(conved_player_uuid)

data modify storage pte_link: input.entity_uuid set from entity @s UUID
data modify storage pte_link: input.id set value "area_selector.selecting_area_root"
data modify storage pte_link: input.player_uuid set from storage area_selector:_ var.conved_player_uuid
function entity_link:api/pte_link/link

data modify storage pte_link: input.id set value "area_selector.start_position"
function entity_link:api/pte_link/get_uuid
data modify storage area_selector:_ var.ride_start_position_uuid set from storage pte_link: output

function area_selector:core/area/selecting/ride with storage area_selector:_ var