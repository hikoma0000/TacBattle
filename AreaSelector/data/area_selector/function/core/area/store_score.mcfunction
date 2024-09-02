$data modify storage area_selector:_ temp.store_score.end_pos set from entity $(end_position) Pos
execute store result score $x area_selector run data get storage area_selector:_ temp.store_score.end_pos[0] 10
execute store result score $y area_selector run data get storage area_selector:_ temp.store_score.end_pos[1] 10
execute store result score $z area_selector run data get storage area_selector:_ temp.store_score.end_pos[2] 10

$data modify storage area_selector:_ temp.store_score.start_pos set from entity $(start_position) Pos
execute store result score $start_x area_selector run data get storage area_selector:_ temp.store_score.start_pos[0] 10
execute store result score $start_y area_selector run data get storage area_selector:_ temp.store_score.start_pos[1] 10
execute store result score $start_z area_selector run data get storage area_selector:_ temp.store_score.start_pos[2] 10


scoreboard players operation $end_x area_selector = $x area_selector
scoreboard players operation $end_y area_selector = $y area_selector
scoreboard players operation $end_z area_selector = $z area_selector

scoreboard players operation $x area_selector -= $start_x area_selector
scoreboard players operation $y area_selector -= $start_y area_selector
scoreboard players operation $z area_selector -= $start_z area_selector

execute if score $x area_selector matches ..-1 run scoreboard players operation $x area_selector *= #-1 area_selector.const
execute if score $y area_selector matches ..-1 run scoreboard players operation $y area_selector *= #-1 area_selector.const
execute if score $z area_selector matches ..-1 run scoreboard players operation $z area_selector *= #-1 area_selector.const


scoreboard players add $x area_selector 10
scoreboard players add $y area_selector 10
scoreboard players add $z area_selector 10

# $execute as $(selecting_area_root) at $(start_position) run tp @s ~ ~ ~

$execute as $(selecting_area_root) on passengers on passengers run function area_selector:core/area/modify
