#> entitylink:api/link
#
#@api
#storage:
#   entity_link:
#       input: {
#           id: int
#       }


# execute if data storage entity_link: {input:{auto_UUID:1b}} run 
function gu:entity_convert
data modify storage entity_link: input.UUID set from storage gu:main out
function entity_link:core/link/macro with storage entity_link: input
data remove storage entity_link: input.UUID
