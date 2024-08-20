#> entitylink:api/get_id
#
#@api

function gu:entity_convert
data modify storage entity_link: input.UUID set from storage gu:main out
function entity_link:core/id/get_id with storage entity_link: input
data remove storage entity_link: input.UUID