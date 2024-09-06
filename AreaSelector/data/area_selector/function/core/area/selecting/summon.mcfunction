$summon item_display ~ ~ ~ $(summon_nbt)
execute as @e[type=item_display,distance=..0.0001,limit=1,tag=area_selector.selecting_area.root] run function area_selector:core/area/selecting/tag with storage area_selector:_ var
# $data modify storage area_selector:_ var.summon_nbt set value $(summon_nbt)
# execute align xyz summon item_display run function area_selector:core/area/tag with storage area_selector:_ var