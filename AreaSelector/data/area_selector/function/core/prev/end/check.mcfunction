data modify storage pte_link: input.player_uuid set from storage area_selector:_ var.conved_player_uuid
data modify storage pte_link: input.id set value "area_selector.end_position"

execute if function entity_link:api/pte_link/is_linking run function area_selector:core/prev/end/