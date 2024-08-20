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

#minecraft:item_display ~ ~ ~ {item:{id:"minecraft:red_stained_glass",components:{custom_model_data:1}},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.03f,1.03f,1.03f],translation:[0.5f,-500f,0.5f]},Tags:["select_block"],brightness:{sky:15,block:15}}