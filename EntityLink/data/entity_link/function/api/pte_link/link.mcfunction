function entity_link:core/pte_link/type/convert/player_int_array_convert
function entity_link:core/pte_link/type/convert/entity_int_array_convert

execute unless data storage pte_link: input.id run data modify storage pte_link: input.id set value "NULL"
execute if data storage pte_link: {input:{id:"*"}} run data modify storage pte_link: input.id set value "NULL"

function entity_link:core/pte_link/link/macro with storage pte_link: input

data remove storage pte_link:_ temp