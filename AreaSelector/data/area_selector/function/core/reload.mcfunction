execute unless data storage area_selector:_ {__init__:1b} run function area_selector:api/reinstall

scoreboard objectives add area_selector dummy
scoreboard objectives add area_selector.const dummy

scoreboard players set #-1 area_selector.const -1
scoreboard players set #2 area_selector.const 2
scoreboard players set #-2 area_selector.const -2
