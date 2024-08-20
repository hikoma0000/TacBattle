data modify storage entity_link:_ temp.regist_uuid set from storage entity_link:_ temp.regist_uuid_list

function entity_link:core/check/uuid_check with storage entity_link:_ temp

data remove storage entity_link:_ temp.regist_uuid[0]