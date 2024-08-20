data modify storage area_selector: input.player_uuid set from entity @s UUID

execute if predicate tacbattle:battle_area_marker run function tacbattle:core/battle_area/main

scoreboard players set @s tacb.mrb_lock 1