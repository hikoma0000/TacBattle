$execute anchored eyes positioned ^ ^ ^9 align xyz run summon item_display ~ ~ ~ $(summon_nbt)
execute anchored eyes positioned ^ ^ ^9 align xyz as @e[type=item_display,distance=..0.0001,limit=1,tag=area_selector.selecting_area.root] run function area_selector:core/area/tag with storage area_selector:_ var

data modify storage pte_link: input.id set value "area_selector.selecting_area_root"

data modify storage pte_link: input.player_uuid set from storage area_selector:_ var.conved_player_uuid

function entity_link:api/pte_link/link