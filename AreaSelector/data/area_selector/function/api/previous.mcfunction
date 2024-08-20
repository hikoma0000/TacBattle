#> area_selector:api/previous
#
# @api


function area_selector:core/conv/player_uuid_convert

execute store result storage area_selector:_ temp.prev_pend_check byte 1 run function area_selector:core/prev/pend/check with storage area_selector:_ var

execute if data storage area_selector:_ {temp:{prev_pend_check:1b}} run function area_selector:core/prev/pend/ with storage area_selector:_ var
execute unless data storage area_selector:_ {temp:{prev_pend_check:1b}} run function area_selector:core/prev/end/check

data remove storage area_selector:_ var