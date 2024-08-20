execute if entity @s[predicate=tacbattle:battle_area_marker] run function tacbattle:core/battle_area/area_marker/tick
execute unless entity @s[predicate=tacbattle:battle_area_marker] run function tacbattle:core/battle_area/area_marker/kill


execute unless score @s tacb.mrb matches 1 if score @s tacb.mrb_lock matches 1 run scoreboard players set @s tacb.mrb_lock 0
execute if score @s tacb.mrb matches 1 unless score @s tacb.mrb_lock matches 1 run function tacbattle:core/right_click_process

scoreboard players set @s tacb.mrb 0
scoreboard players set @s tacb.snk 0