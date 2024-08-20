$data modify storage 2entity_link:_ temp.uuid set from storage 2entity_link:_ link."$(UUID1)"
function entity_link:core/2link/unlink/linked_entity with storage 2entity_link:_ temp

$data remove storage 2entity_link:_ link."$(UUID1)"