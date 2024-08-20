function entity_link:core/pte_link/type/convert/player_int_array_convert

execute unless data storage pte_link: input.id run data modify storage pte_link: input.id set value "NULL"
function entity_link:core/pte_link/unlink/macro with storage pte_link: input

data remove storage pte_link:_ temp