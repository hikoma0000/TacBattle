# ワールド外を検知(1bならワールド内　0bならワールド外)
execute store success storage area_selector:_ temp.out_of_world byte 1 run execute if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all


$execute if entity @s[distance=..$(distance_limit)] align xyz run tp $(tp_uuid) ~ ~500 ~
$execute positioned ^ ^ ^0.1 unless block ~ ~ ~ #area_selector:through align xyz run tp $(tp_uuid) ~ ~500 ~


$execute if data storage area_selector:_ {temp:{out_of_world:0b}} positioned ^ ^ ^0.1 if entity @s[distance=..$(distance_limit)] as @s run function area_selector:core/select/tp_loop with storage area_selector:_ var
$execute if data storage area_selector:_ {temp:{out_of_world:1b}} positioned ^ ^ ^0.1 if entity @s[distance=..$(distance_limit)] if block ~ ~ ~ #area_selector:through as @s run function area_selector:core/select/tp_loop with storage area_selector:_ var