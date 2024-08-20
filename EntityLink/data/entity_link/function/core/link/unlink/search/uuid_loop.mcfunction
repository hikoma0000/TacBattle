data modify storage entity_link:_ __temp__.uuid_comp set from storage entity_link:_ __temp__.uuid
execute store success storage entity_link:_ __temp__.linked_uuid_comp_check byte 1 run data modify storage entity_link:_ __temp__.uuid_comp set from storage entity_link:_ __temp__.linked_uuid[0]
execute if data storage entity_link:_ {__temp__:{linked_uuid_comp_check:1b}} run data modify storage entity_link:_ __temp__.linking_uuid append from storage entity_link:_ __temp__.linked_uuid[0]
data remove storage entity_link:_ __temp__.linked_uuid[0]
execute if data storage entity_link:_ __temp__.linked_uuid[] run function entity_link:core/unlink/search/uuid_loop