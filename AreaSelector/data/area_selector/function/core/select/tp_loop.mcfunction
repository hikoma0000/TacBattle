$execute if entity @s[distance=..$(distance_limit)] align xyz run tp $(tp_uuid) ~ ~500 ~
$execute positioned ^ ^ ^0.1 unless block ~ ~ ~ #area_selector:through align xyz run tp $(tp_uuid) ~ ~500 ~

$execute positioned ^ ^ ^0.1 if entity @s[distance=..$(distance_limit)] if block ~ ~ ~ #area_selector:through as @s run function area_selector:core/select/tp_loop with storage area_selector:_ var