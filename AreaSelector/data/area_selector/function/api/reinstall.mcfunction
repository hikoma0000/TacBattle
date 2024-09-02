#> area_selector:api/summon
#
# @api


data modify storage area_selector: input set value {}
data modify storage area_selector: output set value {}

data remove storage area_selector: input.start_position
data remove storage area_selector: input.end_position
data remove storage area_selector: input.selecting_area_root


data remove storage area_selector:_ var
data remove storage area_selector:_ temp

scoreboard objectives remove area_selector
scoreboard objectives add area_selector dummy

scoreboard objectives remove area_selector.const
scoreboard objectives add area_selector.const dummy

scoreboard players set #-1 area_selector.const -1
scoreboard players set #/2 area_selector.const 2
scoreboard players set #/-2 area_selector.const -2
scoreboard players set #5000 area_selector.const 5000