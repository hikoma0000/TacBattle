
$data modify storage entity_link:_ __temp__.uuid set value $(UUID)
$data modify storage entity_link:_ __temp__.linked_id set from storage entity_link:_ UUID."$(UUID)"

function entity_link:core/unlink/search/loop

$data remove storage entity_link:_ UUID."$(UUID)"

$tag @s remove entity_link.id.$(id)

data remove storage entity_link:_ __temp__