data modify storage entity_link:_ __temp__.id set from storage entity_link:_ __temp__.linked_id[0]

function entity_link:core/unlink/search/linked_uuid with storage entity_link:_ __temp__

function entity_link:core/unlink/search/uuid_loop

function entity_link:core/unlink/search/linking_uuid with storage entity_link:_ __temp__

data remove storage entity_link:_ __temp__.linked_id[0]



execute if data storage entity_link:_ __temp__.linked_id[] run function entity_link:core/unlink/search/loop