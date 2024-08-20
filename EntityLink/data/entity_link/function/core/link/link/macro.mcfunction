# $execute unless data storage entity_link:_ id."$(id)" run data modify storage entity_link:_ id."$(id)" set value []
# $execute unless data storage entity_link:_ UUID."$(UUID)" run data modify storage entity_link:_ UUID."$(UUID)" set value []

$execute unless data storage entity_link:_ {UUID:{"$(UUID)":["$(id)"]}} run data modify storage entity_link:_ UUID."$(UUID)" append value "$(id)"
$execute unless data storage entity_link:_ {id:{"$(id)":[$(UUID)]}} run data modify storage entity_link:_ id."$(id)" append value $(UUID)

# function entity_link:core/link/illegal_word_check with storage entity_link:_
$tag @s add entity_link.id.$(id)

$execute unless data storage entity_link:_ {regist_UUID:[$(UUID)]} run data modify storage entity_link:_ regist_UUID append value $(UUID)
# $execute if data storage entity_link: {input:{auto_tag:1b}} run tag @s add entity_link.UUID.$(UUID)