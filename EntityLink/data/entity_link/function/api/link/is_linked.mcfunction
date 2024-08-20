


data modify storage entity_link: input.UUID set from entity @s UUID
return run function entity_link:core/is_linked/macro with storage entity_link: input
data remove storage entity_link: input.UUID