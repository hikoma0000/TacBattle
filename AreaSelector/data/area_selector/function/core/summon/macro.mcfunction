$summon item_display $(summon_pos) $(summon_nbt)
execute as @e[type=item_display,distance=..0.0001,limit=1] run function area_selector:core/summon/tag with storage area_selector:_ var

data modify storage pte_link: input.player_uuid set from storage area_selector:_ var.conved_player_uuid

$data modify storage pte_link: input.id set value "area_selector.$(phase_id)"

function entity_link:api/pte_link/link