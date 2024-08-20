function gu:entity_convert
data modify storage entity_link: input.UUID set from storage gu:main out
function entity_link:core/unlink/macro with storage entity_link: input
data remove storage entity_link: input.UUID