#> tacbattle:core/reload
#
# 


execute unless data storage tacb: {__init__:1b} run function tacbattle:api/reinstall

scoreboard objectives add tacb.sys dummy
scoreboard objectives add tacb.const dummy
scoreboard objectives add tacb.snk minecraft.custom:sneak_time
scoreboard objectives add tacb.mrb dummy
scoreboard objectives add tacb.mrb_lock dummy


say reload