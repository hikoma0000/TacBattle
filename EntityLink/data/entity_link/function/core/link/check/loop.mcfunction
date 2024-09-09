data modify storage entity_link:_ temp.register_uuid set from storage entity_link:_ temp.register_uuid_list

function entity_link:core/check/uuid_check with storage entity_link:_ temp

data remove storage entity_link:_ temp.register_uuid[0]