data modify storage pte_link: input.player_uuid set from storage area_selector:_ var.conved_player_uuid
$data modify storage pte_link: input.id set value "area_selector.$(phase_id)"
function entity_link:api/pte_link/get_uuid

data modify storage area_selector:_ var.tp_uuid set from storage pte_link: output

$execute as $(conved_player_uuid) at @s if entity @s[tag=!area_selector.selecting_area.pause] anchored eyes positioned ^ ^ ^ run function area_selector:core/select/tp_loop with storage area_selector:_ var