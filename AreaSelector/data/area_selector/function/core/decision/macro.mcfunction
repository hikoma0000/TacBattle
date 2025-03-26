#> area_selector:core/decision/macro
#
# @within area_selector:api/decision

$execute as $(conved_player_uuid) if entity @s[tag=area_selector.selecting_area.suspend] run data modify storage area_selector:_ data.$(conved_player_uuid) set from storage pte_link:_ data.$(conved_player_uuid).area_selector
$data modify storage area_selector:_ var merge from storage pte_link:_ data.$(conved_player_uuid).area_selector

function area_selector:core/decision/tag with storage area_selector:_ var

data modify storage pte_link: input.player_uuid set from storage area_selector:_ var.conved_player_uuid
data modify storage pte_link: input.id set value "area_selector"

function entity_link:api/pte_link/unlink