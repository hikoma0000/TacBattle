#> entitylink:api/get_uuid
#
#@api


execute if data storage entity_link: input.id run function entity_link:core/uuid/get_uuid with storage entity_link: input
